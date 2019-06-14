/**
 * 	Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 * 	
 * 	ECE 544 Final Project
 * 	Wireless Android Camera
 * 	06/11/2019
 * 	
 * 	init.c
 * 	
 * 	This file contains the implementation for the initialization functions.
 */

#include "init.h"


/************************** Function Prototypes *****************************/
/**
 * @brief Initialize the system peripherals
 * @details None
 * @return XST_SUCCESS or FAILURE
 */
int do_init(void)
{
	uint32_t status;	// status from Xilinx Lib calls

	// initialize the Nexys4 driver and (some of)the devices
	status = (uint32_t) NX4IO_initialize(NX4IO_BASEADDR);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// initialize the GPIO instances
	status = XGpio_Initialize(&GPIOInst0, GPIO_0_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// 0 = output, 1 = input
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_OUTPUT_CHANNEL, 0x0);
	XGpio_SetDataDirection(&GPIOInst0, GPIO_0_INPUT_CHANNEL, 0x1);

	// initialize the AXI timer
	status = AXI_Timer_initialize();
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// initialize the interrupt controller
	status = XIntc_Initialize(&IntrptCtlrInst, INTC_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
	   return XST_FAILURE;
	}
	
	// start the interrupt controller such that interrupts are enabled for
	// all devices that cause interrupts.
	status = XIntc_Start(&IntrptCtlrInst, XIN_REAL_MODE);
	if (status != XST_SUCCESS)
	{
		return XST_FAILURE;
	}

	// initialize the UART
	uart_init(UART1_DEVICE_ID);

	// initialize the camera
	init_camera();

	return XST_SUCCESS;
}


/**
 * @brief Initializes the AXI Timer
 * @details None
 * @return XST_SUCCESS or FAILURE
 */
int AXI_Timer_initialize(void){

	uint32_t status;				// status from Xilinx Lib calls
	u32		ctlsts;		// control/status register or mask

	status = XTmrCtr_Initialize(&AXITimerInst,AXI_TIMER_DEVICE_ID);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	status = XTmrCtr_SelfTest(&AXITimerInst, TmrCtrNumber);
		if (status != XST_SUCCESS) {
			return XST_FAILURE;
		}
	ctlsts = XTC_CSR_AUTO_RELOAD_MASK | XTC_CSR_EXT_GENERATE_MASK | XTC_CSR_LOAD_MASK |XTC_CSR_DOWN_COUNT_MASK ;
	XTmrCtr_SetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber,ctlsts);

	//Set the value that is loaded into the timer counter and cause it to be loaded into the timer counter
	XTmrCtr_SetLoadReg(AXI_TIMER_BASEADDR, TmrCtrNumber, 24998);
	XTmrCtr_LoadTimerCounterReg(AXI_TIMER_BASEADDR, TmrCtrNumber);
	ctlsts = XTmrCtr_GetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber);
	ctlsts &= (~XTC_CSR_LOAD_MASK);
	XTmrCtr_SetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber, ctlsts);

	ctlsts = XTmrCtr_GetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber);
	ctlsts |= XTC_CSR_ENABLE_TMR_MASK;
	XTmrCtr_SetControlStatusReg(AXI_TIMER_BASEADDR, TmrCtrNumber, ctlsts);

	XTmrCtr_Enable(AXI_TIMER_BASEADDR, TmrCtrNumber);
	return XST_SUCCESS;

}

/**
 * @brief Camera initialization sequence
 * @details Initialize the camera by writing to the registers through the SBCC bus.
 */
void init_camera() {

	OV7670_initialize(CAMERA_BASEADDR);

	xil_printf("Camera base address set.\n");

	OV7670_setup(0x1280);
	OV7670_setup(0x1280);
	OV7670_setup(0x1204);
	OV7670_setup(0x0c00); // test 0c08
	OV7670_setup(0x1100);
	OV7670_setup(0x3e00);
	OV7670_setup(0x8c00);
	OV7670_setup(0x0400);
	OV7670_setup(0x40d0); // 40d0 or 10
	OV7670_setup(0x3a04);
	OV7670_setup(0x1418); // 1418 or 38
	OV7670_setup(0x4f40);
	OV7670_setup(0x5034);
	OV7670_setup(0x510c);
	OV7670_setup(0x5217);
	OV7670_setup(0x5329);
	OV7670_setup(0x5440);
	OV7670_setup(0x581e);
	OV7670_setup(0x3dc0);
	OV7670_setup(0x1100);
	OV7670_setup(0x1711);
	OV7670_setup(0x1861);
	OV7670_setup(0x32a4);
	OV7670_setup(0x1903);
	OV7670_setup(0x1a7b);
	OV7670_setup(0x030a);

	OV7670_setup(0x1e00);
	OV7670_setup(0x330b);
	OV7670_setup(0x3c78);
	OV7670_setup(0x6900);
	OV7670_setup(0x7410);
	OV7670_setup(0xb084);
	OV7670_setup(0xb10c);
	OV7670_setup(0xb20e);
	OV7670_setup(0xb382);

	OV7670_setup(0x703a);
	OV7670_setup(0x7135);
	OV7670_setup(0x7211);
	OV7670_setup(0x73f0);
	OV7670_setup(0xa202);

	OV7670_setup(0x7a20);
	OV7670_setup(0x7b10);
	OV7670_setup(0x7c1e);
	OV7670_setup(0x7d35);
	OV7670_setup(0x7e5a);
	OV7670_setup(0x7f69);
	OV7670_setup(0x8076);
	OV7670_setup(0x8180);
	OV7670_setup(0x8288);
	OV7670_setup(0x838f);
	OV7670_setup(0x8496);
	OV7670_setup(0x85a3);
	OV7670_setup(0x86af);
	OV7670_setup(0x87c4);
	OV7670_setup(0x88d7);
	OV7670_setup(0x89e8);

	OV7670_setup(0x13e0);
	OV7670_setup(0x0000);
	OV7670_setup(0x1000);
	OV7670_setup(0x0d40);
	OV7670_setup(0x1418);
	OV7670_setup(0xa505);
	OV7670_setup(0xab07);
	OV7670_setup(0x2495);
	OV7670_setup(0x2533);
	OV7670_setup(0x26e3);
	OV7670_setup(0x9f78);
	OV7670_setup(0xa068);
	OV7670_setup(0xa103);
	OV7670_setup(0xa6d8);
	OV7670_setup(0xa7d8);
	OV7670_setup(0xa8f0);
	OV7670_setup(0xa990);
	OV7670_setup(0xaa94);
	OV7670_setup(0x13e5);
	OV7670_setup(0x13e5);
	OV7670_setup(0x13e5);
	OV7670_setup(0xffff);

	xil_printf("Camera initialized successfully.\n");


	}
