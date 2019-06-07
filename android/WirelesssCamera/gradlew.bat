/**
 *  MainActivity.java
 *
 *  Name: Andrew Capatina / Ryan Bornhorst
 *  Date: 5/25/2019
 *
 *  Description:
 *      Main Activity for project 3 558 Android program.
 *      This activity is specifically used for android phones.
 *      Activity will read Firebase and update Firebase data
 *      based on user selection using UI. User can modify
 *      4 PWM channels and DAC output.
 *
 */

package com.example.iothomeautomation;

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.design.widget.BottomNavigationView;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.SeekBar;
import android.widget.TextView;

import com.google.firebase.database.DataSnapshot;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.FirebaseDatabase;
import com.google.firebase.database.ValueEventListener;

import java.text.DateFormat;
import java.util.Date;
import java.util.Map;

/** Class
 *
 *  Description:s
 *      Contains functions to update the UI for project 3
 *      of 558. Updates 5 text views, 1 progress bar,
 *      3 seek bars, and 2 buttons. Some of the objects
 *      are updated using data from Firebase.
 *
 */
public class MainActivity extends AppCompatActivity {

    private static final int DAC_MIN = 0;           // min/max user input for DAC.
    private static final int DAC_MAX = 31;
    //private TextView mTextMessage;
    private DatabaseReference mDatabase = null;

    /* Initializing TextViews for displaying peripheral data */
    private TextView    mTempTxtVw = null;  // Temperature object.
    private TextView    mADC3TxtVw = null;  // ADC objects.
    private TextView    mADC4TxtVw = null;
    private TextView    mADC5TxtVw = null;
    private TextView    mDAC1TxtVw = null;
    private ProgressBar mPWM3ProgressBar = null;    // PWM objects.
    private SeekBar     mPWM4SeekBar = null;
    private SeekBar     mPWM5SeekBa