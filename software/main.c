// NEXYS4IO IP TEST

#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include "platform.h"
#include "xparameters.h"
#include "xstatus.h"
#include "microblaze_sleep.h"
#include "nexys4IO.h"
#include "xintc.h"
#include "xtmrctr.h"
#include "xgpio.h"
#include "defines.h"
#include "spi.h"
#include "uart.h"

#include "testing.h"

/************************** Variable Definitions ****************************/
// Microblaze peripheral instances
uint64_t 	timestamp = 0L;
XIntc 		IntrptCtlrInst;				// Interrupt Controller instance
XTmrCtr		AXITimerInst;				// PWM timer instance
XGpio		GPIOInst0;					// GPIO instance


volatile u32			gpio_in;			// GPIO input port





/************************** MAIN PROGRAM ************************************/
int main(void)
{
    init_platform();

    u8 count;
    u8 data [8];

    // initialize the peripherals
	if (do_init() != XST_SUCCESS)
	{
		exit(1);
	}

	microblaze_enable_interrupts();


	


	// cleanup and exit
    cleanup_platform();
    exit(0);
}

/**
 * 	Sleep for N microseconds
 */
void mySleep (u32 micros) {

	u32 count = micros * 1000;

	for (count; count > 0; count--)
		;
}