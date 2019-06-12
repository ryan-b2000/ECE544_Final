/**
 * 	Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 * 	
 * 	ECE 544 Final Project
 * 	Wireless Android Camera
 * 	06/11/2019
 * 	
 * 	
 */

#include "stdint.h"
#include "stdio.h"
#include "defines.h"
#include "CameraIP.h"

#define OK_TO_SEND 0
#define DO_NOT_SEND 1


/**
 * @brief 	Check if OK to send more data 
 * @details NodeMCU toggles Clear To Send pin when it is ready for another transfer
 * @return 	OK_TO_SEND if NodeMCU is ready for next transfer
 */
u8 check_cts_pin();


/**
 * @brief 	Read pixels from the OV7670
 * @details Fill the buffer with pixel words from the OV7670
 * 
 * @param 	buff is filled with the new pixel words
 * @param 	address the address of where to start reading
 * 
 * @return 	the next address to read from when the buffer is filled
 */
u32 pixel_collector(uint16_t * buff, u32 address);


/**
 * @brief 	Convert the pixel words to base64 encoded bytes
 * @details Take in the buffer of pixel words. Split and encode bytes and assembler
 * 			into the output buffer as ASCII encoded bytes.
 * 
 * @param 	in is the input buffer of pixel words
 * @param 	out is the buffer of ASCII encoded bits readyu for transmit
 */
void base64_encoder (uint16_t * in, uint8_t * out);


/**
 * @brief 	Set the RTS pin for NodeMCU
 * @details Setting the RTS pin lets the NodeMCU know when we are starting and stopping
 * 			an image transfer so it can let the Android app know.
 * 		
 * @param 	status is the new state of what to set the pin to
 */
void set_rts_pin(u8 state);
