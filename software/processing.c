/**
 *  Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 *  
 *  ECE 544 Final Project
 *  Wireless Android Camera
 *  06/11/2019
 *  
 *  
 */

 #include "processing.h"


/* ---- Base64 Encoding/Decoding Table --- */
static char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";



/**
 * @brief   Read pixels from the OV7670
 * @details Fill the buffer with pixel words from the OV7670
 * 
 * @param   buff is filled with the new pixel words
 * @param   address the address of where to start reading
 * 
 * @return  the next address to read from when the buffer is filled
 */
u32 pixel_collector(uint16_t * buff, u32 address) {
    
    u8 buff_limit;

    // collect the pixel words from the camera
    for (int i = 0; i < SIZE_PIXEL_BUFF; i++) {
        OV7670_setPixelWord(address);
        buff[i] = OV7670_getPixelWord();
        address++;
    }

    // return the updated address
    return address;
}


/**
 * @brief   Convert the pixel words to base64 encoded bytes
 * @details Take in the buffer of pixel words. Split and encode bytes and assembler
 *          into the output buffer as ASCII encoded bytes.
 * 
 * @param   in is the input buffer of pixel words
 * @param   out is the buffer of ASCII encoded bits readyu for transmit
 */
void base64_encoder (uint16_t * in, uint8_t * out) {

    uint8_t i, index;
    uint8_t sizein = SIZE_PIXEL_BUFF;
    uint8_t sizeout = 2 * sizein;

    // split into groups of 6
    for (i = 0; i < sizein; i++) {
        index = i * 2 + 0;  // even bytes are MSBits
        out[index] = (in[i] >> 6) & 0x3F;
    }
    for (i = 0; i < sizein; i++) {
        index = i * 2 + 1; // odd bytes are LSBits
        out[index] = in[i] & 0x3F;
    }

    // convert to ascii 
    for (i = 0; i < sizeout; i++) {
        out[i] = b64[out[i]];
    }
}


/**
 * @brief   Set the RTS pin for NodeMCU
 * @details Setting the RTS pin lets the NodeMCU know when we are starting and stopping
 *          an image transfer so it can let the Android app know.
 *      
 * @param   status is the new state of what to set the pin to
 */
void set_rts_pin(u8 status) {

	if (status == OK_TO_SEND) {
		XGpio_DiscreteWrite(&GPIOInst0, GPIO_0_OUTPUT_CHANNEL, 1);
	}
	else {
		XGpio_DiscreteWrite(&GPIOInst0, GPIO_0_OUTPUT_CHANNEL, 0);
	}

}


/**
 * @brief   Check if OK to send more data 
 * @details NodeMCU toggles Clear To Send pin when it is ready for another transfer
 * @return  OK_TO_SEND if NodeMCU is ready for next transfer
 */
u8 check_cts_pin() {

	// check clear to send signal from NodeMCU
	u32 gpio = XGpio_DiscreteRead(&GPIOInst0, GPIO_0_INPUT_CHANNEL);

	if (gpio == 0)
		return OK_TO_SEND;
	else
		return DO_NOT_SEND;
}
