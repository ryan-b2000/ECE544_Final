// - motor_control.sv

/*	Ram Bhattarai and Ryan Bentz
	ECE 544
	Project 2
	5/1/2019

	Motor Control for HB3 Pmod
	
	Incoming reference clock increments high counter and low counters.
	Each counter counts the ratio of the duty cycle for the output signal.
	
	v5.0	- changed it so that duty high can go up to 100

	v4.0	- Changed it so that motor control overrides output signal
	
*/
	
`define		LOW		(1'b0)
`define		HIGH	(1'b1)	
	
module motor_control (	input logic resetN,
						input logic refclk,
						input logic [7:0] duty_cycle,	// input from main
						input logic [7:0] control,			// input from control register
						output logic dir_out,			// outut signal for the motor direction
						output logic sig_out);			// output signal for the motor PWM
	

	logic output_state = `LOW;
	logic [7:0] count_h, count_l;
	logic [7:0] duty_h, duty_l;
	
	// set the motor direction signal based on the control register bit
	always_comb begin
		if (control[1] == `HIGH)
			dir_out = `HIGH;
		else
			dir_out = `LOW;
	end

	// Handle the output signal duty cycle
	always_ff @ (posedge refclk) begin
		// Handle reset condition
		if (!resetN) begin
		   count_h <= 0;
		   count_l <= 0;
		   duty_h <= 0;
		   duty_l <= 0;    
		   output_state <= `LOW;
		end

		else begin
			// Set duty high and duty low for operational states
			duty_h <= duty_cycle;
			duty_l <= 100 - duty_h; 

			// Check if the duty cycle changed and counts need to be reset
			// If count is suddenly greater than duty count, we need to reset
			if (count_h > duty_h || count_l > duty_l) begin
			   count_h <= 0;
			   count_l <= 0;
			   output_state <= `LOW;
			end
		       
			else begin
				
				// Motor is off state
				if (control[0] == `LOW) begin
					count_h <= count_h;
					count_l <= count_l;
					output_state <= `LOW;
				end
				else begin
					// High portion of the duty cycle
					if (output_state == `HIGH) begin
					    count_l <= 0;
					   if (count_h == duty_h) begin
					       count_h <= 0;
					       output_state = `LOW;
					   end
					   else begin
					       count_h <= count_h + 1;
					       output_state = `HIGH;
					   end
					end
			           
					else if (output_state == `LOW) begin  
						count_h <= 0;
						if (count_l == duty_l) begin
						   count_l <= 0;
						   output_state = `HIGH;
						end
						else begin
						   count_l <= count_l + 1;
						   output_state = `LOW;
						end
					end
				end
		    end
		end
	end
	
	// Override output state if the motor is in the OFF state
	assign sig_out = (control[0]) ? output_state: `LOW;
					
endmodule