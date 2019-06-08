package com.project558.wirelessscamera;

import com.google.firebase.database.Exclude;
import com.google.firebase.database.IgnoreExtraProperties;

import java.util.HashMap;
import java.util.Map;

/** Class
 *
 *  Description:
 *      This class has all the firebase members being
 *      written to/read from.
 *
 */
@IgnoreExtraProperties
public class FirebaseData {

    public int mCamPos;
    public int mCapRate;
    public int mIsManual;
    public String TIMESTAMP;
    public Map<String, Boolean> temp = new HashMap<>();

    public FirebaseData() {
        // Default constructor required for calls to DataSnapshot.getValue(FirebaseData.class)
    }

    public FirebaseData(int camPos, int capRate, int isManual, String TIMESTAMP) {
        mCamPos = camPos;
        mCapRate = capRate;
        mIsManual = isManual;
        this.TIMESTAMP = TIMESTAMP;
    }

    // Use this method for making the key value pair object for Firebase.
    @Exclude
    public Map<String, Object> toMap() {    // Creates appropriate object for updating Firebase.
        HashMap<String, Object> result = new HashMap<>();
        result.put("camera_position", mCamPos);
        result.put("capture_rate", mCapRate);
        result.put("is_manual_mode", mIsManual);
        result.put("TIMESTAMP", TIMESTAMP);

        return result;
    }
}