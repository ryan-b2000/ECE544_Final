

/***************************** Include Files *******************************/
#include "Pmod_HB3.h"


/************************** Variable Definitions ***************************/
static u32 HB3_base_address;


/************************** Function Definitions ***************************/

/**
 * @brief 		Initializes the base address of the HB3 Pmod
 * @details 
 * 
 * @param base_address established by the main program
 */
void HB3_initialize(u32 base_address) {

	HB3_base_address = base_address;
}


/**
 * @brief Reads the control register and returns its value.
 * @details 
 * @return the current state of the control register
 */
u8 HB3_read_control_reg() {

	return (u8) PMOD_HB3_IP_mReadReg(HB3_base_address, PMOD_HB3_REG_CNTRL);
}


/**
 * @brief  		Reads the current value of the duty cycle register
 * @details 
 * @return 
 */
u8 HB3_read_dutycyle_reg() {

	return (u8) PMOD_HB3_IP_mReadReg(HB3_base_address, PMOD_HB3_REG_DUTY_CYCLE);
}



/**
 * @brief Set the motor direction according to the written value
 * @details Does a read-modify-write on the register and updates
 * 			the motor direction in the control register.
 * 			
 * 			Motor direction can only be changed when the motor is in the off state.
 * 
 * @param dir Write 1 for clockwise, 0 for counterclockwise.
 */
void HB3_set_motor_direction(u8 dir) {

	u32 reg;

	// read the current register state
	reg = PMOD_HB3_IP_mReadReg(HB3_base_address, PMOD_HB3_REG_CNTRL);

	// if motor is ON, then do not update the direction
	if (reg & HB3_REG_CNTRL_BIT_MOTOR)
		return;

	// Bit[1]
	// assert value to write as 0 or 1 and modify register
	if (dir == HB3_MOTOR_DIR_CCW) {
		reg |= HB3_REG_CNTRL_BIT_DIRECTION;			// turn motor on by writing a 1
	}
	else {
		reg &= ~HB3_REG_CNTRL_BIT_DIRECTION;	// turn motor off by writing a 0
	}

	// write to the register
	PMOD_HB3_IP_mWriteReg(HB3_base_address, PMOD_HB3_REG_CNTRL, reg);

	return;
}


/**
 * @brief Turn motor ON/OFF
 * @details Does a read-modify-write on the control register. Turns the motor 
 * 			on/off by writing to the on/off bit of the control register. Any 
 * 			value greater than 1 will be asserted to 1 and turns the motor on.
 * 	
 * @param state is the new state of the motor. 1 = ON, 0 = OFF
 */
void HB3_set_motor_state(u8 state) {

	u32 reg;

	// read the current register state
	reg = PMOD_HB3_IP_mReadReg(HB3_base_address, PMOD_HB3_REG_CNTRL);

	// Bit [0]
	// Motor control is Control Reg [0]
	if (state == HB3_MOTOR_ON)
		reg |= HB3_REG_CNTRL_BIT_MOTOR;
	else
		reg &= ~HB3_REG_CNTRL_BIT_MOTOR;

	PMOD_HB3_IP_mWriteReg(HB3_base_address, PMOD_HB3_REG_CNTRL, reg);

}


/**
 *	Set the PWM duty cycle.
 *
 *	@param   pwm:	The PWM duty cycle to set. Value can be 0 - 100. Values greater
					than 100 will be set to 100. 100 is equivalent to 50/50 duty cycle.
 *
 *	@return
 *
 */
void HB3_set_duty_cycle(u8 pwm) {

	// Check that the value written is not greater than 100
	// Values greater than 100 are set to 100
	if (pwm > 100)
		pwm = 100;

	PMOD_HB3_IP_mWriteReg(HB3_base_address, PMOD_HB3_REG_DUTY_CYCLE, (u32)pwm);
	return;
}


/**
 *
 *	Return the current RPM reading from the HW.
 *
 *	@param   
 *
 *	@return		The current RPM reading from HB3 IP
 *
 */
u32 HB3_get_RPM_reading() {
	u32 rpm;

	// read the raw RPM reading
	rpm = PMOD_HB3_IP_mReadReg(HB3_base_address, PMOD_HB3_REG_RPM);

	return rpm; 
}


/**
 * @brief Generic read from register
 * @details reads current value from the given register
 * 
 * @param reg is the register number 0, 1, 2, 3
 * @return the value read from the register
 */
u32 HB3_read_register(u8 reg) {

	// check that the register is valid
	//if (reg == PMOD_HB3_REG_CNTRL || reg == PMOD_HB3_REG_DUTY_CYCLE || reg == PMOD_HB3_REG_RPM)
	return PMOD_HB3_IP_mReadReg(HB3_base_address, reg);

	//return 0xFF;
}


/**
 * @brief Generic write to register
 * @details writes to the given register
 * 
 * @param reg the register to write to 
 * @param val the value to write to the register
 */
void HB3_write_register(u8 reg, u32 val) {

	// check that the register is valid
	//if (reg != PMOD_HB3_REG_CNTRL || reg != PMOD_HB3_REG_DUTY_CYCLE || reg != PMOD_HB3_REG_RPM)
	//	return;

	PMOD_HB3_IP_mWriteReg(HB3_base_address, reg, val);
	
	return;
}