/**
 *  Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *  
 *  ECE 544 Final Project
 *  Wireless Android Camera
 *  06/11/2019
 *  
 *  node_mcu.ino
 *  
 *  This file contains the application that runs on the NodeMCU. The programs primary
 *  purpose is to listen for incoming data on the UART port and collect it into a buffer.
 *  When the buffer is filled, it is written to Firebase for the Android app to pick up.
 */

#include <WiFiServerSecure.h>
#include <BearSSLHelpers.h>
#include <ESP8266WiFiScan.h>
#include <WiFiUdp.h>
#include <WiFiServerSecureAxTLS.h>
#include <ESP8266WiFiSTA.h>
#include <ESP8266WiFiGeneric.h>
#include <ESP8266WiFi.h>
#include <ESP8266WiFiType.h>
#include <CertStoreBearSSL.h>
#include <ESP8266WiFiMulti.h>
#include <WiFiServer.h>
#include <WiFiClientSecureAxTLS.h>
#include <ESP8266WiFiAP.h>
#include <WiFiServerSecureBearSSL.h>
#include <WiFiClientSecureBearSSL.h>
#include <WiFiClientSecure.h>
#include <WiFiClient.h>
#include <FirebaseError.h>
#include <FirebaseArduino.h>
#include <Firebase.h>
#include <FirebaseObject.h>
#include <FirebaseHttpClient.h>
#include <FirebaseCloudMessaging.h>
#include <ArduinoJson.h>

// ********************************* DEFINES *********************************************
//#define FIREBASE_HOST "finalproject558.firebaseio.com"
#define FIREBASE_HOST "mcu-test-962d2.firebaseio.com"
#define FIREBASE_AUTH ""

#define WIFI_SSID_HOME "Lando's Wifi"
#define WIFI_PASSWORD_HOME "blahblah"

#define WIFI_SSID_MOBILE "Galaxy S5 8370"
#define WIFI_PASSWORD_MOBILE "kpjc3158"

// so that we can get access to string class
#define ARDUINOJSON_ENABLE_ARDUINO_STRING 1

#define PIN_CTS D1                            // clear to send data from FPGA
#define PIN_RTS D2                            // FPGA signals data transter start/stop
#define PIN_LED D4                            // led blinker

#define TIMER_PERIOD 900000      

#define FIREBASE_TX_START 1                   // value to notify Firebase that a transfer is beginning
#define FIREBASE_TX_END 2                     // value to notify that a transfer has ended

#define FIREBASE_DELAY 100                    // time to wait between updates to Firebase
#define MAX_STRING_SIZE 1024                  // MAX size of a char string to write to Firebase

#define STAT_IDLE 0                           // transfer to Firebase is idle
#define STAT_TRANSFER 1                       // transfer to Firebase is in progress

#define FB_MEMBERS_UPDATE 1                   // there was an update from the app
#define FB_MEMBERS_OK 0                       // no change in any firebase members
#define FB_MEMBER_POSITION "camera_position"
#define FB_MEMBER_CAPTURE "capture_image"
#define FB_CAPTURE_NO 0                       // 0 if no picture is to be taken
#define FB_CAPTURE_YES 1                      // 1 if a picture is to be taken


// ********************************* VARIABLES *********************************************
typedef struct {
  uint8_t status;
  uint8_t position;
  uint8_t capture;
} db_members;

// Global Class Members
FirebaseArduino fb;
db_members dbm;

// Interrupt variables
volatile uint8_t timer_flag;


/**
 * @brief Timer Interrupt Handler
 * @details Set the flag for main loop to check Firebase for changes
 * @return none
 */
void ICACHE_RAM_ATTR onTimerISR(){
    
    // set the database members status update for main loop
    // to check if the database members have been updated
    timer_flag = FB_MEMBERS_UPDATE;

    // reset timer 
    timer1_write(TIMER_PERIOD);
}


// ********************************* SETUP *********************************************
void setup() {}

// ********************************** MAIN **********************************************
void loop() {

  uint8_t status;
  char buff [MAX_STRING_SIZE];            //  1K character buffer of received characters
  int buff_i = 0;                         //  index to the buffer
  uint8_t transfer_status = STAT_IDLE;    //  transfer transfer_status
  uint8_t rts_pin;                        //  RTS pin transfer_status
  uint8_t transfer_count = 0;             //  Number of transfers per image
  int char_count = 0;                     //  count of characters that were sent 
  
    // Set up Serial port for debugging
  Serial.begin(115200);
  delay(500);

  // Initialize GPIO pins
  pinMode(PIN_CTS, OUTPUT);
  pinMode(PIN_RTS, INPUT);
  pinMode(PIN_LED, OUTPUT);

  // Connect to local WIFI
  WiFi.begin(WIFI_SSID_HOME, WIFI_PASSWORD_HOME);
  //WiFi.begin(WIFI_SSID_MOBILE, WIFI_PASSWORD_MOBILE);
  Serial.print("connecting");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(250);
  }
  Serial.println();
  Serial.print("connected: ");
  Serial.println(WiFi.localIP());

  // Firebase Connection Initialize
  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);

  dbm.status = FB_MEMBERS_OK;     // members synced with Firebase
  dbm.capture = FB_CAPTURE_NO;    
  dbm.position = 0;

  //Initialize Timer to poll database for changes
  timer1_attachInterrupt(onTimerISR);
  timer1_enable(TIM_DIV256, TIM_EDGE, TIM_SINGLE);
  timer1_write(TIMER_PERIOD); 
  timer_flag = FB_MEMBERS_OK;

  // signal that we are ready to receive data
  digitalWrite(PIN_CTS, LOW);

  while(1) {
    
    // Check if there is any data in the serial buffer
    while (Serial.available()) {
      buff[buff_i] = Serial.read();     
      ++buff_i;
      ++char_count;

      // if we have received enough bytes, time to write to Firebase
      if (buff_i == MAX_STRING_SIZE) {
        buff_i = 0;
        
        write_database(buff);  
        ++transfer_count;
        Serial.print(buff); Serial.print("\n");    
      } 
    }

    // Check if the FPGA has signaled that the transfer is beginning
    if ((rts_pin == HIGH) && (transfer_status == IDLE)){
      status = TRANSFER;
      Firebase.setInt("TX-RX", FIREBASE_TX_START);
    }

    // Check if the FPGA has signaled that the transfer is complete (RTS goes LOW)
    rts_pin = digitalRead(PIN_RTS);
    if ((rts_pin == LOW) && (transfer_status == STAT_TRANSFER)) {
        status = STAT_IDLE;                                   
        
        // let Firebase know image transfer is done
        Firebase.setInt("TX-RX", FIREBASE_TX_END);            
        transfer_count = 0;
        
        print_transfer_count(char_count);

        // Update Firebase with any leftover data
        Serial.print(buff); Serial.print("\n"); 
        write_database(buff);
    }

    // Check Firebase for any updates from Android application
    if (timer_flag == FB_MEMBERS_UPDATE) {
      timer_flag = FB_MEMBERS_OK;
    }
  }  
}


/**
 * @brief Read from Firebase
 * @details Check to see if the Android app updated any data members
 * 
 * @param dbm is a structure of the data members we are interested in
 * @return status of whether the data members are updated
 */
uint8_t read_database(db_members & dbm) {

  static uint8_t position = 0;
  static uint8_t capture = FB_CAPTURE_NO;


  dbm.position = Firebase.getInt(FB_MEMBER_POSITION);
  dbm.capture = Firebase.getInt(FB_MEMBER_CAPTURE);

  // if the members have changed, update local copies and return notice
  // to forward data to FPGA
  if ((position != dbm.position) || (capture != dbm.capture)) {  
    position = dbm.position;
    capture = dbm.capture;
    return FB_MEMBERS_UPDATE;
  }

  return FB_MEMBERS_OK;
}


/**
 * @brief   Write to Firebase
 * @details Writes a 1K string of image data to the firebase node for the images.
 *          The strings are an array of char of byte64 encoded data. They have to
 *          be wrapped in a JSON Variant from the Arduino JSON library in order to
 *          be properly transferred.
 *          
 * @param   data is a pointer to the buffer for the data
 */
void write_database(char * data) {

  digitalWrite(PIN_CTS, HIGH);                            // Halt transfers from FPGA

  JsonVariant jvar = data;                                // Package the char array as a JSON Variant
  Firebase.set("rt_image", jvar);                         // write the JSON Variant with the 1K string to Firebase
  delay(FIREBASE_DELAY);                                  // Give Firebase some time to update
  
  digitalWrite(PIN_CTS, LOW);                             // Resume transfers from FPGA
}


/**
 * @brief Blink LED
 * @details Blink for testing purposes
 * 
 * @param pin of the LED to blink
 */
void blinkLED(uint8_t pin){
  static int state = 0;

  if (state)
  {
    digitalWrite(pin, HIGH);
    state = 0;
  }
  else
  {
    digitalWrite(pin, LOW);
    state = 1;
  }
}


/**
 * @brief Print the number of characters written to Firebase
 * @details print for debugging purposes
 * 
 * @param count is the amount of characters transferred
 */
void print_transfer_count(int count) {
  Serial.print("Transferred: "); Serial.print(count); Serial.print("\n");
}