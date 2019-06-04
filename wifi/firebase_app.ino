
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


#include "buffer.h"


#define FIREBASE_HOST "mcu-test-962d2.firebaseio.com"
#define FIREBASE_AUTH ""

#define WIFI_SSID_HOME "Lando's Wifi"
#define WIFI_PASSWORD_HOME "blahblah"

#define WIFI_SSID_MOBILE "Galaxy S5 8370"
#define WIFI_PASSWORD_MOBILE "kpjc3158"

// so that we can get access to string class
#define ARDUINOJSON_ENABLE_ARDUINO_STRING 1

#define PIN_CTS D5
#define PIN_RTS D6

#define PASS 1
#define FAIL 0

#define TEST_DELAY 10000
#define FIREBASE_DELAY 1000
#define MAX_STRING_SIZE 1024

// Global Class Members
buffer databuff;
FirebaseArduino fb;

String tx_string_data; 

String image_labels [40] = {
"image_01", "image_02", "image_03", "image_04", "image_05",
"image_06", "image_07", "image_08", "image_09", "image_10",
"image_11", "image_12", "image_13", "image_14", "image_15",
"image_16", "image_17", "image_18", "image_19", "image_20",
"image_21", "image_22", "image_23", "image_24", "image_25",
"image_26", "image_27", "image_28", "image_29", "image_30",
"image_31", "image_32", "image_33", "image_34", "image_35",
"image_36", "image_37", "image_38", "image_39", "image_40"};



// PROGRAM SETUP
// *******************************************************************************
void setup() {

	// Set up Serial port for debugging
	Serial.begin(115200);
	delay(500);

	// Initialize GPIO pins
  pinMode(PIN_CTS, OUTPUT);
  pinMode(PIN_RTS, INPUT);

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
}


// MAIN CONTROL
// *******************************************************************************
void loop() {

  uint8_t label_i = 0;
  int buff_i = 0;
  char buff [MAX_STRING_SIZE];


  // signal that we are ready to receive data
  digitalWrite(PIN_CTS, LOW);

  while(1) {
    
    // Check if there is any data in the serial buffer
    if (Serial.available()) {
      
      // read the incoming byte
      buff[buff_i] = Serial.read();
      
      // set next element
      ++buff_i;
      if (buff_i == MAX_STRING_SIZE)
        buff_i = 0;  
    }

    // if we have received enough bytes, time to write to Firebase
    if (buff_i == MAX_STRING_SIZE) {
      buff_i = 0;

      // deassert CTS to halt the transfers from sender
      digitalWrite(PIN_CTS, HIGH);
      
      write_database(buff);
      
      // wait for upload to Firebase
      delay(FIREBASE_DELAY);

      // clear string and wait for more bytes
      digitalWrite(PIN_CTS, LOW);
    } 
  }
}



// WRITE DATABASE
// *******************************************************************************
void write_database(char * data) {
  
    uint8_t status = FAIL;

    JsonVariant jvar = data;

    Serial.print("Write to database:\n"); 
    Serial.print(data); Serial.print("\n");

    while (status == FAIL) {

      Firebase.set(image_labels[label_i], jvar);
      if (Firebase.failed()) {
        Serial.print("Write failed. "); Serial.print(image_labels[label_i]); Serial.print("\n"); 
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



void create_variant(JsonVariant & jvar, char * data) {
    StaticJsonBuffer<200> jsonBuffer;
    // create an object
    JsonObject& object1 = jsonBuffer.createObject();
    object1["hello"] = "world";

    jvar = data;

}

   // this works but it just keeps appending sub nodes
   // Firebase.pushInt("testpush", test);  
   // this works but just keeps appending sub nodes
    //Firebase.pushString("check", "testing");

// stack error
//    if (test == 0)
//      node = Firebase.pushString("image", str1);
//    else
//      node = Firebase.pushString(node, str1);
/*

    
    if (Firebase.failed())
    {
      Serial.print("Write failed.");
      Serial.println(Firebase.error());
    }
    test++;
*/




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


