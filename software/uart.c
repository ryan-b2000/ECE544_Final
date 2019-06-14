/**
 * 	Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 * 	
 * 	ECE 544 Final Project
 * 	Wireless Android Camera
 * 	06/11/2019
 * 	
 * 	uart.c
 * 	
 * 	Implementation for the UART interface.
 */

#include "uart.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "defines.h"
#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"
#include "processing.h"


/************************** Constant Definitions ****************************/
#define UART_BUFFER_SIZE 16

/************************** Constant Definitions ****************************/
XUartLite UartLite; 						// Instance of the UartLite Device
static u8 RecvBuffer[UART_BUFFER_SIZE]; 	// Buffer for Receiving Data


/**
 * @brief 	Initialize the UART
 * @details Initializes the peripheral and performs the selftest
 * 
 * @param 	DeviceID is the UART device ID
 */
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
 * @brief 	Transmit a number of bytes 
 * @details Writes the buffer to the UART FIFO for transmission
 * 
 * @param 	data is the buffer of the data to send
 * @param 	numbytes the number of bytes in the buffer
 */
void uart_transmit(u8 * data, u8 numbytes) {


	u32 sentcount;

	sentcount = XUartLite_Send(&UartLite, data, numbytes);
	if (sentcount != numbytes) {
		xil_printf("Transmit failure. %d bytes not sent.\n", numbytes - sentcount);
	}
}


/**
 * @brief 	Check the UART received buffer for incoming bytes
 * @details Polls the UART receive buffer to see if data has been recieved.
 * 			
 * 
 * @param 	data is filled with data upon valid return
 * @return 	true if data recieved, false otherwise
 */
u8 uart_check_received(u8 * data){

	unsigned int ReceivedCount = 0;

	ReceivedCount += XUartLite_Recv(&UartLite, RecvBuffer + ReceivedCount, TEST_BUFFER_SIZE - ReceivedCount);

	if (ReceivedCount > 0) {
		for (int i = 0; i < ReceivedCount; i++) {
			data[i] = RecvBuffer[i];
		}
		return UART_RX_BUFF_DATA;
	}

	return UART_RX_BUFF_EMPTY;
}
