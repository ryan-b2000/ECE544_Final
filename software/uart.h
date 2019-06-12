/**
 * 	Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 * 	
 * 	ECE 544 Final Project
 * 	Wireless Android Camera
 * 	06/11/2019
 * 	
 * 	uart.h
 * 	
 * 	Function prototypes for the UART implementation.
 */

#include "defines.h"
#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"


#define UART_RX_BUFF_DATA 	1
#define UART_RX_BUFF_EMPTY 	0

/**
 * @brief 	Initialize the UART
 * @details Initializes the peripheral and performs the selftest
 * 
 * @param 	DeviceID is the UART device ID
 */
void uart_init(u16 DeviceID);


/**
 * @brief 	Transmit a number of bytes 
 * @details Writes the buffer to the UART FIFO for transmission
 * 
 * @param 	data is the buffer of the data to send
 * @param 	numbytes the number of bytes in the buffer
 */
void uart_transmit(u8 * data, u8 numbytes);


/**
 * @brief 	Check the UART received buffer for incoming bytes
 * @details Polls the UART receive buffer to see if data has been recieved.
 * 			
 * 
 * @param 	data is filled with data upon valid return
 * @return 	true if data recieved, false otherwise
 */
u8 uart_check_received(u8 * data);
