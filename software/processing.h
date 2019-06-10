#include "stdint.h"
#include "stdio.h"
#include "defines.h"
#include "CameraIP.h"

#define OK_TO_SEND 0
#define DO_NOT_SEND 1

u8 check_cts_pin();


u32 pixel_collector(uint16_t * buff, u32 address);


void base64_encoder (uint16_t * in, uint8_t sizein, uint8_t * out, uint8_t sizeout);
