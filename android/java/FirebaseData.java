/**
 * Name: Andrew Capatina
 * Date: 6/11/19
 *
 * Used for retrieving and writing Firebase realtime database members.
 *
 *
 */

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

    /**
     * Cefualt constructor.
     *
     */
    public FirebaseData() {
        // Default constructor required for calls to DataSnapshot.getValue(FirebaseData.class)
    }

    /**
     * Constructor with arguments.
     *
     * @param camPos    Camera Position
     * @param capRate   Camera capture rate.
     * @param isManual  Manual mode indication.
     * @param TIMESTAMP Timestamp of write.
     */
    public FirebaseData(int camPos, int capRate, int isManual, String TIMESTAMP) {
        mCamPos = camPos;
        mCapRate = capRate;
        mIsManual = isManual;
        this.TIMESTAMP = TIMESTAMP;
    }

    /**
     * Sets instance members of class.
     *
     * @return Object with set instance members.
     */
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