package com.project558.wirelessscamera;

import com.google.firebase.database.Exclude;
import com.google.firebase.database.IgnoreExtraProperties;

import java.util.HashMap;
import java.util.Map;

public class FirebaseDataImage {

    public String str0;
    public String str1;
    public String str2;

    public void FirebaseDataImage(){
        this.str0 = "";
        this.str1 = "";
        this.str2 = "";
    }

    @Exclude
    public Map<String, Object> toMap() {    // Creates appropriate object for updating Firebase.
        HashMap<String, Object> result = new HashMap<>();
        result.put("str0",str0);
        result.put("str1",str1);
        result.put("str2",str2);

        return result;
    }

}
