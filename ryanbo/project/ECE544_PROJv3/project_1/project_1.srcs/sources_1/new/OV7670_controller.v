`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2019 07:55:04 PM
// Design Name: 
// Module Name: OV7670_controller
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


module OV7670_controller(
    input clk,
    input reset_n,
    input [15:0] command,
    output config_finished,
    output sioc,
    inout siod,
    output cam_reset,
    output pwdn,
    output xclk
    );
   
    parameter camera_address = 8'h42;
    
    reg sys_clk;
    
    //wire [15:0] command;
    wire finished;
    wire taken;
    wire send;
    
    assign config_finished = finished;
    assign send = ~finished;
    
    // i2c sender
    i2c_sender sender (
        .clk(clk),
        .reset_n(reset_n),
        .taken(taken),
        .siod(siod),
        .sioc(sioc),
        .send(send),
        .id(camera_address),
        .register(command[15:8]),
        .value(command[7:0])
    );
    
    assign cam_reset = 1'b1;
    assign pwdn = 1'b0;
    assign xclk = sys_clk;
    
    // ov7670 registers
    /*
    OV7670_registers registers (
        .clk(clk),
        .advance(taken),
        .command(command),
        .finished(finished),
        .reset_n(reset_n)
    );
    */
    
    always @(posedge clk) 
        sys_clk <= ~sys_clk;
    
endmodule
