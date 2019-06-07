package com.project558.wirelessscamera;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

import java.util.ArrayList;

public class PhotoGalleryFragment extends Fragment {

    private Context context;
    private ArrayList<Integer> IMAGES;
    private static final String ADAPTER_MESSAGE = "image";      // key associated with position value. Packed with bundle when creating fragment
    private int mPosition = 0;

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
    {
        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_gallery, container, false);

        ImageView mImageView = (ImageView) rootView.findViewById(R.id.image);

        Bundle bundle = this.getArguments();
        if(bundle != null)
        {
            Integer mDrawable = bundle.getInt(ADAPTER_MESSAGE);
            IMAGES.add(mDrawable);
            // Set image resource with data received through bundle argument.
            mImageView.setImageResource(mDrawable);
        }

        return rootView;
    }


}
