`timescale 1ns / 1ps

// n4fpga.v - Top level module 
//
// Created By:	Ryan Bornhorst
//
// Description:
// ------------
// This module provides the top level for the hardware.
// The module is designed to connect to a OV7670 Camera
// and stream video through the VGA port using RGB565.
//////////////////////////////////////////////////////////////////////
module n4fpga(
    input				clk,			               // 100Mhz clock input
	input				btnCpuReset,	               // CPU reset pushbutton
    /* OV7670 Camera Ports */
    input               OV7670_VSYNC,              
    input               OV7670_HREF,
    input               OV7670_PCLK,
    output              OV7670_SIOC,
    inout               OV7670_SIOD,
    output              OV7670_XCLK,
    output              OV7670_RESET,
    output              OV7670_PWDN,
    input   [7:0]       OV7670_DATA,
    /* buttons, sitches, leds */  
    input               btnU,btnD,btnR,btnL,btnC,      // buttons
    input  [15:0]       sw,                            // switches
    output  [15:0]      led,                           // LEDs
    /* VGA ports */
    output  [3:0]       vga_red, vga_green, vga_blue,   
    output              vga_hsync, vga_vsync,
    /* UART signals */
    input               uart_rtl_rxd,
    output              uart_rtl_txd,
    inout   [7:0]       JA
);

// internal variables
// Clock and Reset 
wire				sysclk;             // 
wire				sysreset_n;

wire SPI_io0_i;
wire SPI_io0_io;
wire SPI_io0_o;
wire SPI_io0_t;
wire SPI_io1_i;
wire SPI_io1_io;
wire SPI_io1_o;
wire SPI_io1_t;
wire SPI_sck_i;
wire SPI_sck_io;
wire SPI_sck_o;
wire SPI_sck_t;
wire SPI_spisel;
wire SPI_ss_i_0;
wire SPI_ss_io_0;
wire SPI_ss_o_0;
wire SPI_ss_t;
wire UART1_rxd;
wire UART1_txd;
wire uart_rts;
wire uart_cts;

// make the connections
// system-wide signals
assign sysclk = clk;
assign sysreset_n = btnCpuReset;    

// PMOD JA
assign JA[0] = SPI_io0_o;
assign JA[1] = SPI_io1_o;
assign JA[2] = SPI_sck_o;
assign JA[3] = SPI_spisel;
assign JA[4] = UART1_rxd;
assign JA[5] = UART1_txd;
assign JA[6] = uart_rts;    // output
assign JA[7] = uart_cts;    // input


// embedded system for the block design
embsys embsys
       (.GPIO_IN_tri_i(uart_cts),       // from NodeMCU => LOW = OK TO SEND
        .GPIO_OUT_tri_o(uart_rts),      // to NodeMCU
        
        //.SPI_io0_i(SPI_io0_i),
        .SPI_io0_o(SPI_io0_o),
        //.SPI_io1_i(SPI_io1_i),
        .SPI_io1_o(SPI_io1_o),
        //.SPI_sck_i(SPI_sck_i),
        .SPI_sck_o(SPI_sck_o),
        .SPI_spisel(SPI_spisel),
        .SPI_ss_o(SPI_ss_o_0),
        .UART1_rxd(UART1_rxd),
        .UART1_txd(UART1_txd),
        /* Camera Ports */
        .OV7670_DATA_0(OV7670_DATA),
        .OV7670_HREF_0(OV7670_HREF),
        .OV7670_PCLK_0(OV7670_PCLK),
        .OV7670_PWDN_0(OV7670_PWDN),
        .OV7670_RESET_0(OV7670_RESET),
        .OV7670_SIOC_0(OV7670_SIOC),
        .OV7670_SIOD_0(OV7670_SIOD),
        .OV7670_VSYNC_0(OV7670_VSYNC),
        .OV7670_XCLK_0(OV7670_XCLK),
        /* Board Buttons */
        .btnC_0(btnC),
        .btnD_0(btnD),
        .btnL_0(btnL),
        .btnR_0(btnR),
        .btnU_0(btnU),
        /* RAM Port A Clock */
        .clka_0(OV7670_PCLK),
        /* LEDs and Switches */
        .led_0(),                       // not currently used
        .led_1(led[0]),                 // led[0] is used to show that configuration completed
        .sw_0(sw),
        /* System Clock and Reset */
        .sysclk(sysclk),
        .sysreset_n(sysreset_n),
        /* UART through USB Port */
        .uart_rtl_0_rxd(uart_rtl_rxd),
        .uart_rtl_0_txd(uart_rtl_txd),
        /* VGA Port Signals */
        .vga_blue_0(vga_blue),
        .vga_green_0(vga_green),
        .vga_hsync_0(vga_hsync),
        .vga_red_0(vga_red),
        .vga_vsync_0(vga_vsync));

endmodule

