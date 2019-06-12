#include "processing.h"



/* ---- Base64 Encoding/Decoding Table --- */
static char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";


void frame_collector(uint16_t * buff) {

    u8 count = 0;

    for (int i = 0; i < FRAME_MAX_ADDRESS; i++) {
        OV7670_setPixelWord(i);
        buff[i] = OV7670_getPixelWord();
        //xil_printf("%d ", buff[i]);

        ++count;
        if (count == 8) {
            count = 0;
            //xil_printf("\n");
        }
    }
}



// Periodic pixel collector
u32 pixel_collector(uint16_t * buff, u32 address) {
    
    u8 buff_limit;

    // check if reading a full buffer will overflow the address
   // if (address < FRAME_MAX_ADDRESS) {
  //      buff_limit = SIZE_PIXEL_BUFF;
   // }
   // else {
   //     buff_limit = FRAME_MAX_ADDRESS - address;
   // }

    // collect the pixel words from the camera
    for (int i = 0; i < SIZE_PIXEL_BUFF; i++) {
        OV7670_setPixelWord(address);
        buff[i] = OV7670_getPixelWord();
        address++;
    }

    // return the updated address
    return address;
}


void byte_assembler(uint16_t * in, uint8_t * out) {

	uint8_t i, index;
	uint8_t sizein = SIZE_PIXEL_BUFF;
	uint8_t sizeout = 2 * sizein;

	    // each 12-bit RGB value is split into 2 bytes
	// 8 bytes in, 16 bytes out

	// split the bytes
	for (i = 0; i < sizein; i++) {
		index = i * 2 + 0;  // even bytes are MSBits
		out[index] = (in[i] >> 6) & 0x3F;
	}
	for (i = 0; i < sizein; i++) {
		index = i * 2 + 1; // odd bytes are LSBits
		out[index] = in[i] & 0x3F;
	}

}

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

void set_rts_pin(u8 status) {

	if (status == OK_TO_SEND) {
		XGpio_DiscreteWrite(&GPIOInst0, GPIO_0_OUTPUT_CHANNEL, 1);
	}
	else {
		XGpio_DiscreteWrite(&GPIOInst0, GPIO_0_OUTPUT_CHANNEL, 0);
	}

}

u8 check_cts_pin() {

	// check clear to send signal from NodeMCU
	u32 gpio = XGpio_DiscreteRead(&GPIOInst0, GPIO_0_INPUT_CHANNEL);

	if (gpio == 0)
		return OK_TO_SEND;
	else
		return DO_NOT_SEND;
}
