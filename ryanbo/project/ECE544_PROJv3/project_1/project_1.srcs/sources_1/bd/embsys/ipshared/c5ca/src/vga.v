`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: vga
// 
//////////////////////////////////////////////////////////////////////////////////

module vga(
    input clk25,                    // 25 MHz
    input reset_n,                  //reset
    output reg [3:0] vga_red,       // red signal
    output reg [3:0] vga_green,     // green signal
    output reg [3:0] vga_blue,      // blue signal
    output reg vga_hsync,           // horizontal sync
    output reg vga_vsync,           // vertical sync
    output reg [18:0] frame_addr,   // frame address
    input [11:0] frame_pixel        // frame pixel
    );
    
    localparam hRez = 160;              // horizontal resolution
    localparam hStartSync = hRez+16; 
    localparam hEndSync = hRez+16+96;    // resolution + sync time
    localparam hMaxCount = hRez+16+96+48;         // maximum hcount
    
    localparam vRez = 120;              // vertical resolution
    localparam vStartSync = vRez+10;
    localparam vEndSync = vRez+10+2;     // vertical resolution + sync time
    localparam vMaxCount = vRez+10+2+33;         // maximum vcount
    
    localparam hsync_active = 1'b0;
    localparam vsync_active = 1'b0;
    
    reg [9:0] hCounter;                 // horizontal sync counter
    reg [9:0] vCounter;                 // veritical sync counter
    reg [18:0] address;                 // address
    reg blank;                          
    
    always @(posedge clk25 or negedge reset_n) begin
        if(~reset_n) begin
            hCounter <= 0;
            vCounter <= 0;
            address <= 0;
            blank <= 1'b1;
        end else begin
            // setup horizontal and vertical counters
            frame_addr <= address;
            if(hCounter == hMaxCount - 1) begin
                hCounter <= 0;
                if(vCounter == vMaxCount - 1)
                    vCounter <= 0;
                else
                    vCounter <= vCounter + 1'b1;
            end else
                hCounter <= hCounter + 1'b1;
            
            // drive the vga signals
            if(blank == 1'b0) begin
                vga_red <= frame_pixel[11:8];
                vga_green <= frame_pixel[7:4];
                vga_blue <= frame_pixel[3:0];
            end else begin
                vga_red <= 0;
                vga_green <= 0;
                vga_blue <= 0;
            end
            
            // vertical and horizontal synchronization
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
            
            // when should horizontal sync happen
            if((hCounter >= hStartSync) && (hCounter <= hEndSync)) 
                vga_hsync <= hsync_active;
            else
                vga_hsync <= ~hsync_active;
                
            // when should vertical sync happen
            if((vCounter >= vStartSync) && (vCounter <= vEndSync))
                vga_vsync <= vsync_active;
            else
                vga_vsync <= ~vsync_active;
        end
    end
                     
endmodule
