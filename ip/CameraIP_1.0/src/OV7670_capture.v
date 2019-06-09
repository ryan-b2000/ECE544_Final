`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: OV7670_capture
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
    input freeze_frame
    );
    
        /* Data transfer using HREF */
    // href      write enable        data               address      address next
    //              
    // 1              x             xxxxxxxxxxxx        xxxxxxxx        address
    // 0              x             xxxxxxxxxxxx        address         address
    // x              1             rrrrggggbbbb        address         address + 1
    
    parameter ZERO = 2'b00, ONE = 2'b01, TWO = 2'b10, THREE = 2'b11;
    
    reg [15:0] d_latch;
    reg [18:0] address;
    reg [1:0] state;
    reg [6:0] href_prev;
    reg we_reg;
    reg href_hold;
    reg vsync_latch;
    reg href_latch;
    reg [7:0] data_latch;
    
    assign addr = address;
    assign we = we_reg;
    assign dout = {d_latch[15:12],d_latch[10:7],d_latch[4:1]};
    
    always @(posedge pclk or negedge reset_n) begin
        if(~reset_n) begin
            d_latch <= 0;
            address <= 0;
            href_prev <= 0;
            we_reg <= 0;
            href_hold <= 0;
            state <= 0;
        end else begin      
            if(we_reg && freeze_frame)
                address <= address;
            else if(we_reg)
                address <= address + 1'b1;
            
            if(~href_hold && href_latch) begin
                case(state)
                    ZERO: state <= ONE;
                    ONE: state <= TWO;
                    TWO: state <= THREE;
                    default: state <= ZERO;
                endcase
            end 
            
            href_hold <= href_latch;
            
            if(href_latch)
                d_latch <= {d_latch[7:0],data_latch};
                
            we_reg <= 0;
            
            if(vsync_latch) begin
                address <= 0;
                href_prev <= 0;
                state <= 0;
            end else begin
                if(href_prev[6]) begin
                    if(state == TWO)
                        we_reg <= 1'b1;               
                    href_prev <= 0;         
                end else
                    href_prev <= {href_prev[5:0],href_latch};
            end
        end
    end
    
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
                                     
    /*
    reg [15:0] d_latch;         // data latch
    reg [18:0] address;         // capture address
    reg [18:0] address_next;    // next capture address
    reg [1:0]  wr_hold;         // signal for incrementing address or holding current address
    
    assign addr = address;
    
    always @(posedge pclk or negedge reset_n) begin
        if(~reset_n) begin
            d_latch <= 0;
            address <= 0;
            address_next <= 0;
            wr_hold <= 0;
        end else if(vsync == 1'b1) begin    // reset address after vsync
            address <= 0;
            address_next <= 0;
            wr_hold <= 0;
        end else begin                      // send data to RAM while vsync is low
            dout <= {d_latch[15:12], d_latch[10:7], d_latch[4:1]};
            address <= address_next;
            we <= wr_hold[1];
            wr_hold <= {wr_hold[0],(href & ~wr_hold[0])};
            d_latch <= {d_latch[7:0],d};
        
            // increment the address
            if(wr_hold[1] && freeze_frame) 
                address_next <= address_next;
            else if(wr_hold[1])
                address_next <= address_next + 1'b1;
                
        end
    end
    */    
    
endmodule
