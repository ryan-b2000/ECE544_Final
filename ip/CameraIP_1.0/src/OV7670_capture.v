`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: OV7670_capture
//
// Description: Allows the camera to capture a frame at a resolution of 
//		160x120 pixels/frame
// 
//////////////////////////////////////////////////////////////////////////////////

module OV7670_capture(
    input pclk,                 // pixel output clock
    input reset_n,              // reset
    input vsync,                // vertical sync
    input href,                 // horizontal ref
    input [7:0] d,              // camera data
    output [18:0] addr,         // capture address
    output [11:0] dout,         // capture data
    output we,                  // write enable
    input freeze_frame		// freeze the address 
    );
    
    /* Data transfer using HREF */
    // href      write enable        data               address      address next
    //              
    // 1              x             xxxxxxxxxxxx        xxxxxxxx        address
    // 0              x             xxxxxxxxxxxx        address         address
    // x              1             rrrrggggbbbb        address         address + 1
    
    parameter ZERO = 2'b00, ONE = 2'b01, TWO = 2'b10, THREE = 2'b11;
    
    reg [15:0] d_latch;		// output data latch
    reg [18:0] address;		// output address
    reg [1:0] state;		// states
    reg [6:0] href_prev;	// previous hrefs
    reg we_reg;			// write enable
    reg href_hold;		// href held value
    reg vsync_latch;		// vsync latch
    reg href_latch;		// href latch
    reg [7:0] data_latch;	// current data latch
    
    assign addr = address;	// set output address
    assign we = we_reg;		// set write enable
    // send data out for vga display or rgb444
    assign dout = {d_latch[15:12],d_latch[10:7],d_latch[4:1]};
    
    always @(posedge pclk or negedge reset_n) begin
        if(~reset_n) begin
            d_latch <= 0;
            address <= 0;
            href_prev <= 0;
            we_reg <= 0;
            href_hold <= 0;
            state <= 0;
        end else begin      		// either freeze the address or increment
            if(we_reg && freeze_frame)
                address <= address;
            else if(we_reg)
                address <= address + 1'b1;
            
            if(~href_hold && href_latch) begin
                case(state)		// state transitions
                    ZERO: state <= ONE;
                    ONE: state <= TWO;
                    TWO: state <= THREE;
                    default: state <= ZERO;
                endcase
            end 
            
            href_hold <= href_latch;	// grab previous href
            
            if(href_latch)		// if href, shift the data
                d_latch <= {d_latch[7:0],data_latch};
                
            we_reg <= 0;
            
            if(vsync_latch) begin	// reset after vsync
                address <= 0;
                href_prev <= 0;
                state <= 0;
            end else begin		// enable writing to BRAM for 160x120
                if(href_prev[6]) begin
                    if(state == TWO)
                        we_reg <= 1'b1;               
                    href_prev <= 0;         
                end else
                    href_prev <= {href_prev[5:0],href_latch};
            end
        end
    end
    
    // on the negative clock edge, latch the signals
    always @(negedge pclk or negedge reset_n) begin
        if(~reset_n) begin
            data_latch <= 0;
            href_latch <= 0;
            vsync_latch <= 0;
        end else begin
            data_latch <= d;
            href_latch <= href;
            vsync_latch <= vsync;
        end
    end
                                        
endmodule
