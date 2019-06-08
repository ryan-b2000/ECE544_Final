// testing.c
#include "testing.h"

/************************ TEST FUNCTIONS ************************************/
void MainTest() {

	int timestamp;

	// TEST 1 - Test the LD15..LD0 on the Nexys4
	RunTest1();
	// TEST 2 - Test RGB1 (LD16) and RGB2 (LD17) on the Nexys4
	RunTest2();
	// TEST 3 - test the seven segment display banks
	RunTest3();
	// TEST 4 - test the rotary encoder (PmodENC) and display (PmodOLEDrgb)
	RunTest4();

	// TEST 5 - test the switches and pushbuttons
	// We will do this in a busy-wait loop
	// pressing BTN_C (the center button will
	// cause the loop to terminate
	timestamp = 0;

	xil_printf("Starting Test 5...the buttons and switch test\n");
	xil_printf("Press the center pushbutton to exit\n");

	// blank the display digits and turn off the decimal points
	NX410_SSEG_setAllDigits(SSEGLO, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_BLANK, CC_BLANK, CC_BLANK, DP_NONE);
	// loop the test until the user presses the center button
	while (1)
	{
		// Run an iteration of the test
		RunTest5();
		// check whether the center button is pressed.  If it is then
		// exit the loop.
		if (NX4IO_isPressed(BTNC))
		{
			// show the timestamp on the seven segment display and quit the loop
			NX4IO_SSEG_putU32Dec((uint32_t) timestamp, true);
			break;
		}
		else
		{
			// increment the timestamp and delay 100 msecs
			timestamp += 100;
			usleep(100 * 1000);
		}
	}

	// announce that we're done
	xil_printf("\nThat's All Folks!\n\n");
	

	usleep(5000 * 1000);
	
	// clear the displays and power down the pmodOLEDrbg
	NX410_SSEG_setAllDigits(SSEGHI, CC_BLANK, CC_B, CC_LCY, CC_E, DP_NONE);
	NX410_SSEG_setAllDigits(SSEGLO, CC_B, CC_LCY, CC_E, CC_BLANK, DP_NONE);

}
/****************************************************************************/
/**
* Test 1 - Test the LEDS (LD15..LD0)
*
* Checks the functionality of the LEDs API with some constant patterns and
* a sliding patter.  Determine Pass/Fail by observing the LEDs on the Nexys4
*
* @param	*NONE*
*
* @return	*NONE*
*
*****************************************************************************/
void RunTest1(void)
{
	uint16_t ledvalue;

	xil_printf("Starting Test 1...the LED test\n");
	// test the LEDS (LD15..LD0) with some constant patterns
	NX4IO_setLEDs(0x00005555);
	usleep(1000 * 1000);
	NX4IO_setLEDs(0x0000AAAA);
	usleep(1000 * 1000);
	NX4IO_setLEDs(0x0000FF00);
	usleep(1000 * 1000);
	NX4IO_setLEDs(0x000000FF);
	usleep(1000 * 1000);

	// shift a 1 through all of the leds
	ledvalue = 0x0001;
	do
	{
		NX4IO_setLEDs(ledvalue);
		usleep(500 * 1000);
		ledvalue = ledvalue << 1;
	} while (ledvalue != 0);
	return;
}


/****************************************************************************/
/**
* Test 2 - Test the RGB LEDS (LD17..LD16)
*
* Checks the functionality of the RGB LEDs API with a fixed duty cycle.
* Determine Pass/Fail by observing the RGB LEDs on the Nexys4.
*
* @param	*NONE*
*
* @return	*NONE*
*
*****************************************************************************/
void RunTest2(void)
{
	// Test the RGB LEDS (LD17..LD16)
	xil_printf("Starting Test 2...the RGB LED test\n");

	// For RGB1 turn on only the blue LED (e.g. Red and Green duty cycles
	// are set to 0 but enable all three PWM channels
	NX4IO_RGBLED_setChnlEn(RGB1, true, true, true);
	NX4IO_RGBLED_setDutyCycle(RGB1, 0, 0, 16);
	usleep(1500 * 1000);

	// For RGB2, only write a non-zero duty cycle to the green channel
	NX4IO_RGBLED_setChnlEn(RGB2, true, true, true);
	NX4IO_RGBLED_setDutyCycle(RGB2, 0, 32, 0);
	usleep(1500 * 1000);

	// Next make RGB1 red. This time we'll only enable the red PWM channel
	NX4IO_RGBLED_setChnlEn(RGB1, true, false, false);
	NX4IO_RGBLED_setDutyCycle(RGB1, 64, 64, 64);
	usleep(1500 * 1000);

	// Next make RGB2 BRIGHTpurple-ish by only changing the duty cycle
	NX4IO_RGBLED_setDutyCycle(RGB2, 255, 255, 255);
	usleep(1500 * 1000);

	// Finish by turning the both LEDs off
	// We'll do this by disabling all of the channels without changing
	// the duty cycles
	NX4IO_RGBLED_setDutyCycle(RGB1, 0, 0, 0);
	NX4IO_RGBLED_setDutyCycle(RGB2, 0, 0, 0);

	return;
}

/****************************************************************************/
/**
* Test 3 - Test the seven segment display
*
* Checks the seven segment display by displaying DEADBEEF and lighting all of
* the decimal points. Determine Pass/Fail by observing the seven segment
* display on the Nexys4.
*
* @param	*NONE*
*
* @return	*NONE*
*
*****************************************************************************/
void RunTest3(void)
{
	xil_printf("Starting Test 3...The seven segment display test\n");

	NX4IO_SSEG_putU32Hex(0xBEEFDEAD);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT7, true);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT6, true);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT5, true);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT4, true);
	usleep(2500 * 1000);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT7, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT6, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT5, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT4, false);

	NX4IO_SSEG_putU32Hex(0xDEADBEEF);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT3, true);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT2, true);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT1, true);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT0, true);
	usleep(2500 * 1000);
	return;
}


/****************************************************************************/
/**
* Test 4 - Test the PmodENC and PmodOLEDrgb
*
* The rotary encoder portion of this test is taken from the Digilent PmodENC driver example
*
* Performs some basic tests on the PmodENC and PmodOLEDrgb.  Includes the following tests
* 	1.	check the rotary encoder by displaying the rotary encoder
* 		count in decimal and hex on the LCD display.  Rotate the knob
* 		to change the values up or down.  The pushbuttons can be used
* 		as follows:
* 			o 	press the rotary encoder pushbutton to exit
* 			o 	press BtnUp to clear the count
*
*	6.	display the string "357#&CFsw" on the LCD display.  These values
* 		were chosen to check that the bit order is correct.  The screen will
* 		clear in about 5 seconds.
* 	7.	display "Looks Good" on the display.  The screen will clear
* 		in about 5 seconds.
*
*
* @param	*NONE*
*
* @return	*NONE*
*
*****************************************************************************/
void RunTest4(void)
{
	//u32 state, laststate; //comparing current and previous state to detect edges on GPIO pins.
	//int ticks = 0, lastticks = 1;
	//char s[] = " End Test 4 ";

	xil_printf("Starting Test 4...The PmodOLEDrgb and PmodENC Test\n");
	xil_printf("Turn PmodENC shaft.  Rotary Encoder count is displayed\n");
	xil_printf("Press BTNUP to clear the count");
	xil_printf("Press Rotary encoder shaft or BTNC to exit\n");

	// turn off all of the decimal points
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT7, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT6, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT5, false);
	NX4IO_SSEG_setDecPt(SSEGHI, DIGIT4, false);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT3, false);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT2, false);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT1, false);
	NX4IO_SSEG_setDecPt(SSEGLO, DIGIT0, false);


	return;
}



/****************************************************************************/
/**
* Test 5 - Test the pushbuttons and switches
*
* Copies the slide switch values to LEDs and the pushbuttons to the decimal
* points in SSEGLO.  Also shows shows the value of the switches on SSEGLO.
* Doing this not only tests the putU16HEX() function but also lets the user
* try all of the character codes (they are displayed on DIGIT7. Determine
* Pass/Fail by flipping switches and pressing
* buttons and seeing if the results are reflected in the LEDs and decimal points
*
* @param	*NONE*
*
* @return	*NONE*
*
* @note
* This function does a single iteration. It should be inclosed in a loop
* if you want to repeat the test
*
*****************************************************************************/
void RunTest5()
{
	uint16_t ledvalue;
	uint8_t  btnvalue;
	uint32_t regvalue;
	uint32_t ssegreg;

	// read the switches and write them to the LEDs and SSEGLO
	ledvalue = NX4IO_getSwitches();
	NX4IO_setLEDs(ledvalue);
	NX4IO_SSEG_putU16Hex(SSEGLO, ledvalue);

	// write sw[4:0] as a character code to digit 7 so we can
	// check that all of the characters are displayed correctly
	NX4IO_SSEG_setDigit(SSEGHI, DIGIT7, (ledvalue & 0x1F));

	// read the buttons and write them to the decimal points on SSEGHI
	// use the raw get and put functions for the seven segment display
	// to test them and to keep the functionality simple.  We want to
	// ignore the center button so mask that out while we're at it.
	btnvalue = NX4IO_getBtns() & 0x01F;
	ssegreg = NX4IO_SSEG_getSSEG_DATA(SSEGHI);

	// shift the button value to bits 27:24 of the SSEG_DATA register
	// these are the bits that light the decimal points.
	regvalue = ssegreg & ~NEXYS4IO_SSEG_DECPTS_MASK;
	regvalue  |=  btnvalue << 24;

	// write the SSEG_DATA register with the new decimal point values
	NX4IO_SSEG_setSSEG_DATA(SSEGHI, regvalue);
	return;
}
