/**
 *  Names: Ryan Bentz, Ryan Bornhorst, Andrew Capatina
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
 */

package com.project558.wirelessscamera;

import android.content.Context;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.view.ViewPager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

import java.util.ArrayList;

/** class
 *
 *  Description:
 *      Class for managing UI and data to Firebase.
 *
 */
public class MainActivity extends AppCompatActivity {

    private static final String TAG = "MainActivity";
    private static final String ADAPTER_IMAGE_MSG = "image";      // key associated with position value. Packed with bundle when creating fragment
    private ViewPager mViewPager;

    ArrayList<Integer> data = new ArrayList<>();
    public static Integer IMGS[] = {
            R.drawable.camera,
            R.drawable.common_full_open_on_phone
            // Drawable IDs here.
    };


    FragmentPagerAdapter mAdapterPager;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        mViewPager = (ViewPager) findViewById(R.id.pager);
        mViewPager.setPageTransformer(true, new ZoomOutPageTransformer());
        mAdapterPager = new ScreenSlidePagerAdapter(getSupportFragmentManager());
        mViewPager.setAdapter(mAdapterPager);

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



    }
    /**
     * Pager adapter for instantiating and passing data to fragments.
     */
    private class ScreenSlidePagerAdapter extends FragmentPagerAdapter {

        private int NUM_PAGES = 0;                     // Number of fragments.
        private FragmentManager mFragmentManager;

        public ScreenSlidePagerAdapter(FragmentManager fm) {
            super(fm);
            this.mFragmentManager = fm;
            NUM_PAGES = IMGS.length + 1;
        }


        @Override
        public Fragment getItem(int position) {
            if(position == 0)
            {
                return new CameraControlFragment(); // Return camera controls for first fragment.
            }
            else if(position > 0)   // Views after the first position consist of images received.
            {
                FragmentTransaction mTransaction = mFragmentManager.beginTransaction();
                Bundle bundle = new Bundle();
                bundle.putInt(ADAPTER_IMAGE_MSG, IMGS[position-1]);
                PhotoGalleryFragment mFrag = new PhotoGalleryFragment();
                mFrag.setArguments(bundle);
                mTransaction.commit();
                return mFrag;  // Returns fragment with layout containing picture.
            }

            return null;
        }

        @Override
        public int getCount() {
            return NUM_PAGES;   // Return number of fragments.
        }

    }

    // Got this function from following link: https://developer.android.com/training/animation/screen-slide
    // Created transition animation for viewpager.
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



