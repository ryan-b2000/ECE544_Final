// spi.c

#include "spi.h"

#define BUFFER_SIZE	12

XSpi XSpi_Inst;

u8 ReadBuffer[BUFFER_SIZE];
u8 WriteBuffer[BUFFER_SIZE];


void spi_init() {

	int Status;
	XSpi_Config * ConfigPtr;	/* Pointer to Configuration data */


	// Check if the device exists and get the configuration info
	ConfigPtr = XSpi_LookupConfig(SPI_DEVICE_ID);
	if (ConfigPtr == NULL) {
		xil_printf("No SPI device found.\n");
		return;
		//return XST_DEVICE_NOT_FOUND;
	}

	// Initialize the SPI device
	Status = XSpi_CfgInitialize(&XSpi_Inst, ConfigPtr, ConfigPtr->BaseAddress);
	if (Status != XST_SUCCESS) {
		xil_printf("SPI initialization failure.\n");
		return;
		//return XST_FAILURE;
	}

	// Perform self-test to check the device is functional
	Status = XSpi_SelfTest(&XSpi_Inst);
	if (Status != XST_SUCCESS) {
		xil_printf("SPI self-test failed.\n");
		return;
		//return XST_FAILURE;
	}

	/*
	 * Run loopback test only in case of standard SPI mode.
	 */
	//if (SpiInstancePtr->SpiMode != XSP_STANDARD_MODE) {
	//	return XST_SUCCESS;
	//}


	// Configure Master Mode and enable loopback mode
	Status = XSpi_SetOptions(&XSpi_Inst, XSP_MASTER_OPTION | XSP_LOOPBACK_OPTION); //
	if (Status != XST_SUCCESS) {
		xil_printf("Error configuring options.\n");
		return;
		//return XST_FAILURE;
	}

	XSpi_Enable(&XSpi_Inst);

	/*
	 * Start the SPI driver so that the device is enabled.
	 */
	XSpi_Start(&XSpi_Inst);

	/*
	 * Disable Global interrupt to use polled mode operation
	 */
	XSpi_IntrGlobalDisable(&XSpi_Inst);


	xil_printf("SPI initialized and started successfully.\n");
}


void spi_transmit_buff(u8 * data, u8 count) {

	u8 i;

	// copy data to buffer up to buffsize
	if (count > BUFFER_SIZE)
		count = BUFFER_SIZE;

	for (i = 0; i < count; ++i)
		WriteBuffer[i] = data[i];


	XSpi_SetSlaveSelect(&XSpi_Inst, 0x1);
	XSpi_Transfer(&XSpi_Inst, WriteBuffer, ReadBuffer, count);
	XSpi_SetSlaveSelect(&XSpi_Inst, 0x0);
}






