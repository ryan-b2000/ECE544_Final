// - uart.h
#include "defines.h"
#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"

void uart_init(u16 DeviceID);

void uart_transmit(u8 * data, u8 numbytes);
