/**
 * Name: Andrew Capatina
 * Date: 6/11/2019
 *
 * Gets/sets realtime database members for tranferring image.
 *
 */
package com.project558.wirelessscamera;

import com.google.firebase.database.Exclude;

import java.util.HashMap;
import java.util.Map;

public class FirebaseDataImage {

    public Integer tx_rx;
    public String rt_image;

    /**
     * Constructor.
     *
     */
    public void FirebaseDataImage(){
        this.tx_rx = 0;
        this.rt_image = "";
    }

    /**
     * Sets instance members of class.
     *
     * @return
     */
    @Exclude
    public Map<String, Object> toMap() {    // Creates appropriate object for updating Firebase.
        HashMap<String, Object> result = new HashMap<>();
        result.put("TX-RX", tx_rx);
        result.put("rt_image",rt_image);

        return result;
    }

}
