/**
 *  Names: Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *  Date: 6/7/2019
 *
 *  Description:
 *      Main activity for the wireless camera app.
 *      Uses switches, buttons, textviews, and seekbars.
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
 */

package com.project558.wirelessscamera;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;

import java.lang.reflect.Array;
import java.net.URI;
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

    public static final String EXTRA_URI_LIST = "uri_list";
    private static final String TAG = "MainActivity";
    private static final String ADAPTER_IMG_MSG = "image";          // key associated with position value. Packed with bundle when creating fragment
    private static final String ADAPTER_POS_MSG   = "position";     // Key associated with the position of fragment in viewpager.
    private ViewPager mViewPager;                                   // Declaration of ViewPager object.
    private FirebaseDataImage mFirebaseDataImage;                   // Contains key value pairs with data from database.
    private DatabaseReference mDatabaseReference;                   // Object for getting database instance members.

    private Integer mNumStringsProcessed = 0;                       // Has count for number of strings processed from database.
    private String mEncodedStringToConvert;                         // String that holds an encoded image.

    public static ArrayList<Integer> IMGS = new ArrayList<>();      // Holds array of images that PhotoGalleryFragment receives.

    private StorageReference mStorageReference;     // Declaration of object.
    private FirebaseStorage mFirebaseStorage;

    public ArrayList<Integer> mValidIndeces;

    public ArrayList<Uri> mUris;

    public Handler mHandler;

    private String mImageString = "";


    ViewPageFragmentAdapter mAdapterPager;      // Fragment manager class declaration.


    /**
     *  Method overridden in PhotoGalleryFragment.java - this is the interface function for the class.
     *  This method finds the current visible fragment and deletes it; in response to user
     *  pressing delete button below image in PhotoGalleryFragment.
     */
    @Override
    public void onDeleteClick(Integer position){

        mUris.remove(position -1);

        StorageReference mToDelete = mStorageReference.child("img"+ Integer.toString(position)+".png");
        mToDelete.delete().addOnSuccessListener(new OnSuccessListener<Void>() {
            @Override
            public void onSuccess(Void aVoid) {

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
                            // Remove index from image database. Reupdate the app.
                        }
                    }
                }


                mAdapterPager.notifyDataSetChanged();     // Notify adapter that it needs to update the ViewPager. (IMG data change)
            }
        });

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

        ArrayList<String> mUriStrings = new ArrayList<String>();

        Intent mIntent = getIntent();
        mUriStrings = mIntent.getStringArrayListExtra(EXTRA_URI_LIST);

        mUris = new ArrayList<>();

        for(Integer i = 0; i < mUriStrings.size(); ++i) {
            Uri mUriTemp = Uri.parse(mUriStrings.get(i));
            mUris.add(mUriTemp);
        }

        mDatabaseReference = FirebaseDatabase.getInstance().getReference(); // Initialize database reference.


        mViewPager = (ViewPager) findViewById(R.id.pager);
        mViewPager.setPageTransformer(true, new ZoomOutPageTransformer());  // Sets transition animation using function provided from Google dev docs.
        mAdapterPager = new ViewPageFragmentAdapter(getSupportFragmentManager());             // Instantiate an adapter.
        mViewPager.setAdapter(mAdapterPager);   // Set layout with inflated fragments.

        mViewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() {
            @Override
            public void onPageScrolled(int i, float v, int i1) {

            }

            @Override
            public void onPageSelected(int i) {

            }

            @Override
            public void onPageScrollStateChanged(int i) {

            }
        });


        // Listener for updating firebase data.
        mDatabaseReference.addValueEventListener(
                new ValueEventListener() {
                    String mLastStr = "";
                    @Override
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        mFirebaseDataImage = dataSnapshot.getValue(FirebaseDataImage.class);    // Get image string.
                        // Create runnable for converting image.
                        mHandler.post(new Runnable() {
                            @Override
                            public void run() {
                                String mCurrentStr = mFirebaseDataImage.rt_image;   // Get current string and save.

                                if(mCurrentStr != mLastStr) {
                                    mImageString += mCurrentStr;
                                    mNumStringsProcessed += 1;
                                }

                                mLastStr = mCurrentStr;

                                if(mNumStringsProcessed == 50) {

                                }

                            }


                        });

                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError databaseError) {

                    }
                }
        );

        mFirebaseStorage = FirebaseStorage.getInstance();       // Initialize storage references.

        mStorageReference = mFirebaseStorage.getReference();

        mHandler = new Handler();


    }

    class LooperThread extends Thread {
        public Handler mHandler;

        public void run() {
            Looper.prepare();

            mHandler = new Handler() {
                @Override
                public void handleMessage(Message msg) {
                    // process incoming messages.
                }
            };

            Looper.loop();
        }
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
         *  Checks if Fragment is still alive.
         *  Deletes fragment otherwise.
         * @param object to be casted to Fragment.
         * @return "i" is valid fragment position; "POSITION_NONE" indicates fragment is gone.
         */
        @Override
        public int getItemPosition(Object object) {

            // Value indicating fragment is destroyed.
            return PagerAdapter.POSITION_NONE;
        }


        /**
         * Method to instantiate fragments.
         *
         * @param position Position in viewpager for fragment.
         * @return Fragment object with inflated views or null.
         */
        @Override
        public Fragment getItem(int position) {

            if(position == 0)
            {
                mPosition = position;
                return new CameraControlFragment(); // Return camera controls for first fragment.
            }
            else if(position > 0)   // Views after the first position consist of images received.
            {
                FragmentTransaction mTransaction = mFragmentManager.beginTransaction();
                Bundle bundle = new Bundle();
                bundle.putInt(ADAPTER_POS_MSG,position);
                PhotoGalleryFragment mFrag = new PhotoGalleryFragment();
                mFrag.setArguments(bundle);
                mTransaction.commit();
                mPosition=position;
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
            // TODO
            // Fix this count, its messing up how I manipulate the viewpager. Can't refresh properly.
            return mUris.size() + 1;   // Return number of fragments. Adding one because of cameraControlFragment class.
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



