/**
 *  Names: Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *  Date: 6/7/2019
 *
 *  This class manages the splash screen and loads resources on launch
 *  via an Async task. Grabs strings from Firebase and converts to image.
 *
 *  Big Nerd Ranch link for properly implementing Splash Activities:
 *      https://www.bignerdranch.com/blog/splash-screens-the-right-way/
 *
 */
package com.project558.wirelessscamera;

import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;

import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.firebase.storage.FirebaseStorage;
import com.google.firebase.storage.StorageReference;

import java.lang.reflect.Array;
import java.util.ArrayList;
/**
 * Activity for displaying splash screen.
 *
 */
public class SplashActivity extends AppCompatActivity {
    private static final String EXTRA_URI_LIST = "uri_list";
    private static final String TAG = "Splash";

    private StorageReference mStorageReference;     // Declaration of object.
    private FirebaseStorage mFirebaseStorage;

    /**
     *  Method to initialize instance variables of class.
     *  Has single value event listener for receiving database
     *  member values on launch.
     *
     * @param savedInstanceState Context of Application.
     */
    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        mFirebaseStorage = FirebaseStorage.getInstance();       // Initialize storage references.

        mStorageReference = mFirebaseStorage.getReference();

        AsyncTask mAsyncLoad = new GetAppResources().execute(); // Start Async load task.
    }

    /**
     * Subclass of Splash Activity.
     * Thread to convert encoded string to an image.
     * Passes results to the MainActivity.
     */
    private class GetAppResources extends AsyncTask<Void, Void, Void> {

        private ArrayList<Uri> mUris;

        /** Method
         *  Description:
         *      Main processing loop for thread class. Converts resources to image.
         *
         * @param voids nothing
         * @return  nothing
         */
        @Override
        protected Void doInBackground(Void... voids) {

            // TODO: Write code to get images from Firebase on launch.

            Integer mNumImages =1;
            mUris = new ArrayList<>();

            while(mNumImages < 15)
            {
                String pos = Integer.toString(mNumImages);
                String toFetch = "img"+ pos + ".png";
                mStorageReference.child(toFetch).getDownloadUrl().addOnSuccessListener(
                        new OnSuccessListener<Uri>() {
                            @Override
                            public void onSuccess(Uri uri) {
                                // Add to string here:
                                mUris.add(uri);
                            }
                        }).addOnFailureListener(new OnFailureListener() {
                    @Override
                    public void onFailure(@NonNull Exception e) {

                    }
                });

                mNumImages += 1;
            }
            return null;
        }


        /** Method
         *  Description:
         *      Executes after runnable is done.
         *      Creates intent for starting MainActivity
         *      and passes extras containing data for widgets.
         *
         * @param aVoid nothing
         */
        @Override
        protected void onPostExecute(Void aVoid) {
            super.onPostExecute(aVoid);
            Intent intentObj = new Intent(SplashActivity.this,MainActivity.class);  // Intent is to create activity.
            // TODO: Add extras with data needed for MainActivity.
            ArrayList<String> mTemp = new ArrayList<>();
            for(Integer i = 0; i < mUris.size(); ++i) {
                mTemp.add(mUris.get(i).toString());
            }
            intentObj.putStringArrayListExtra(MainActivity.EXTRA_URI_LIST,mTemp);

            startActivity(intentObj);   // Start MainActivity.
            finish();
        }
    }
}
