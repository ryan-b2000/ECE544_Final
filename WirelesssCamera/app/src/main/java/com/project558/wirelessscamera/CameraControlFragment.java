/** CameraControlFragment.java
 *
 *  Names: Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *
 *  Description:
 *      File setting up layout and communication for the UI controls
 *      of the Android app. User can modify capture rate, camera position,
 *      and select manual capture mode using this UI.
 *
 */
package com.project558.wirelessscamera;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.Switch;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;
import com.zhouyou.view.seekbar.SignSeekBar;

import java.text.DateFormat;
import java.util.Date;
import java.util.Map;

import io.feeeei.circleseekbar.CircleSeekBar;
import mehdi.sakout.fancybuttons.FancyButton;

/**
 *
 *
 */
public class CameraControlFragment extends Fragment {

    // UI objects.
    private CircleSeekBar mCamPosSeekBar;       // Circle Seekbar object for camera position.
    private SignSeekBar mIntervalSeekBar;       // Interval seekbar for capture rate.
    private Switch mSwitchCamMode;              // Selection for manual capture mode.
    private FancyButton mButtonManualPhoto;     // Button for manual capture of photos.
    private FancyButton mButtonPosConf;         // Button object used for setting position of the camera.

    // Class for Firebase Data
    private DatabaseReference mDatabase;             // Has firebase data.
    private FirebaseData data;                       // Contains most recent values for the app.
    // Data for Firebase
    private int mCamSeekProgress        = 0;    // Progress of circular seekbar.
    private int mIntervalSeekProgress   = 0;    // Progress of interval seekbar.
    private int mSwitchModeStatus       = 0;    // Status of switch for manual capture.

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState){

        ViewGroup rootView = (ViewGroup) inflater.inflate(R.layout.fragment_control_ui, container, false);

        // Get Firebase data reference.
        mDatabase = FirebaseDatabase.getInstance().getReference();      // Get database reference.
        String time_temp = DateFormat.getDateTimeInstance().format(new Date());
        data = new FirebaseData(mCamSeekProgress, mIntervalSeekProgress, mSwitchModeStatus, time_temp);

        // Initializing UI objects.
        mCamPosSeekBar = (CircleSeekBar) rootView.findViewById(R.id.seekBar_position);
        mSwitchCamMode = (Switch) rootView.findViewById(R.id.switch_cam_mode);
        mIntervalSeekBar = (SignSeekBar) rootView.findViewById(R.id.seekBar_cap_rate);
        mButtonManualPhoto = (FancyButton) rootView.findViewById(R.id.button_take_photo);
        mButtonPosConf = (FancyButton) rootView.findViewById(R.id.button_set_position);

        // Setting listeners for appropriate elements.
        mCamPosSeekBar.setOnSeekBarChangeListener(new CircleSeekBar.OnSeekBarChangeListener() {
            @Override
            public void onChanged(CircleSeekBar circleSeekBar, int i) {
                // Add code to limit position of camera. 
                mCamSeekProgress = i;   // Save progress of seekBar.
            }
        });

        // Listener for switch; the switch sets manual capture mode.
        mSwitchCamMode.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
                mSwitchModeStatus = isChecked ? 1 : 0;  // Assign boolean to int.

                if(mSwitchModeStatus == 1)   // Set the capture button visible based on selection of switch.
                {
                    mButtonManualPhoto.setVisibility(View.VISIBLE);
                }
                else {
                    mButtonManualPhoto.setVisibility(View.GONE);
                }

                updateFirebase();   // Overwrite database.

            }
        });

        // Setting listener for interval seek bar; sets capture rate.
        mIntervalSeekBar.setOnProgressChangedListener(new SignSeekBar.OnProgressChangedListener() {
            @Override
            public void onProgressChanged(SignSeekBar signSeekBar, int progress, float progressFloat, boolean fromUser) {

                mIntervalSeekProgress = progress;   // Save user selection.
            }

            @Override
            public void getProgressOnActionUp(SignSeekBar signSeekBar, int progress, float progressFloat) {

            }

            @Override
            public void getProgressOnFinally(SignSeekBar signSeekBar, int progress, float progressFloat, boolean fromUser) {
            }
        });

        // Firebase data listener.
        mDatabase.addValueEventListener(new ValueEventListener() {
            @Override
            public void onDataChange(@NonNull DataSnapshot dataSnapshot) {

            }

            @Override
            public void onCancelled(@NonNull DatabaseError databaseError) {

            }
        });

        // Takes a manual photo when in manual capture mode.
        mButtonManualPhoto.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // Take a photo.
            }
        });

        // Updates position of camera when user presses this button.
        mButtonPosConf.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View v) {
                updateFirebase();   // Overwrite database at user request.
            }
        });



        return rootView;
    }

    /**
     *  Description:
     *      Method that updates Firebase with
     *      user selections.
     *
     */
    private void updateFirebase() {

        data.mIsManual = mSwitchModeStatus;     // Set members of the structure.
        data.mCapRate = mIntervalSeekProgress;
        data.mCamPos = mCamSeekProgress;
        // Get current time: https://stackoverflow.com/questions/36301543/get-todays-date-and-time-as-string#36301666
        data.TIMESTAMP = DateFormat.getDateTimeInstance().format(new Date());   // Save time of overwrite.
        Map<String, Object> dbaseValues = data.toMap();  // Create map object containing most up to date user selections.
        // Update Firebase.
        mDatabase.updateChildren(dbaseValues);  // Overwrite database.
    }


}
