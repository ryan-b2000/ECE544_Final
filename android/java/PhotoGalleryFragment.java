/**
 *  Names: Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *  Date: 6/7/2019
 *
 *  Fragment responsible for displaying bitmaps. One class instantiated
 *  per image retrieved.
 *  This class also implements the View.onClickListener function
 *  to support options like deleting the image. MainActivity overrides the onClick method.
 *
 */
package com.project558.wirelessscamera;

import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import com.bumptech.glide.Glide;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;

import mehdi.sakout.fancybuttons.FancyButton;

/**
 *  Fragment class responsible for inflating views.
 *  Has an interface for the main activity to receive
 *  onClick events.
 *
 */
public class PhotoGalleryFragment extends Fragment implements  View.OnClickListener{

    private static final String ADAPTER_POS_MSG   = "position";     // Key associated with the position of fragment in viewpager.
    private FancyButton mBtnDelete;                                 // Declaration of FancyButton object.
    private Integer mPosition = 0;                                  // Position of fragment with respect to viewpager.
    private StorageReference mStorageReference;                     // Declaration of Firebase objects.
    private FirebaseStorage mFirebaseStorage;

    /**
     *  Method to inflate View and set imageView
     *  with a bitmap. The URI is created using the position
     *  given from MainActivity.
     *
     *
     * @param inflater  Layout inflate from adapter.
     * @param container Viewgroup object.
     * @param savedInstanceState  Application context
     * @return  Inflated view.
     */
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_gallery, container, false); // Inflate layout.

        final ImageView mImageView = (ImageView) rootView.findViewById(R.id.image);   // Get resource IDs.
        mBtnDelete = rootView.findViewById(R.id.button_set_position);

        Bundle bundle = this.getArguments();
        if(bundle != null)
        {
            mPosition = bundle.getInt(ADAPTER_POS_MSG);
        }

            mFirebaseStorage = FirebaseStorage.getInstance();       // Initialize storage references.

            mStorageReference = mFirebaseStorage.getReference();

            mStorageReference.child("img" + Integer.toString(mPosition)+ ".png").getDownloadUrl().addOnSuccessListener(new OnSuccessListener<Uri>() {
                @Override
                public void onSuccess(Uri uri) {

                    // https://github.com/codepath/android_guides/wiki/Displaying-Images-with-the-Glide-Library
                    // Was having issues getting the URI to show, using the Glide library worked.
                    Glide.with(getContext())
                            .load(uri)
                            .override(1024,900)
                            .centerCrop()
                            .fitCenter()
                            .into(mImageView);

                }
            });

        mBtnDelete.setOnClickListener(this);    // Class implements onClickListener.

        return rootView;    // Return inflated View.
    }

    /**
     *  Method to be overridden by MainActivity.
     *
     * @param v View object.
     */
    @Override
    public void onClick(View v) {

        try {
            ((onDeleteAdapterCallback) getActivity()).onDeleteClick(mPosition);   // Pass the position of this class to the destructor.

        } catch(ClassCastException exception) {
        }

    }

    /**
     *  Interface implemented by MainActivity.
     *
     */
    public interface onDeleteAdapterCallback{
        // Has integer paramater for fragment position.
        public void onDeleteClick(Integer position);   // Destructor method to be overridden by main activity.
    }


}
