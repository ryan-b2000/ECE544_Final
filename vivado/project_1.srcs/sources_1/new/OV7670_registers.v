`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2019 08:09:06 PM
// Design Name: 
// Module Name: OV7670_registers
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


module OV7670_registers(
    input clk,
    input reset_n,
    input advance,
    output [15:0] command,
    output finished
    );
    
    reg [15:0] sreg;
    reg [7:0] address;
    
    assign command = sreg;
    assign finished = (sreg == 16'hffff) ? 1 : 0;
    
    always @(posedge clk or negedge reset_n) begin
        if(~reset_n)
            address <= 0;
        else if(advance)
            address <= address + 1'b1;
        
        case(address)
            8'h00: sreg <= 16'h1280; // reset
            8'h01: sreg <= 16'h1280; // reset
            8'h02: sreg <= 16'h1204; // com7 - rgb
            8'h03: sreg <= 16'h1100; // clkrc
            8'h04: sreg <= 16'h0c00; // com3
            8'h05: sreg <= 16'h3e00; // com14
            8'h06: sreg <= 16'h8c00; // make sure rgb444 is off
            8'h07: sreg <= 16'h0400; // com1
            8'h08: sreg <= 16'h40d0; // com15 - rgb565 - full output
            8'h09: sreg <= 16'h3a04; // tslb
            8'h0a: sreg <= 16'h1418; // com9 - 4x gain
            8'h0b: sreg <= 16'h4f40; // mtx1
            8'h0c: sreg <= 16'h5034; // mtx2
            8'h0d: sreg <= 16'h510c; // mtx3
            8'h0e: sreg <= 16'h5217; // mtx4
            8'h0f: sreg <= 16'h5329; // mtx5
            8'h10: sreg <= 16'h5440; // mtx6
            8'h11: sreg <= 16'h581e; // mtxs
            8'h12: sreg <= 16'h3dc0; // com13 
            8'h13: sreg <= 16'h1711; // hstart
            8'h14: sreg <= 16'h1861; // hstop
            8'h15: sreg <= 16'h32a4; // href
            8'h16: sreg <= 16'h1903; // vstart
            8'h17: sreg <= 16'h1a7b; // vstop
            8'h18: sreg <= 16'h030a; // vref
            8'h19: sreg <= 16'h030a; // com6
            8'h1a: sreg <= 16'h1e00; // mvfp
            8'h1b: sreg <= 16'h330b; // chlf
            8'h1c: sreg <= 16'h3c78; // com12
            8'h1d: sreg <= 16'h6900; // gfix
            8'h1e: sreg <= 16'h7400; // reg74
            8'h1f: sreg <= 16'hb084; // rsvd
            8'h20: sreg <= 16'hb10c; // ablc1
            8'h21: sreg <= 16'hb20e; // rsvd
            8'h22: sreg <= 16'hb380; // thl_st
            8'h23: sreg <= 16'h703a; 
            8'h24: sreg <= 16'h7135;
            8'h25: sreg <= 16'h7211;
            8'h26: sreg <= 16'h73f0;
            8'h27: sreg <= 16'ha202;
            8'h28: sreg <= 16'h7a20;
            8'h29: sreg <= 16'h7b10;
            8'h2a: sreg <= 16'h7c1e;
            8'h2b: sreg <= 16'h7d35;
            8'h2c: sreg <= 16'h7e5a;
            8'h2d: sreg <= 16'h7f69;
            8'h2e: sreg <= 16'h8076;
            8'h2f: sreg <= 16'h8180;
            8'h30: sreg <= 16'h8288;
            8'h31: sreg <= 16'h838f;
            8'h32: sreg <= 16'h8496;
            8'h33: sreg <= 16'h85a3;
            8'h34: sreg <= 16'h86af;
            8'h35: sreg <= 16'h87c4;
            8'h36: sreg <= 16'h88d7;
            8'h37: sreg <= 16'h89e8;
            8'h38: sreg <= 16'h13e0; // com8 - disable agc/aec
            8'h39: sreg <= 16'h0000; // agc
            8'h3a: sreg <= 16'h1000; // arcj
            8'h3b: sreg <= 16'h0d40; // com4
            8'h3c: sreg <= 16'h1418; // com9
            8'h3d: sreg <= 16'ha505; // bd50max
            8'h3e: sreg <= 16'hab07; // db60max
            8'h3f: sreg <= 16'h2495; // agc upper
            8'h40: sreg <= 16'h2533; // agc lower
            8'h41: sreg <= 16'h26e3; // agc/aec
            8'h42: sreg <= 16'h9f78; // haecc1
            8'h43: sreg <= 16'ha068; // haecc2
            8'h44: sreg <= 16'ha103;
            8'h45: sreg <= 16'ha6d8; // haecc3
            8'h46: sreg <= 16'ha7d8; // haecc4
            8'h47: sreg <= 16'ha8f0; // haecc5
            8'h48: sreg <= 16'ha990; // haecc6
            8'h49: sreg <= 16'haa94; // haecc7
            8'h4a: sreg <= 16'h13e5; // com8 - enable agc/aec
            8'h4b: sreg <= 16'h13e5;
            8'h4c: sreg <= 16'h13e5;
            default: sreg <= 16'hffff;
        endcase
        
    end
    
endmodule
