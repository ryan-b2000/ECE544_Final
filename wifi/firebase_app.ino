
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

#include <SPI.h>

#include "buffer.h"

#define FIREBASE_HOST "finalproject558.firebaseio.com"
//#define FIREBASE_HOST "mcu-test-962d2.firebaseio.com"
#define FIREBASE_AUTH ""

#define WIFI_SSID_HOME "Lando's Wifi"
#define WIFI_PASSWORD_HOME "blahblah"

#define WIFI_SSID_MOBILE "Galaxy S5 8370"
#define WIFI_PASSWORD_MOBILE "kpjc3158"

// so that we can get access to string class
#define ARDUINOJSON_ENABLE_ARDUINO_STRING 1

#define PIN_CTS D1
#define PIN_RTS D2
#define PIN_LED D4

#define PASS 1
#define FAIL 0

#define TRUE 1
#define FALSE 0

#define TIMER_PERIOD 300000      

#define FIREBASE_TX_START 0
#define FIREBASE_TX_END 1

#define TEST_DELAY 10000
#define FIREBASE_DELAY 1000
#define MAX_STRING_SIZE 1024

#define STAT_IDLE 0
#define STAT_TRANSFER 1

#define FB_MEMBERS_UPDATE 1                   // there was an update from the app
#define FB_MEMBERS_OK 0                       // no change in any firebase members
#define FB_MEMBER_POSITION "camera_position"
#define FB_MEMBER_CAPTURE "capture_image"
#define FB_CAPTURE_NO 0                       // 0 if no picture is to be taken
#define FB_CAPTURE_YES 1                      // 1 if a picture is to be taken



typedef struct {
  uint8_t status;
  uint8_t position;
  uint8_t capture;
} db_members;

// Global Class Members
buffer databuff;
FirebaseArduino fb;

db_members dbm;

volatile uint8_t timer_int;

String image_labels [40] = {
"image_01", "image_02", "image_03", "image_04", "image_05",
"image_06", "image_07", "image_08", "image_09", "image_10",
"image_11", "image_12", "image_13", "image_14", "image_15",
"image_16", "image_17", "image_18", "image_19", "image_20",
"image_21", "image_22", "image_23", "image_24", "image_25",
"image_26", "image_27", "image_28", "image_29", "image_30",
"image_31", "image_32", "image_33", "image_34", "image_35",
"image_36", "image_37", "image_38", "image_39", "image_40"};


void ICACHE_RAM_ATTR onTimerISR(){
    
    // set the database members status update for main loop
    // to check if the database members have been updated
    timer_int = FB_MEMBERS_UPDATE;

    // reset timer 
    timer1_write(TIMER_PERIOD);
}
// PROGRAM SETUP
// *******************************************************************************
void setup() {

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

  timer_int = FB_MEMBERS_OK;

  SPI.begin();

  //Initialize Timer to poll database for changes
  timer1_attachInterrupt(onTimerISR);
  timer1_enable(TIM_DIV256, TIM_EDGE, TIM_SINGLE);
  timer1_write(TIMER_PERIOD); 
}



// MAIN CONTROL
// *******************************************************************************
void loop() {

  uint8_t label_i = 0;
  int buff_i = 0;
  char buff [MAX_STRING_SIZE];
  uint8_t status = STAT_IDLE;
  uint8_t rts_pin;

  // signal that we are ready to receive data
  digitalWrite(PIN_CTS, LOW);

  while(1) {
    
    // Check if there is any data in the serial buffer
    if (Serial.available()) {
      buff[buff_i] = Serial.read();     // read the incoming byte
      ++buff_i;
    }

    // Check if the app has changed any of the database members to move the camera
    // or to take a picture. Datamembers are updated in ISR
    if (timer_int == FB_MEMBERS_UPDATE) {
      timer_int = FB_MEMBERS_OK;

      // read from the database and check if the members have changed
      if (read_database(dbm) == FB_MEMBERS_UPDATE){
        Serial.print("Read from database: ");
        Serial.print("Pos: "); Serial.print(dbm.position);
        Serial.print(" Cap: "); Serial.print(dbm.capture);
        Serial.print("\n");  

        SPI.transfer(dbm.position);
        SPI.transfer(dbm.capture);
      }
    }

    // Check if we are starting a new transfer or completing a transfer
    // FPGA sets RTS -> LOW to begin a transfer and the NodeMCU write to 
    // a flag so that the App knows a new image transfer is about to begin
    rts_pin = digitalRead(PIN_RTS);
    if ((rts_pin == LOW) && (status == STAT_IDLE)) {
        status = STAT_TRANSFER;                        // change to transfer status
        Firebase.setInt("TX-RX", FIREBASE_TX_START);   // let Firebase know      
    }
    // When the image transfer is finished, the FPGA sets RTS -> HIGH to indicate
    // the transfer is complete and the NodeMCU writes a flag in the database to
    // let the app know that the transfer is complete
    else if ((rts_pin == HIGH) && (status == STAT_TRANSFER)) {
        status = STAT_IDLE;                         // transition to IDLE status
        Firebase.setInt("TX-RX", FIREBASE_TX_END);  // let Firebase know image transfer is done
    }

    // if we have received enough bytes, time to write to Firebase
    if (buff_i == MAX_STRING_SIZE) {
      buff_i = 0;
      digitalWrite(PIN_CTS, HIGH);      // deassert CTS to halt the transfers from sender
      write_database(buff);
      delay(FIREBASE_DELAY);            // wait for upload to Firebase
      digitalWrite(PIN_CTS, LOW);       // clear string and wait for more bytes
    } 
  }
}



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
 * @brief Write to Firebase
 * @details Writes a 1K string of image data to the firebase node for the images.
 *          The strings are an array of char of byte64 encoded data. They have to
 *          be wrapped in a JSON Variant from the Arduino JSON library in order to
 *          be properly transferred.
 *          
 * @param data is a pointer to the buffer for the data
 */
void write_database(char * data) {
  
    uint8_t status = FAIL;
    static uint8_t label_i = 0;

    JsonVariant jvar = data;

    Serial.print("Write to database:\n"); 
    Serial.print(data); Serial.print("\n");

    while (status == FAIL) {

      Firebase.set("rt_image", jvar);
      if (Firebase.failed()) {
        Serial.print("Write failed. "); Serial.print("rt_image"); Serial.print("\n"); 
        Serial.print(Firebase.error());
        delay(FIREBASE_DELAY);
      }
      else {
        Serial.print("Write success.\n");
        status = PASS;
        label_i++;

        if (label_i == 40)
          label_i = 0;
      } 
    }
}



// Blink LED on receiving a word
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


