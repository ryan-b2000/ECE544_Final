package com.project558.wirelessscamera;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import java.util.ArrayList;

import mehdi.sakout.fancybuttons.FancyButton;

public class PhotoGalleryFragment extends Fragment implements  View.OnClickListener{

    private ArrayList<Integer> IMAGES;
    private static final String ADAPTER_IMG_MSG = "image";        // key associated with position value. Packed with bundle when creating fragment
    private static final String ADAPTER_POS_MSG   = "position";     // Key associated with the position of fragment in viewpager.
    private FancyButton mBtnDelete;     // Declaration of FancyButton object.
    private int mPosition = 0;

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

    @Override
    public void onClick(View v) {

        try {
            ((onDeleteAdapterCallback) getActivity()).onDeleteClick(mPosition);   // Pass the position of this class to the destructor.

        } catch(ClassCastException exception) {
        }

    }

    public interface onDeleteAdapterCallback{
        public void onDeleteClick(Integer position);   // Destructor method to be overridden by main activity.
    }


}
