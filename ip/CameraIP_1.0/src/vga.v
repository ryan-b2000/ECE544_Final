`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: vga
//
// Description: VGA controller that outputs the VGA signals to the VGA IO ports
//
// Team: Andrew Capatina, Ryan Bentz, Ryan Bornhorst
// 
// Date: 6/13/19
// 
//////////////////////////////////////////////////////////////////////////////////

module vga(
    input clk25,                    // 25 MHz
    input reset_n,                  //reset
    output reg vga_hsync,           // horizontal sync
    output reg vga_vsync,           // vertical sync
    output nBlank,		    // enable
    output reg activeArea,	    // address enable
    output nSync	            // sync enable
    );
    
    reg [9:0] hCount;		// horizontal count
    reg [9:0] vCount;		// vertical count
    wire display;		// enable
    
    localparam hM = 799;	// horizontal max
    localparam hD = 640;	// horizontal vga screen size
    localparam hF = 16;		// front offset
    localparam hB = 48;		// back offset
    localparam hR = 96;	        // 
    localparam vM = 524; 	// vertical max
    localparam vD = 480;	// vertical vga screen size
    localparam vF = 10;		// front offset
    localparam vB = 33;		// back offset
    localparam vR = 2;		//
    
    assign nSync = 1'b1;	// enable sync
    // enable display
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
                if(vCount == vM) begin		// start getting vga signals
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
            
    // setup horizontal and vertical sync while within the resolution
    // parameters for horizontal and vertical resolution
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
               
endmodule
