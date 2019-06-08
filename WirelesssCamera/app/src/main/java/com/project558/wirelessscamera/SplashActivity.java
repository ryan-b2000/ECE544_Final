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
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v7.app.AppCompatActivity;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import static java.lang.Thread.sleep;

/**
 * Activity for displaying splash screen.
 *
 */
public class SplashActivity extends AppCompatActivity {
    private static final String TAG = "Splash";

    private static final int STARTUP_DELAY = 50;
    private static final int ANIM_ITEM_DURATION = 1000;

    private FirebaseDataImage mFirebaseDataImage;           // Has information given from database.

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

        DatabaseReference mDatabaseReference = FirebaseDatabase.getInstance().getReference(); // Initialize database.

        mDatabaseReference.addListenerForSingleValueEvent(  // Grabs data instance once.
                new ValueEventListener() {
                    @Override
                    public void onDataChange(@NonNull DataSnapshot dataSnapshot) {
                        mFirebaseDataImage = dataSnapshot.getValue(FirebaseDataImage.class);    // Store database members to class.
                    }

                    @Override
                    public void onCancelled(@NonNull DatabaseError databaseError) {

                    }
                }
        );

        AsyncTask mAsyncLoad = new GetAppResources().execute(); // Start Async load task.
    }

    /**
     * Subclass of Splash Activity.
     * Thread to convert encoded string to an image.
     * Passes results to the MainActivity.
     */
    private class GetAppResources extends AsyncTask<Void, Void, Void> {
        /** Method
         *  Description:
         *      Main processing loop for thread class. Converts resources to image.
         *
         * @param voids nothing
         * @return  nothing
         */
        @Override
        protected Void doInBackground(Void... voids) {

            // TODO: Write code to convert strings to an image.

            try {
                sleep(1000);    // Temporary sleep.
            } catch (InterruptedException e) {

            }
            // Convert the image here.
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
            startActivity(intentObj);   // Start MainActivity.
            finish();
        }
    }
}
