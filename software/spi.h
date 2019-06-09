// spi.h

#include "xparameters.h"
#include "defines.h"
#include "xspi.h"

#define SPI_DEVICE_ID		XPAR_AXI_QUAD_SPI_0_DEVICE_ID
#define SPI_BASEADDR		XPAR_AXI_QUAD_SPI_0_BASEADDR
#define SPI_IRPT_INTR		XPAR_INTC_0_SPI_0_VEC_ID

#define TRANSFER_COMPLETE 0
#define TRANSFER_IDLE 1

void spi_init();


/**
 * @brief	Poll the transfer status variable to see if we have gotten new data from master
 * @details Interrupt will set the flag and main picks it up and processes the data
 * 
 * @return 	the current transfer status
 */
uint8_t XSpi_GetTransferStatus();


/**
 * @brief 	Clear the transfer interrupt flag from main after servicing the interrupt
 * @details ISR sets the flag and main clears it after getting the message
 * 
 */
void XSpi_ClearTransferStatus();


void spi_transmit_buff(u8 * data, u8 count);


static int SetupInterruptSystem(XSpi *SpiInstance);


static void SpiHandler(void *CallBackRef, u32 statusEvent, unsigned int ByteCount);
