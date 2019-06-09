`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: vga
// 
//////////////////////////////////////////////////////////////////////////////////

module vga(
    input clk25,                    // 25 MHz
    input reset_n,                  //reset
    /*
    output reg [3:0] vga_red,       // red signal
    output reg [3:0] vga_green,     // green signal
    output reg [3:0] vga_blue,      // blue signal
    */
    output reg vga_hsync,           // horizontal sync
    output reg vga_vsync,           // vertical sync
    output nBlank,
    output reg activeArea,
    output nSync
    /*
    output reg [18:0] frame_addr,   // frame address
    input [11:0] frame_pixel        // frame pixel
    */
    );
    
    reg [9:0] hCount;
    reg [9:0] vCount;
    wire display;
    
    localparam hM = 799;
    localparam hD = 640;
    localparam hF = 16;
    localparam hB = 48;
    localparam hR = 96;
    localparam vM = 524;
    localparam vD = 480;
    localparam vF = 10;
    localparam vB = 33;
    localparam vR = 2;
    
    assign nSync = 1'b1;
    assign display = ((hCount < hD) && (vCount < vD)) ? 1 : 0;
    assign nBlank = display;
    
    always @(posedge clk25 or negedge reset_n) begin
        if(~reset_n) begin
            hCount <= 0;
            vCount <= 10'b10_0000_1000;
            activeArea <= 0;
        end else begin
            if(hCount == hM) begin
                hCount <= 0;
                if(vCount == vM) begin
                    vCount <= 0;
                    activeArea <= 1'b1;
                end else begin
                    if(vCount < (120-1))
                        activeArea <= 1'b1;
                    vCount <= vCount + 1'b1;  
                end    
            end else begin
                if(hCount == (160-1))
                    activeArea <= 1'b0;
                hCount <= hCount + 1'b1;
            end   
        end
    end
            
    always @(posedge clk25 or negedge reset_n) begin
        if(~reset_n) 
            vga_hsync <= 0;
        else begin
            if((hCount >= (hD+hF)) && (hCount <= (hD+hF+hR-1)))
                vga_hsync <= 1'b0;
            else
                vga_hsync <= 1'b1;
        end
    end
    
    always @(posedge clk25 or negedge reset_n) begin
        if(~reset_n) 
            vga_vsync <= 0;
        else begin
            if((vCount >= (vD+vF)) && (vCount <= (vD+vF+vR-1)))
                vga_vsync <= 1'b0;
            else
                vga_vsync <= 1'b1;
        end
    end
    
    /*
    localparam hRez = 640;              // horizontal resolution
    localparam hStartSync = hRez+16; 
    localparam hEndSync = hRez+16+96;    // resolution + sync time
    localparam hMaxCount = hRez+16+96+48;         // maximum hcount
    
    localparam vRez = 480;              // vertical resolution
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
            if(hCounter == hMaxCount - 1) begin // hMax
                hCounter <= 0;
                if(vCounter == vMaxCount - 1) // vMax
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
            if(vCounter >= 120) begin // was >=
                address <= 0;
                blank <= 1'b1; // was 1
            end else begin
                if(hCounter < 160) begin
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
    */             
endmodule
