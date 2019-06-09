// - uart.h
#include "defines.h"
#include "platform.h"
#include "xparameters.h"
#include "xuartlite.h"

void uart_init(u16 DeviceID);

/**
 * @brief Transmit the data buffer via the UART
 * @details Data duffer should be 76 bytes
 * 
 * @param data [description]
 */
void uart_transmit(u8 * data, u8 numbytes);
