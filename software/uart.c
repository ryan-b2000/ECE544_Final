// - uart.c

#include "uart.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "defines.h"
#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "processing.h"

#define TEST_BUFFER_SIZE 16

XUartLite UartLite; /* Instance of the UartLite Device */

static u8 SendBuffer[TEST_BUFFER_SIZE];	/* Buffer for Transmitting Data */
static u8 RecvBuffer[TEST_BUFFER_SIZE]; /* Buffer for Receiving Data */


void uart_init(u16 DeviceId) {

	u32 status;

	// Initialize the UART instance and device ID
	status = XUartLite_Initialize(&UartLite, DeviceId);
	if (status != XST_SUCCESS) {
		xil_printf("UART init fail.\n");
		return;
	}


	// Perform self test of UART
	status = XUartLite_SelfTest(&UartLite);
	if (status != XST_SUCCESS) {
		xil_printf("UART selftest fail.\n");
		return;
	}

	xil_printf("UART initialized successfully.\n");
	return;
}

/**
 * @brief Transmit a data buffer via the UART
 * @details We are going to send 76 bytes out of the UART. This function blocks until
 * 			the UART has finished sending all the bytes out.
 * 			
 * @param data the data buffer to send
 * @param numbytes number of bytes to send
 */
void uart_transmit(u8 * data, u8 numbytes) {

	u8 i, index, blocks, remain;
	u32 sentcount;
	u8 * buff;		// temporary buffer pointer to pass to UART


	//index = 0;	 // set master index that iterates through entire data buffer

	sentcount = XUartLite_Send(&UartLite, data, numbytes);
	if (sentcount != numbytes) {
		xil_printf("Transmit failure. %d bytes not sent.\n", numbytes - sentcount);
	}
}


	/*
	// we should be sending about 76 bytes per transmission. UART buffer can take 16 at a time
	// so figure out how many 16-byte blocks we can send
	blocks = numbytes / 16;
	remain = numbytes - (blocks * 16);

	// send the 16-byte blocks
	for (i = 0; i < blocks; ++i) {
		buff = (data + index);
		// send the bytes
		while (check_cts_pin() == OK_TO_SEND) {
			sentcount = XUartLite_Send(&UartLite, buff, numbytes);
			if (sentcount != numbytes) {
				//xil_printf("Transmit failure. %d bytes not sent.\n", numbytes - sentcount);
				return;
			}
			mySleep(10);
		}
		// incremenent master index 
		++index;
	}

	// send the remainder bytes
	if (remain > 0) {
		buff = (data + index);
		while (check_cts_pin() == OK_TO_SEND) {
			sentcount = XUartLite_Send(&UartLite, buff, remain);
			if (sentcount != numbytes) {
				//xil_printf("Transmit failure. %d bytes not sent.\n", numbytes - sentcount);
				return;
			}
		}
		++index;
	}

}
*/

u8 uart_check_received(u8 * data){

	unsigned int ReceivedCount;

	ReceivedCount += XUartLite_Recv(&UartLite, RecvBuffer + ReceivedCount, TEST_BUFFER_SIZE - ReceivedCount);

	if (ReceivedCount > 0) {
		for (int i = 0; i < ReceivedCount; i++) {
			data[i] = RecvBuffer[i];
		}
		return 1;
	}

	return 0;
}
