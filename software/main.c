// NEXYS4IO IP TEST

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
#include "spi.h"
#include "uart.h"
#include "processing.h"
#include "init.h"
#include "testing.h"
#include "CameraIP.h"

#define TX_DELAY 10


void byte_assembler(u8 * data, u32 * index);
void mySleep(u32 micros);


/************************** MAIN PROGRAM ************************************/
int main(void)
{
	u16 pxl_words_buff [SIZE_PIXEL_BUFF];		// buffer of pixel words from camera
	u8	pxl_bytes_buff [SIZE_BYTES_BUFF];		// buffer of encoded pixel bytes

    u8 camera_position;		// tracks position of the camera
    u8 camera_status;		// tracks if we are transferring an image or not

    // Initialize the system
	init_platform();
	if (do_init() != XST_SUCCESS)
		exit(1);

	// Enable interrupts and enable UART transmitter
	microblaze_enable_interrupts();
	uart_init(UART1_DEVICE_ID);
	init_camera();

	// Initialize variables
	camera_position = 0;
	camera_status = IMAGE_TRANSFER_IDLE;

	while(1) {

		// HANDLE UPDATE FROM NODEMCU (Change position / take picture)

		// HANDLE IMAGE TRANSFER PROCESS
		if (camera_status == IMAGE_TRANSFER_PROG) {

			// check if NodeMCU is ready for next data burst
			if (check_cts_pin() == OK_TO_SEND) {

				// collect pixel data from camera

				// encode pixel data into byte64
				base64_encoder(pxl_words_buff, SIZE_PIXEL_BUFF, pxl_bytes_buff, SIZE_BYTES_BUFF);

				// append extra new line (if needed)

				// transmit to nodeMCU (blocks until transfer is complete)
				uart_transmit(pxl_bytes_buff, SIZE_BYTES_BUFF);
			}
		}
	}

	// cleanup and exit
    cleanup_platform();
    exit(0);
}



/**
 * @brief Check the buttons and return command for button press
 * @details Analyze the buttons for if we want to take a picture or not
 * @return command for the button presses
 */
u8 check_buttons() {
	u8 command;
	u32 btnU = 0;
	u32 btnC = 0;
	u32 btnD = 0;
	u32 btnU_last = 0;
	u32 btnC_last = 0;
	u32 btnD_last = 0;

	btnC = NX4IO_isPressed(BTNC);
	if (btnC && !btnC_last)
	{
		command = CAMERA_UNFREEZE;
		//OV7670_freeze();
	}

	btnU = NX4IO_isPressed(BTNU);
	if (btnU && !btnU_last)
	{
		command = CAMERA_FREEZE;
		//OV7670_unfreeze();
	}

	btnD = NX4IO_isPressed(BTND);
	if (btnD && !btnD_last)
	{
		command = CAMERA_PICTURE;
	}

	btnC_last = btnC;
	btnU_last = btnU;
	btnD_last = btnD;

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

	for (count = micros * 10000; count > 0; --count)
		;
}
