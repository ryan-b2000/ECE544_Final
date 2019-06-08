// - tachometer.sv

/*	Ram Bhattarai and Ryan Bentz
	ECE 544
	Project 2
	5/1/2019

	Hardware Tachometer
	
	Takes two incoming signals from a quadrature encoder and calculates the RPM
	of the motor connected to the encoder. The incoming signal is set at 24 pulses per revolution.
	The module contains logic that generates a waveform with a 2 second period based off the 100 MHz
	AXI bus clock. Each change in the waveform triggers and RPM calculation.

	- Change PPR to 12 from 24
*/
	
`define		LOW		(1'b0)
`define		HIGH	(1'b1)	

	
`define 	PULSES_PER_REV	(12)

module tachometer (		input 	logic 			resetN,
						input 	logic 			refclk,		// input reference signal: 100MHz
						input 	logic 			pinA,       // input encoder signal
						input 	logic 			pinB,		// input encoder signal
						output	logic [31:0]	rpm,		// RPM calculation
						output  logic           debug_int1s);
    //100000000
    parameter clk_freq = 100000000;
    //parameter clk_freq = 100000;         // set the frequency of the incoming clock to generate the interrupt
    //parameter rpm_period = clk_freq / 2;    // if we want a 1s period, we need cut count in half
                                            // because calculation is done on rising edge
    logic [31:0] rpm_period = clk_freq;   // set the 1/2 period to one second and do the calculation on each transition

	logic oldA;
	logic [4:0] countA;				   // counts the number pulses per revolution
	logic [31:0] revsA;				   // counts the number of revolutions per second
	logic int1s_old;				   // old state of 1 second interrupt signal
	logic int1s_signal;                // 1 second interrupt signal
	logic [31:0] int1s_count = 0;      // counter to generate 1s waveform
	
	assign debug_int1s = int1s_signal;
	
	// Logic creates a 1s waveform for triggering the RPM calculation
	always @ (posedge refclk) begin
	   if (!resetN) begin
	       int1s_count <= 0;
	       int1s_signal <= `LOW;
	   end
	   else if (int1s_count == rpm_period) begin
	       int1s_count <= 0;
	       int1s_signal <= ~int1s_signal;
	   end
	   else begin
	       int1s_count <= int1s_count + 1;
	       int1s_signal <= int1s_signal;
	   end
	end


	// On every rising edge of the AXI clock, we check to see if there was a change on the encoder pin from
	// the motor and increment the counter. We also check if the RPM calculation timer has gone off and do
	// the calculation if necessary.
	always_ff @ (posedge refclk) begin
	
	    oldA <= oldA;
        countA <= countA;
        int1s_old <= int1s_old;
        rpm <= rpm;
        revsA <= revsA;
	
		if (!resetN) begin
			oldA <= `LOW;
			countA <= 0;
			revsA <= 0;
			int1s_old <= `LOW;
			rpm <= 0;
		end
		else begin
			// Pin has changed
			if (pinA != oldA) begin
				oldA <= pinA;		// record the pin state for the next transition analysis

				// if we reached a revolution, increment the revolution count and reset ticker
                if (countA == `PULSES_PER_REV) begin
                    revsA <= revsA + 1;
                    countA <= 0;
                end
                // otherwise, we detected a change on encoder input signal and increment the counter
                else begin
                    countA <= countA + 1;
                end
			end
		end

		// On every change of detection we clear the counter, if we get 2 successive counts
		// in this loop then its time to clear it		
		if (int1s_old != int1s_signal) begin
           int1s_old <= int1s_signal;	// override with new state of 1s signal
           rpm <= revsA * 5;			// equv. to count * 12 pulses/rev * 60 revs/min --> 60 / 12 = 5			
           revsA <= 0;                    // clear the revolutions counter
		end
	end
    
endmodule