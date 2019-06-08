`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2019 09:10:54 AM
// Design Name: 
// Module Name: vga
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


module vga(
    input clk25,
    input reset_n,
    output reg [3:0] vga_red,
    output reg [3:0] vga_green,
    output reg [3:0] vga_blue,
    output reg vga_hsync,
    output reg vga_vsync,
    output reg [18:0] frame_addr,
    input [11:0] frame_pixel
    );
    
    localparam hRez = 640;
    localparam hStartSync = 640+16;
    localparam hEndSync = 640+16+96;
    localparam hMaxCount = 800;
    
    localparam vRez = 480;
    localparam vStartSync = 480+10;
    localparam vEndSync = 480+10+2;
    localparam vMaxCount = 480+10+2+33;
    
    localparam hsync_active = 1'b0;
    localparam vsync_active = 1'b0;
    
    reg [9:0] hCounter;
    reg [9:0] vCounter;
    reg [18:0] address;
    reg blank;
    
    always @(posedge clk25 or negedge reset_n) begin
        if(~reset_n) begin
            hCounter <= 0;
            vCounter <= 0;
            address <= 0;
            blank <= 1'b1;
        end else begin
            frame_addr <= address;
            if(hCounter == hMaxCount - 1) begin
                hCounter <= 0;
                if(vCounter == vMaxCount - 1)
                    vCounter <= 0;
                else
                    vCounter <= vCounter + 1'b1;
            end else
                hCounter <= hCounter + 1'b1;
            
            if(blank == 1'b0) begin
                vga_red <= frame_pixel[11:8];
                vga_green <= frame_pixel[7:4];
                vga_blue <= frame_pixel[3:0];
            end else begin
                vga_red <= 0;
                vga_green <= 0;
                vga_blue <= 0;
            end
            
            if(vCounter >= vRez) begin
                address <= 0;
                blank <= 1'b1;
            end else begin
                if(hCounter < hRez) begin
                    blank <= 1'b0;
                    address <= address + 1'b1;
                end else
                    blank <= 1'b1;
            end
            
            if((hCounter >= hStartSync) && (hCounter <= hEndSync)) 
                vga_hsync <= hsync_active;
            else
                vga_hsync <= ~hsync_active;
                
            if((vCounter >= vStartSync) && (vCounter <= vEndSync))
                vga_vsync <= vsync_active;
            else
                vga_vsync <= ~vsync_active;
        end
    end
                     
endmodule
