/**
 * 	Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 * 	
 * 	ECE 544 Final Project
 * 	Wireless Android Camera
 * 	06/11/2019
 * 	
 * 	main.c
 * 	
 * 	This file contains the main application code for the embedded system.
 * 	It handles the I/O for camera pixel data and camera commands from the
 * 	Android app (not implemented). It runs in a continuously loop waiting 
 * 	for the command to take a picture and then enters a second loop that
 * 	handles the process of reading pixel data, packaging it, and transmitting
 * 	it out the UART.
 */

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "platform.h"
#include "xparameters.h"
#include "xstatus.h"
#include "microblaze_sleep.h"
#include "nexys4IO.h"
#include "xintc.h"
#include "xtmrctr.h"
#include "xgpio.h"
#include "defines.h"
#include "uart.h"
#include "processing.h"
#include "init.h"
#include "testing.h"
#include "CameraIP.h"


/************************** COMMON DEFINES ************************************/
#define TX_DELAY 10				// time to wait between transfers
#define CAMERA_COM_NONE	0		// camera command received from Android app
#define CAMERA_COM_FREEZE 0		
#define CAMERA_COM_UNFREEZE 1
#define CAMERA_COM_PICTURE 2


/************************ FUNCTION PROTOTYPES ************************************/
u8 check_buttons();
void print_data_out(u8 * data);


/************************** MAIN PROGRAM ************************************/
int main(void)
{
	u16 pxl_words_buff [SIZE_PIXEL_BUFF];		// buffer of pixel words from camera
	u8	pxl_bytes_buff [SIZE_BYTES_BUFF];		// buffer of encoded pixel bytes
	u8 com_data[UART_BUFFER_SIZE];
    u8 camera_position;		// tracks position of the camera
    u8 camera_status;		// tracks if we are transferring an image or not
    u8 command;				// commmand from NodeMCU
    u32 frame_address;
    u32 count = 0;

    // Initialize the system
	init_platform();
	if (do_init() != XST_SUCCESS)
		exit(1);

	// Enable interrupts and enable UART transmitter
	microblaze_enable_interrupts();


	// Initialize variables
	camera_position = 0;
	frame_address = 0;

	while(1) {

		// Handle any updates from the NodeMCU that the app made a change
		command = check_buttons();

		// Hooks for the Android application to send commands
		if (uart_check_received(data) == UART_BUFF_DATA){
			command = data[0];
		}

		if (command == CAMERA_COM_PICTURE) {

			count = 0;

			OV7670_freeze();

			// set RTS pin HIGH for NodeMCU to update database that a transfer is about to begin
			set_rts_pin(TRANSFER_BEGIN);

			// transmit the data
			while (frame_address < FRAME_MAX_ADDRESS) {


				if (check_cts_pin() == OK_TO_SEND) {

					// get 8 pixel words from the camera
					frame_address = pixel_collector(pxl_words_buff, frame_address);

					// convert 8 pixel words to 16 ASCII bytes
					base64_encoder(pxl_words_buff, pxl_bytes_buff);

					// print data_out
					print_data_out(pxl_bytes_buff);

					// transmit to nodeMCU (blocks until transfer is complete)
					uart_transmit(pxl_bytes_buff, SIZE_BYTES_BUFF);

					mySleep(100 * SIZE_BYTES_BUFF);

					count += SIZE_BYTES_BUFF;
				}
				else {
					mySleep(TX_DELAY);
				}
			}

			set_rts_pin(TRANSFER_END);
			OV7670_unfreeze();

			xil_printf("Transferred: %d", count);
			count = 0;

			frame_address = 0;
		}
	}

	// cleanup and exit
    cleanup_platform();
    exit(0);
}


/**
 * @brief Print the transmitted data
 */
void print_data_out(u8 * data) {
	for (int i = 0; i < SIZE_BYTES_BUFF; ++i){
		xil_printf("%c", data[i]);
	}
	xil_printf("\n");
}


/**
 * @brief Check the buttons and return command for button press
 * @details Analyze the buttons for if we want to take a picture or not
 * @return command for the button presses
 */
u8 check_buttons() {
	u8 command;
	u32 btnC = 0;
	u32 btnC_last = 0;

	btnC = NX4IO_isPressed(BTNC);
	if (btnC && !btnC_last)
	{
		command = CAMERA_COM_PICTURE;
	}

	btnC_last = btnC;

	return command;
}


/**
 * @brief 	Crude sleep function to put small delays into the code.
 * @details mimics sleep functionality for delays
 *
 * @param 	micros are the number of microseconds to "sleep"
 */
void mySleep(u32 micros) {

	u32 count;

	for (count = micros * 100; count > 0; --count)
		;
}
