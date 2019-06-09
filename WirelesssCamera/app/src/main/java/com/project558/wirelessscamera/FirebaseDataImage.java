package com.project558.wirelessscamera;

import com.google.firebase.database.Exclude;

import java.util.HashMap;
import java.util.Map;

public class FirebaseDataImage {

    public Integer tx_rx;
    public String rt_image;

    public void FirebaseDataImage(){
        this.tx_rx = 0;
        this.rt_image = "";
    }

    @Exclude
    public Map<String, Object> toMap() {    // Creates appropriate object for updating Firebase.
        HashMap<String, Object> result = new HashMap<>();
        result.put("TX-RX", tx_rx);
        result.put("rt_image",rt_image);

        return result;
    }

}
