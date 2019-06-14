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
/**
 * @brief Initialize the system peripherals
 * @details None
 * @return XST_SUCCESS or FAILURE
 */
int	 do_init(void);											


/**
 * @brief Initializes the AXI Timer
 * @details None
 * @return XST_SUCCESS or FAILURE
 */
int AXI_Timer_initialize(void);

/**
 * @brief Initialize the camera peripheral
 * @details Writes commands to the camera interface to set up the camera registers.
 */
void init_camera();
