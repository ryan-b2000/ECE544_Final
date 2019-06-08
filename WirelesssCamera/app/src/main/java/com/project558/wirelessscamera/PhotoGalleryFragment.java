/**
 *  Names: Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *  Date: 6/7/2019
 *
 *  This file contains the fragment which inflates a layout
 *  that essentially contains an image. One class instantiated
 *  per image retrieved.
 *  This class also implements the View.onClickListener function
 *  to support options like deleting the image. MainActivity overrides the onClick method.
 *
 */
package com.project558.wirelessscamera;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import java.util.ArrayList;

import mehdi.sakout.fancybuttons.FancyButton;

/**
 *  Fragment class responsible for inflating views.
 *  Has an interface for the main activity to receive
 *  onClick events.
 *
 */
public class PhotoGalleryFragment extends Fragment implements  View.OnClickListener{

    private ArrayList<Integer> IMAGES;     // TODO
    private static final String ADAPTER_IMG_MSG = "image";          // key associated with position value. Packed with bundle when creating fragment
    private static final String ADAPTER_POS_MSG   = "position";     // Key associated with the position of fragment in viewpager.
    private FancyButton mBtnDelete;                                 // Declaration of FancyButton object.
    private int mPosition = 0;                                      // Contains position of fragment with respect to main activity viewpager.

    /**
     *
     *
     * @param inflater  Layout inflate from adapter.
     * @param container Viewgroup object.
     * @param savedInstanceState  Application context
     * @return  inflated view.
     */
    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_gallery, container, false); // Inflate layout.

        ImageView mImageView = (ImageView) rootView.findViewById(R.id.image);   // Get resource IDs.
        mBtnDelete = rootView.findViewById(R.id.button_set_position);

        Bundle bundle = this.getArguments();
        if(bundle != null)
        {
            Integer mDrawable = bundle.getInt(ADAPTER_IMG_MSG);
            mPosition = bundle.getInt(ADAPTER_POS_MSG);
            // IMAGES.add(mDrawable);    this line breaks the app.
            // Set image resource with data received through bundle argument.
            mImageView.setImageResource(mDrawable);
        }

        mBtnDelete.setOnClickListener(this);    // Class implements onClickListener.

        return rootView;
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
