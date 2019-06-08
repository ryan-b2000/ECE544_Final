
#ifndef __PMOD_HB3_IP_H__
#define __PMOD_HB3_IP_H__


/****************** Include Files ********************/
#include "xil_types.h"
#include "xstatus.h"
#include "xil_io.h"

// Register Bits
#define HB3_REG_CNTRL_BIT_MOTOR		(0x1)
#define HB3_REG_CNTRL_BIT_DIRECTION	(0x2)

// Action Defines
#define HB3_MOTOR_ON 			(0x1)
#define HB3_MOTOR_OFF 			(0x0)
#define HB3_MOTOR_DIR_CCW		(0x1)
#define HB3_MOTOR_DIR_CW 		(0x0)

// Register Defines
#define PMOD_HB3_IP_BASE_ADDR	XPAR_PMOD_HB3_IP_0_S00_AXI_BASEADDR
#define PMOD_HB3_REG_CNTRL		PMOD_HB3_IP_S00_AXI_SLV_REG0_OFFSET
#define PMOD_HB3_REG_DUTY_CYCLE	PMOD_HB3_IP_S00_AXI_SLV_REG1_OFFSET
#define PMOD_HB3_REG_RPM		PMOD_HB3_IP_S00_AXI_SLV_REG2_OFFSET
#define PMOD_HB3_REG_RSVD		PMOD_HB3_IP_S00_AXI_SLV_REG3_OFFSET

// Xilinx Defines
#define PMOD_HB3_IP_S00_AXI_SLV_REG0_OFFSET 0
#define PMOD_HB3_IP_S00_AXI_SLV_REG1_OFFSET 4
#define PMOD_HB3_IP_S00_AXI_SLV_REG2_OFFSET 8
#define PMOD_HB3_IP_S00_AXI_SLV_REG3_OFFSET 12

/**************************** Function Prototypes *****************************/

/**
 * @brief 		Initializes the base address of the HB3 Pmod
 * @details 
 * 
 * @param base_address established by the main program
 */
void HB3_initialize(u32 base_address);


/**
 * @brief	Set the motor direction according to the written value
 * @details Does a read-modify-write on the register and updates
 * 			the motor direction in the control register.
 * 			
 * 			Motor direction can only be changed when the motor is in the off state.
 * 
 * @param dir Write 1 for clockwise, 0 for counterclockwise.
 */
void HB3_set_motor_direction(u8 dir);


/**
 * @brief 	Set the motor ON/OFF state according to the written value
 * @details Does a read-modify-write on the register and updates the
 * 			motor on/off state.
 * 
 * @param state 1 for ON, 0 for OFF 
 */
void HB3_set_motor_state(u8 state);


/**
 *	Set the PWM duty cycle.
 *
 *	@param   pwm:	The PWM duty cycle to set. Value can be 0 - 100. Values greater
					than 100 will be set to 100. 100 is equivalent to 50/50 duty cycle.
 *
 *	@return			None
 *
 */
void HB3_set_duty_cycle(u8 pwm);


/**
 *
 *	Return the current RPM reading from the HW.
 *
 *	@param   	None
 *
 *	@return		The current RPM reading from HB3 IP
 *
 */
u32 HB3_get_RPM_reading();



/**
 * @brief Reads the control register and returns its value.
 * @details 
 * @return the current state of the control register
 */
u8 HB3_read_control_reg();


/**
 * @brief  		Reads the current value of the duty cycle register
 * @details 
 * @return 
 */
u8 HB3_read_dutycyle_reg();


/**
 * @brief Generic read from register
 * @details reads current value from the given register
 * 
 * @param reg is the register number 0, 1, 2, 3
 * @return the value read from the register
 */
u32 HB3_read_register(u8 reg);


/**
 * @brief Generic write to register
 * @details writes to the given register
 * 
 * @param reg the register to write to 
 * @param val the value to write to the register
 */
void HB3_write_register(u8 reg, u32 val);


/**************************** Type Definitions *****************************/
/**
 *
 * Write a value to a PMOD_HB3_IP register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the PMOD_HB3_IPdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void PMOD_HB3_IP_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define PMOD_HB3_IP_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))

/**
 *
 * Read a value from a PMOD_HB3_IP register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the PMOD_HB3_IP device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 PMOD_HB3_IP_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define PMOD_HB3_IP_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))

/************************** Function Prototypes ****************************/
/**
 *
 * Run a self-test on the driver/device. Note this may be a destructive test if
 * resets of the device are performed.
 *
 * If the hardware system is not built correctly, this function may never
 * return to the caller.
 *
 * @param   baseaddr_p is the base address of the PMOD_HB3_IP instance to be worked on.
 *
 * @return
 *
 *    - XST_SUCCESS   if all self-test code passed
 *    - XST_FAILURE   if any self-test code failed
 *
 * @note    Caching must be turned off for this function to work.
 * @note    Self test may fail if data memory and device are not on the same bus.
 *
 */
XStatus PMOD_HB3_IP_Reg_SelfTest(void * baseaddr_p);

#endif // __PMOD_HB3_IP_H__
