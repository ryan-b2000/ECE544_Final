`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2019 08:57:30 AM
// Design Name: 
// Module Name: OV7670_capture
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


module OV7670_capture(
    input pclk,
    input reset_n,
    input vsync,
    input href,
    input [7:0] d,
    output [18:0] addr,
    output reg [11:0] dout,
    output reg we
    );
    
    reg [15:0] d_latch;
    reg [18:0] address;
    reg [18:0] address_next;
    reg [1:0]  wr_hold;
    
    assign addr = address;
    
    always @(posedge pclk or negedge reset_n) begin
        if(~reset_n) begin
            d_latch <= 0;
            address <= 0;
            address_next <= 0;
            wr_hold <= 0;
        end else if(vsync == 1'b1) begin
            address <= 0;
            address_next <= 0;
            wr_hold <= 0;
        end else begin
            dout <= {d_latch[15:12], d_latch[10:7], d_latch[4:1]};
            address <= address_next;
            we <= wr_hold[1];
            wr_hold <= {wr_hold[0],(href & ~wr_hold[0])};
            d_latch <= {d_latch[7:0],d};
        
            if(wr_hold[1] == 1'b1)
                address_next <= address_next + 1'b1;
        end
    end
        
    
endmodule
