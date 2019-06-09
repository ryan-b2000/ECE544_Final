#include "processing.h"



/* ---- Base64 Encoding/Decoding Table --- */
static char b64[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";


void base64_encoder (uint16_t * in, uint8_t sizein, uint8_t * out, uint8_t sizeout) {

    uint8_t i, index;
    
    
    xil_printf("Input:\n");
    for ( i = 0; i < sizein; i++) {
        xil_printf("%X ", in[i]);
    }


    // split into groups of 6
    for (i = 0; i < sizein; i++) {
        index = i * 2 + 0;  // even bytes are MSBits
        out[index] = (in[i] >> 6) & 0x3F;
    }
    for (i = 0; i < sizein; i++) {
        index = i * 2 + 1; // odd bytes are LSBits
        out[index] = in[i] & 0x3F;
    }

    xil_printf("\nSplit...\n");
    for (i = 0; i < sizeout; i++) {
        xil_printf("%X ", out[i]);
    }

    // convert to ascii 
    xil_printf("\nConvert to ascii....\n");
    for (i = 0; i < sizeout; i++) {
        out[i] = b64[out[i]];
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
