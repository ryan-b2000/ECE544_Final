/**
 * 	Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 * 	
 * 	ECE 544 Final Project
 * 	Wireless Android Camera
 * 	06/11/2019
 * 	
 * 	
 */

#include "xparameters.h"
#include <stdint.h>
#include "nexys4IO.h"
#include "xintc.h"
#include "xtmrctr.h"
#include "xgpio.h"



/************************** Constant Definitions ****************************/

// Clock frequencies
#define CPU_CLOCK_FREQ_HZ		XPAR_CPU_CORE_CLOCK_FREQ_HZ
#define AXI_CLOCK_FREQ_HZ		XPAR_CPU_M_AXI_DP_FREQ_HZ

// AXI timer parameters
#define AXI_TIMER_DEVICE_ID		XPAR_AXI_TIMER_0_DEVICE_ID
#define AXI_TIMER_BASEADDR		XPAR_AXI_TIMER_0_BASEADDR
#define AXI_TIMER_HIGHADDR		XPAR_AXI_TIMER_0_HIGHADDR
#define TmrCtrNumber			0

// Definitions for peripheral NEXYS4IO
#define NX4IO_DEVICE_ID			XPAR_NEXYS4IO_0_DEVICE_ID
#define NX4IO_BASEADDR			0x44A10000
#define NX4IO_HIGHADDR			0x44A0FFFF

// Fixed Interval timer - 100 MHz input clock, 40KHz output clock
// FIT_COUNT_1MSEC = FIT_CLOCK_FREQ_HZ * .001
#define FIT_IN_CLOCK_FREQ_HZ	CPU_CLOCK_FREQ_HZ
#define FIT_CLOCK_FREQ_HZ		40000
#define FIT_COUNT				(FIT_IN_CLOCK_FREQ_HZ / FIT_CLOCK_FREQ_HZ)
#define FIT_COUNT_1MSEC			40

// GPIO parameters
#define GPIO_0_DEVICE_ID			XPAR_AXI_GPIO_0_DEVICE_ID
#define GPIO_0_OUTPUT_CHANNEL		1
#define GPIO_0_INPUT_CHANNEL		2

// Interrupt Controller parameters
#define INTC_DEVICE_ID			XPAR_INTC_0_DEVICE_ID

// UART parameters
#define UART1_DEVICE_ID			XPAR_UARTLITE_1_DEVICE_ID
#define UART1_BASEADDR			XPAR_UARTLITE_1_BASEADDR


#define CAMERA_BASEADDR			XPAR_CAMERAIP_0_S00_AXI_BASEADDR

// Camera status defines
#define TRANSFER_END 0		// send RTS pin low at the end of the transfer
#define TRANSFER_BEGIN 1	// send RTS pin high at the beginning of the transfer

#define FRAME_MAX_ADDRESS 19200
#define SIZE_PIXEL_BUFF (8)						// number of pixel words in the buffer
#define SIZE_BYTES_BUFF	(2* SIZE_PIXEL_BUFF)	// number of pixel bytes in the buffer


/************************** Variable Definitions ****************************/
// Microblaze peripheral instances

XIntc 		IntrptCtlrInst;				// Interrupt Controller instance
XTmrCtr		AXITimerInst;				// PWM timer instance
XGpio		GPIOInst0;					// GPIO instance


/************************** Function Prototypes ****************************/
void mySleep(u32 micros);
