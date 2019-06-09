// - uart.c

#include "uart.h"
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "defines.h"
#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"


XUartLite UartLite; /* Instance of the UartLite Device */


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

	xil_printf("Uart initialized successfully.\n");
	return;
}

void uart_transmit(u8 * data, u8 numbytes) {

	u32 sentcount;
	/*
	 * Send the buffer through the UartLite waiting til the data can be sent
	 * (block), if the specified number of bytes was not sent successfully,
	 * then an error occurred.
	 */
	sentcount = XUartLite_Send(&UartLite, data, numbytes);
	if (sentcount != numbytes) {
		xil_printf("Transmit failure. %d bytes not sent.\n", numbytes - sentcount);
		return;
	}

}
