`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: address_valid
//
// Description: Updates the output address when vsync is valid
//
// Team: Andrew Capatina, Ryan Bentz, Ryan Bornhorst
//
// Date: 6/13/19
//
//////////////////////////////////////////////////////////////////////////////////


module address_valid(
    input clk25,		// 25 MHz
    input reset_n,		// reset
    input enable,		// enable address
    input vsync,		// vsync
    output [16:0] address	// output address
    );
    
    localparam hRez = 160;	// horizontal resolution
    localparam vRez = 120;	// vertical resolution
    localparam tRez = hRez*vRez;// max resolution
    
    reg [16:0] valid;		// valid address
    
    assign address = valid;	// assign valid address
    
    always @(posedge clk25 or negedge reset_n) begin
        if(~reset_n)
            valid <= 0;
        else begin		// enable the address within frame resolution
            if(enable) begin
                if(valid < tRez)
                    valid <= valid + 1'b1;
            end
            
            if(~vsync)
                valid <= 0;
        end
    end
        
endmodule
