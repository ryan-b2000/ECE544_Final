`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: address_valid
//
//////////////////////////////////////////////////////////////////////////////////


module address_valid(
    input clk25,
    input reset_n,
    input enable,
    input vsync,
    output [16:0] address
    );
    
    localparam hRez = 160;
    localparam vRez = 120;
    localparam tRez = hRez*vRez;
    
    reg [16:0] valid;
    
    assign address = valid;
    
    always @(posedge clk25 or negedge reset_n) begin
        if(~reset_n)
            valid <= 0;
        else begin
            if(enable) begin
                if(valid < tRez)
                    valid <= valid + 1'b1;
            end
            
            if(~vsync)
                valid <= 0;
        end
    end
        
endmodule
