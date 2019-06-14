`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: rgb_valid
//
// Description: Stores the rgb data for VGA when the pixel address is valid.
// 
// Team: Andrew Capatina, Ryan Bentz, Ryan Bornhorst
//
// Date: 6/13/19
//
//////////////////////////////////////////////////////////////////////////////////


module rgb_valid(
    input [11:0] data,		// pixel data
    input nBlank,		// check for enable
    output [7:0] vga_red,	// vga red
    output [7:0] vga_green,	// vga green
    output [7:0] vga_blue	// vga blue
    );
    
    assign vga_red = (nBlank) ? {data[11:8],data[11:8]} : 8'h00;
    assign vga_green = (nBlank) ? {data[7:4],data[7:4]} : 8'h00;
    assign vga_blue = (nBlank) ? {data[3:0],data[3:0]} : 8'h00;
    
endmodule
