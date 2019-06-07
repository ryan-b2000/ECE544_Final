// - pmod_hb3.sv

/*	Ram Bhattarai and Ryan Bentz
	ECE 544
	Project 2
	5/1/2019

	This is the top level module for the Pmod HB3 Peripheral that handles
	the interface for the application program.
*/
	
`define		LOW		(1'b0)
`define		HIGH	(1'b1)	
	
module pmod_hb3 (	input logic 			resetN,
					input logic 			clk,
					// AXI Registers
					input logic 	[7:0] 	reg_control,
					input logic 	[7:0]	reg_duty_cycle,
					output logic 	[31:0] 	reg_rpm,
					// External signals
					input logic 			pinA,
					output logic 			pwm,
					output logic 			dir_out,
					output logic            debug_int1s
			         );
	
	// Assign pinB input to the tachometer as always LOW since we only need one pin
	logic pinB;
	assign pinB = `LOW;

	logic synch_1, synch_2;

	// 2-FF Synchronizer on encoder input
	always_ff @ (posedge clk) begin
		synch_1 <= pinA;
		synch_2	<= synch_1;
	end

	// Instantiation of the motor control which drives the PWM signal to the motor
	// based on the duty cycle provided on the 8-bit duty cycle bus
	motor_control mc (	.resetN(resetN), 
						.refclk(clk), 
						.duty_cycle(reg_duty_cycle),
						.control(reg_control),			// direction setting to module
						.dir_out(dir_out),			// direction signal output to pmod
						.sig_out(pwm));				// pwm signal output to pmod
	
	// Instantiates the tachometer
	tachometer tch (	.resetN(resetN),
						.refclk(clk),
						.pinA(synch_2),			// input pin A waveform from encoder
						.pinB(pinB),			// input pin B waveform from encoder
						.rpm(reg_rpm),
						.debug_int1s(debug_int1s));				// output of RPM calculation
	
endmodule