// spi.h

#include "xspi.h"

#define SPI_DEVICE_ID		XPAR_AXI_QUAD_SPI_0_DEVICE_ID
#define SPI_BASEADDR		XPAR_AXI_QUAD_SPI_0_BASEADDR


void spi_init();

void spi_transmit_buff(u8 * data, u8 count);
