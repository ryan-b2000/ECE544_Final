`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/09/2019 12:49:31 PM
// Design Name: 
// Module Name: rgb_valid
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module rgb_valid(
    input [11:0] data,
    input nBlank,
    output [7:0] vga_red,
    output [7:0] vga_green,
    output [7:0] vga_blue
    );
    
    assign vga_red = (nBlank) ? {data[11:8],data[11:8]} : 8'h00;
    assign vga_green = (nBlank) ? {data[7:4],data[7:4]} : 8'h00;
    assign vga_blue = (nBlank) ? {data[3:0],data[3:0]} : 8'h00;
    
endmodule
