/**
 *  Names: Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *  Date: 6/7/2019
 *
 *  Description:
 *      Main activity for the wireless camera app.
 *      Uses switches, buttons, textviews, and seekbars.
 *
 *      This activity will decode the base64 encoded string and create a bitmap.
 *      Once the bitmap is uploaded to Firebase, a database listener will increment
 *      the viewpager count and notify the adapter that it needs to update the layout.
 *
 *      This activity implements the interface created in PhotoGalleryFragment. Used to delete viewpagers
 *      positions from the layout.
 *
 *      Below, are the following github repositories and links
 *      used to get the custom UI elements working.
 *
 *      https://medium.com/mindorks/android-custom-views-tutorial-part-2-custom-attributes-3adde12c846d
 *      https://github.com/medyo/Fancybuttons
 *      https://github.com/feeeei/CircleSeekbar
 *      https://github.com/zhou-you/EasySignSeekBar
 *
 *      https://github.com/bumptech/glide
 *
 *      Helpful Links:
 *      - Has useful info on the purpose of getItemPosition in adapter class.
 *          https://stackoverflow.com/questions/10728076/when-should-getitemposition-consider-changes-of-an-items-position
 *      - Fragment communication:
 *          http://simpledeveloper.com/how-to-communicate-between-fragments-and-activities/
 *      - Looper/handler
 *          https://mindtherobot.com/blog/159/
 *
 *
 */

package com.project558.wirelessscamera;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.net.Uri;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;
import com.google.firebase.storage.UploadTask;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.List;

/** class
 *
 *  Description:
 *      MainActivity that manages the associated fragments with this project.
 *      This activity also receives images from firebase and passes them to the fragments
 *      via ScreenSlidePagerAdapter.
 *
 */
public class MainActivity extends AppCompatActivity implements PhotoGalleryFragment.onDeleteAdapterCallback{

    public static final String EXTRA_URI_LIST = "uri_list";                 // key for getting list of URIs from splash screen.
    private static final String TAG = "MainActivity";                       // tag key.
    private static final String ADAPTER_POS_MSG   = "position";             // Key associated with the position of fragment in viewpager.
    private ViewPager mViewPager;                                           // Declaration of ViewPager object.
    private FirebaseDataImage mFirebaseDataImage = new FirebaseDataImage();                   // Contains key value pairs with data from database.
    private DatabaseReference mDatabaseReference;                           // Object for getting database instance members.

    private Integer mNumStringsProcessed = 0;                               // Has count for number of strings processed from database.

    public static ArrayList<Integer> IMGS = new ArrayList<>();              // Holds array of images that PhotoGalleryFragment receives.

    private StorageReference mStorageReference;     // Declaration of object.
    private FirebaseStorage mFirebaseStorage;

    private String mImageString = "";   // Contains encoded image which is eventually converted to bitmap.

    public Integer mNumViewPagers = 0;  // Number of viewpagers available to user.

    ViewPageFragmentAdapter mAdapterPager;      // Fragment manager class declaration.

    public ArrayList<String> mUriStrings = new ArrayList<>();   // Initialize and instantiate an array list of strings.
    public ArrayList<Uri> mUris = new ArrayList<>();            // Creating a list of URIs.


    /**
     *  Method overridden in PhotoGalleryFragment.java - this is the interface function for the class.
     *  This method finds the current visible fragment and deletes it; in response to user
     *  pressing delete button below image in PhotoGalleryFragment.
     */
    @Override
    public void onDeleteClick(Integer position){

        // For deleting a fragment, I was confused on how to get handle of the fragment I need to delete.
        // There is a solid solution in this post:  https://stackoverflow.com/questions/9294603/how-do-i-get-the-currently-displayed-fragment
        List<Fragment> fragments = getSupportFragmentManager().getFragments();  // Getting all current fragment instances.
        if(fragments != null) {
            for (Fragment fragment : fragments) {                 // Iterate through list of fragments.
                if (fragment != null && fragment.isVisible())    // Checking which fragment is currently visible.
                {
                    FragmentTransaction mTransaction = getSupportFragmentManager().beginTransaction();  // Start a transaction for removing the current fragment.
                    mTransaction.remove(fragment);
                    mTransaction.commit();
                }
            }
        }

        mUris.remove(position-1);     // Remove from URI list at specified position.
        mNumViewPagers -= 1;                // Subtract a viewpager.


        mAdapterPager.notifyDataSetChanged();     // Notify adapter that it needs to update the ViewPager. (IMG data change)

    }

    /**
     *  Method for instantiating fragment adapter.
     *
     * @param savedInstanceState Application context
     */
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        Intent mIntent = getIntent();   // Get intent from SplashActivity

        mUriStrings = getIntent().getStringArrayListExtra(EXTRA_URI_LIST);

        mNumViewPagers = mUriStrings.size();             // This is the initial number of images we are displaying.

        for(int i = 0; i < mUriStrings.size(); ++i) {
            mUris.add(Uri.parse(mUriStrings.get(i)));   // Convert string to list of URIs.
        }

        mDatabaseReference = FirebaseDatabase.getInstance().getReference(); // Initialize database reference.

        mViewPager = (ViewPager) findViewById(R.id.pager);  // Get ViewPager resource ID.
        mViewPager.setPageTransformer(true, new ZoomOutPageTransformer());  // Sets transition animation using function provided from Google dev docs.
        mAdapterPager = new ViewPageFragmentAdapter(getSupportFragmentManager());             // Instantiate an adapter.
        mViewPager.setAdapter(mAdapterPager);   // Set layout with inflated fragments.


        // Listener for gathering image string and performing conversion.
        mDatabaseReference.addValueEventListener(
                new ValueEventListener() {
                    String mLastStr = "";
                    @Override
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        mFirebaseDataImage = dataSnapshot.getValue(FirebaseDataImage.class);    // Get image string.
                        String mCurrentStr = mFirebaseDataImage.rt_image;   // Get current string and save.

                        //mCurrentStr = dataSnapshot.child("rt_image").getValue(String.class);
                        Integer tx_rx = dataSnapshot.child("TX-RX").getValue(int.class);  // Holds firebase TX-RX result.


                        if(tx_rx == 1) {
                            mImageString += mCurrentStr;    // Concatenate the String if we are receiving.
                            mNumStringsProcessed += 1;      // Increment number of strings received.
                        }

                        mLastStr = mCurrentStr; // Save String last state.

                        if(tx_rx == 2 && mNumStringsProcessed > 0) {
                            makeImage(mImageString);    // Convert the string gathered to an image.
                        }

                    }


                    @Override
                    public void onCancelled(@NonNull DatabaseError databaseError) {

                    }
                }
        );

        mFirebaseStorage = FirebaseStorage.getInstance();       // Initialize storage references.

        mStorageReference = mFirebaseStorage.getReference();

    }

    /**
     * Converts image
     *
     * @param imageStr Has base64 encoded string.
     */
    void makeImage (String imageStr) {

        Integer height = 120, width = 160, size;        // Fixed size of bitmap.

        // check the length of the string
        if (imageStr != null || imageStr.length() == 0) {
            while (width*height > imageStr.length()){
                width--;
                height--;
            }
        }

        Bitmap mImageBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565);    // Create a bitmap using RGB565 encoding.

        for (Integer row = 0; row < width; ++row)
            for (Integer col = 0; col < height; ++col) {
                mImageBitmap.setPixel(row, col, Color.red(127));    // May be extra code, at this point just leave it here.
                int displayed = Color.red(127);
                int currentPixel = mImageBitmap.getPixel(row, col);
            }

        ByteArrayOutputStream stream = new ByteArrayOutputStream();
        mImageBitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);

        BaseDecoder bd = new BaseDecoder();

        char imageChar [] = imageStr.toCharArray();
        int red, grn, blu;

        int [] pixels = new int[height * width];
        for (Integer i = 0; i < height*width; i+=2) {
            red = bd.DecodeRed(imageChar[i], imageChar[i+1]) * 250;     // Colors for pixels.
            grn = bd.DecodeGreen(imageChar[i], imageChar[i+1]) * 250;
            blu = bd.DecodeBlue(imageChar[i], imageChar[i+1]) * 250;

            pixels[i] = Color.rgb(red, grn, blu);
        }
        mImageBitmap.setPixels(pixels,0,width,0,0,width,height);    // Set pixels with appropriate colors.


        // Bitmap to byte array. https://stackoverflow.com/questions/13758560/android-bitmap-to-byte-array-and-back-skimagedecoderfactory-returned-null?lq=1
        ByteArrayOutputStream bos = new ByteArrayOutputStream();
        mImageBitmap.compress(Bitmap.CompressFormat.PNG, 0, bos);   // Create bitmap in png format.
        byte[] bitmap = bos.toByteArray();
        ByteArrayInputStream bs = new ByteArrayInputStream(bitmap); // add bytes to ByteArrayInputStream and instantiate object.

        // Using the next position, create a new image on Firebase storage for the bitmap.
        UploadTask uploadTask = mStorageReference.child("img" + Integer.toString(mNumViewPagers+1) + ".png").putStream(bs);
        uploadTask.addOnSuccessListener(new OnSuccessListener<UploadTask.TaskSnapshot>() {  // Set listener for upload.
            @Override
            public void onSuccess(UploadTask.TaskSnapshot taskSnapshot) {
                // Add to URI list, and notify the adapter of data change.
                String path = taskSnapshot.getMetadata().getPath(); // This is path on Firebase storage.
                mStorageReference.child(path).getDownloadUrl().addOnSuccessListener(    // Check if a download URI is available.
                        new OnSuccessListener<Uri>() {
                            @Override
                            public void onSuccess(Uri uri) {
                                mUris.add(uri); // Add to list of URIs.
                                mNumViewPagers += 1;    // If uri is allocated, Add a viewpager for the new image.
                                mAdapterPager.notifyDataSetChanged();   // Update the viewpager with the new image.

                            }
                        }
                ).addOnFailureListener(new OnFailureListener() {
                    @Override
                    public void onFailure(@NonNull Exception e) {
                        Log.d(TAG,"Failed Adding image to Firebase.");

                    }
                });

            }
        }).addOnFailureListener(new OnFailureListener() {
            @Override
            public void onFailure(@NonNull Exception e) {

            }
        });

    }

    /**
     * Pager adapter for instantiating and passing data to fragments.
     */
    private class ViewPageFragmentAdapter extends FragmentStatePagerAdapter {
        private FragmentManager mFragmentManager;   // Local fragment manager variable.

        public Integer mPosition = 1;

        /**
         *  Adapter constructor.
         *
         * @param fm Fragment manager object.
         */
        public ViewPageFragmentAdapter(FragmentManager fm) {
            super(fm);
            this.mFragmentManager = fm;     // Saving fragment manager.
        }


        /**
         *  Deletes fragment by returning POSITION_NONE, adapter will adjust positions of Viewpager after this call.
         * @param object to be casted to Fragment.
         * @return "i" is valid fragment position; "POSITION_NONE" indicates fragment is gone.
         */
        @Override
        public int getItemPosition(Object object) {

            // Value indicating fragment is destroyed.
            return PagerAdapter.POSITION_NONE;
        }


        /**
         * Method to instantiate fragments. THis method is called each time
         * the Viewpager needs to be refreshed and for adjustment of positions.
         *
         * @param position Position in viewpager for fragment.
         * @return Fragment object with inflated views or null.
         */
        @Override
        public Fragment getItem(int position) {

            if(position == 0)
            {
                mPosition = position;               // Save current position.
                return new CameraControlFragment(); // Return camera controls for first fragment.
            }
            else if(position > 0)   // Views after the first position consist of images received.
            {
                FragmentTransaction mTransaction = mFragmentManager.beginTransaction();
                Bundle bundle = new Bundle();
                bundle.putInt(ADAPTER_POS_MSG, position);                   // Tell the class what position it is in ViewPager.
                PhotoGalleryFragment mFrag = new PhotoGalleryFragment();    // Instantiate fragment.
                mFrag.setArguments(bundle);
                mTransaction.commit();
                mPosition=position; // Save last position.
                return mFrag;  // Returns fragment with layout containing picture.
            }

            return null;
        }

        /**
         *  Gets number of pages.
         *
         * @return
         */
        @Override
        public int getCount() {
            return mNumViewPagers + 1;   // Return number of fragments. Adding one because of cameraControlFragment class.
        }


    }

    // Got this function from following link: https://developer.android.com/training/animation/screen-slide
    // Creates transition animation for viewpager.
    public class ZoomOutPageTransformer implements ViewPager.PageTransformer {
        private static final float MIN_SCALE = 0.85f;
        private static final float MIN_ALPHA = 0.5f;

        public void transformPage(View view, float position) {
            int pageWidth = view.getWidth();
            int pageHeight = view.getHeight();

            if (position < -1) { // [-Infinity,-1)
                // This page is way off-screen to the left.
                view.setAlpha(0f);

            } else if (position <= 1) { // [-1,1]
                // Modify the default slide transition to shrink the page as well
                float scaleFactor = Math.max(MIN_SCALE, 1 - Math.abs(position));
                float vertMargin = pageHeight * (1 - scaleFactor) / 2;
                float horzMargin = pageWidth * (1 - scaleFactor) / 2;
                if (position < 0) {
                    view.setTranslationX(horzMargin - vertMargin / 2);
                } else {
                    view.setTranslationX(-horzMargin + vertMargin / 2);
                }

                // Scale the page down (between MIN_SCALE and 1)
                view.setScaleX(scaleFactor);
                view.setScaleY(scaleFactor);

                // Fade the page relative to its size.
                view.setAlpha(MIN_ALPHA +
                        (scaleFactor - MIN_SCALE) /
                                (1 - MIN_SCALE) * (1 - MIN_ALPHA));

            } else { // (1,+Infinity]
                // This page is way off-screen to the right.
                view.setAlpha(0f);
            }
        }
    }



}



