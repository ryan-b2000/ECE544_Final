/**
 * 	Ryan Bentz, Ryan Bornhorst, Andrew Capatina
 * 	
 * 	ECE 544 Final Project
 * 	Wireless Android Camera
 * 	06/11/2019
 * 	
 * 	init.h
 * 	
 * 	This file contains the function prototypes for the initialization functions.
 */

#include "xparameters.h"
#include "defines.h"
#include <stdint.h>
#include "CameraIP.h"
#include "uart.h"

/************************** Function Prototypes *****************************/
int	 do_init(void);											// initialize system

int AXI_Timer_initialize(void);

void init_camera();
