// spi.c

#include "spi.h"


#define BUFFER_SIZE	12

static XSpi XSpi_Inst;

static uint8_t ReadBuffer[BUFFER_SIZE];
static uint8_t WriteBuffer[BUFFER_SIZE];
static volatile uint8_t TransferStatus;


/**
 * @brief Initialize the SPI Peripheral
 * @details [long description]
 */
void spi_init() {

	u8 i;
	int status;
	XSpi_Config * ConfigPtr;	/* Pointer to Configuration data */


	// Check if the device exists and get the configuration info
	ConfigPtr = XSpi_LookupConfig(SPI_DEVICE_ID);
	if (ConfigPtr == NULL) {
		xil_printf("No SPI device found.\n");
		return;
		//return XST_DEVICE_NOT_FOUND;
	}

	// Initialize the SPI device
	status = XSpi_CfgInitialize(&XSpi_Inst, ConfigPtr, ConfigPtr->BaseAddress);
	if (status != XST_SUCCESS) {
		xil_printf("SPI initialization failure.\n");
		return;
		//return XST_FAILURE;
	}

	// Perform self-test to check the device is functional
	status = XSpi_SelfTest(&XSpi_Inst);
	if (status != XST_SUCCESS) {
		xil_printf("SPI self-test failed.\n");
		return;
		//return XST_FAILURE;
	}

	// Connect SPI driver to interrupt subsystem so interrupts can occur
	status = SetupInterruptSystem(&XSpi_Inst);
	if (status != XST_SUCCESS) {
		xil_printf("Unable to connect to interrupt system.\n");
		return;
	}

	// Setup the handler for the SPI to handle the interrupts
	//XSpi_SetSXSpi_InsttatusHandler(XSpi_Inst, XSpi_Inst, (XSpi_statusHandler)SpiHandler);

	// Set the SPI device as a slave and set the clock polarity and phase
	status = XSpi_SetOptions(&XSpi_Inst, XSP_CLK_PHASE_1_OPTION | XSP_CLK_ACTIVE_LOW_OPTION);
	if (status != XST_SUCCESS) {
		xil_printf("Unable to configure SPI as slave.\n");
		return;
	}

	// Start the SPI Peripheral
	//XSpi_Start(SpiInstancePtr);

	/*
	 * Enable the DTR half-empty interrupt while transfering more than
	 * FIFO_DEPTH number of bytes in slave mode, so that the Tx FIFO
	 * is never empty during a transfer. If the Tx FIFO is empty during
	 * a transfer, it results in master receiving invalid data.
	 */
	XSpi_IntrEnable(&XSpi_Inst, XSP_INTR_TX_HALF_EMPTY_MASK);

	// Set up the data to transmit as the slave when master starts sending
	for (i = 0; i < BUFFER_SIZE; i++) {
		WriteBuffer[i] = i;
		ReadBuffer[i] = 0;
	}

	//Status = XSpi_Transfer(&XSpi_Inst, WriteBuffer, ReadBuffer, BUFFER_SIZE);
	if (status != XST_SUCCESS) {
		xil_printf("Error setting up data to transfer.\n");
		return;
	}

	// set the status that we are waiting for a transfer from master
	TransferStatus = TRANSFER_IDLE;


	xil_printf("SPI initialized and started successfully.\n");
}


/**
 * @brief	Poll the transfer status variable to see if we have gotten new data from master
 * @details Interrupt will set the flag and main picks it up and processes the data
 * @return 	the current transfer status
 */
uint8_t XSpi_GetTransferStatus() {
	return TransferStatus;
}

/**
 * @brief 	Clear the transfer interrupt flag from main after servicing the interrupt
 * @details ISR sets the flag and main clears it after getting the message
 * 
 * @param 	status the new status of the TransferStatus
 */
void XSpi_ClearTransferStatus() {
	TransferStatus = TRANSFER_IDLE;
}

/****************************************************************************/
/**
*
* This function setups the interrupt system such that interrupts can occur
* for the SPI driver. This function is application specific since the actual
* system may or may not have an interrupt controller. The SPI device could
* be directly connected to a processor without an interrupt controller.  The
* user should modify this function to fit the application.
*
* @param	SpiInstance contains a pointer to the instance of the XSpi
* 		component which is going to be connected to the interrupt
*		controller.
*
* @return	XST_SUCCESS if successful, else XST_FAILURE.
*
* @note		None.
*
****************************************************************************/
static int SetupInterruptSystem(XSpi *SpiInstance)
{
	int status;

	// Initialize the interrupt controller 
	status = XIntc_Initialize(&IntrptCtlrInst, INTC_DEVICE_ID);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect a device driver handler that will be called when an interrupt
	 * for the device occurs, the device driver handler performs the
	 * specific interrupt processing for the device.
	 */
	status = XIntc_Connect(	&IntrptCtlrInst,
							SPI_IRPT_INTR, 
							(XInterruptHandler)XSpi_InterruptHandler,
							(void *)SpiInstance);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Start the interrupt controller such that interrupts are enabled for
	 * all devices that cause interrupts, specific real mode so that the SPI
	 * can cause interrupts through the interrupt controller.
	 */
	status = XIntc_Start(&IntrptCtlrInst, XIN_REAL_MODE);
	if (status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	// Enable the interrupt for the SPI
	XIntc_Enable(&IntrptCtlrInst, SPI_IRPT_INTR);

	// Initialize the exception table
	Xil_ExceptionInit();

	// Register the interrupt controller handler with the exception table
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
								(Xil_ExceptionHandler)XIntc_InterruptHandler,
								&IntrptCtlrInst);

	// Enable non-critical exceptions
	Xil_ExceptionEnable();

	return XST_SUCCESS;
}

/******************************************************************************/
/**
*
* This function is the handler which performs processing for the SPI driver. It
* is called from an interrupt context such that the amount of processing to be
* performed should be minimized. This handler provides an example of how to
* handle SPI interrupts but is application specific.
*
* @param 	CallBackRef is a reference passed to the handler.
* @param	statusEvent is the status of the SPI.
* @param	ByteCount is the number of bytes transferred.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void SpiHandler(void *CallBackRef, u32 statusEvent, unsigned int ByteCount) {
	
	if (statusEvent == XST_SPI_TRANSFER_DONE) {
		
		// indicate to main that we have received new data from NodeMCU
		TransferStatus = TRUE;
	}
}
