//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
//Date        : Fri Jun  7 14:36:05 2019
//Host        : DESKTOP-976N9II running 64-bit major release  (build 9200)
//Command     : generate_target embsys_wrapper.bd
//Design      : embsys_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module embsys_wrapper
   (OV7670_DATA_0,
    OV7670_HREF_0,
    OV7670_PCLK_0,
    OV7670_PWDN_0,
    OV7670_RESET_0,
    OV7670_SIOC_0,
    OV7670_SIOD_0,
    OV7670_VSYNC_0,
    OV7670_XCLK_0,
    btnC_0,
    btnD_0,
    btnL_0,
    btnR_0,
    btnU_0,
    clka_0,
    led_0,
    led_1,
    sw_0,
    sysclk,
    sysreset_n,
    uart_rtl_0_rxd,
    uart_rtl_0_txd,
    vga_blue_0,
    vga_green_0,
    vga_hsync_0,
    vga_red_0,
    vga_vsync_0);
  input [7:0]OV7670_DATA_0;
  input OV7670_HREF_0;
  input OV7670_PCLK_0;
  output OV7670_PWDN_0;
  output OV7670_RESET_0;
  output OV7670_SIOC_0;
  inout OV7670_SIOD_0;
  input OV7670_VSYNC_0;
  output OV7670_XCLK_0;
  input btnC_0;
  input btnD_0;
  input btnL_0;
  input btnR_0;
  input btnU_0;
  input clka_0;
  output [15:0]led_0;
  output led_1;
  input [15:0]sw_0;
  input sysclk;
  input sysreset_n;
  input uart_rtl_0_rxd;
  output uart_rtl_0_txd;
  output [3:0]vga_blue_0;
  output [3:0]vga_green_0;
  output vga_hsync_0;
  output [3:0]vga_red_0;
  output vga_vsync_0;

  wire [7:0]OV7670_DATA_0;
  wire OV7670_HREF_0;
  wire OV7670_PCLK_0;
  wire OV7670_PWDN_0;
  wire OV7670_RESET_0;
  wire OV7670_SIOC_0;
  wire OV7670_SIOD_0;
  wire OV7670_VSYNC_0;
  wire OV7670_XCLK_0;
  wire btnC_0;
  wire btnD_0;
  wire btnL_0;
  wire btnR_0;
  wire btnU_0;
  wire clka_0;
  wire [15:0]led_0;
  wire led_1;
  wire [15:0]sw_0;
  wire sysclk;
  wire sysreset_n;
  wire uart_rtl_0_rxd;
  wire uart_rtl_0_txd;
  wire [3:0]vga_blue_0;
  wire [3:0]vga_green_0;
  wire vga_hsync_0;
  wire [3:0]vga_red_0;
  wire vga_vsync_0;

  embsys embsys_i
       (.OV7670_DATA_0(OV7670_DATA_0),
        .OV7670_HREF_0(OV7670_HREF_0),
        .OV7670_PCLK_0(OV7670_PCLK_0),
        .OV7670_PWDN_0(OV7670_PWDN_0),
        .OV7670_RESET_0(OV7670_RESET_0),
        .OV7670_SIOC_0(OV7670_SIOC_0),
        .OV7670_SIOD_0(OV7670_SIOD_0),
        .OV7670_VSYNC_0(OV7670_VSYNC_0),
        .OV7670_XCLK_0(OV7670_XCLK_0),
        .btnC_0(btnC_0),
        .btnD_0(btnD_0),
        .btnL_0(btnL_0),
        .btnR_0(btnR_0),
        .btnU_0(btnU_0),
        .clka_0(clka_0),
        .led_0(led_0),
        .led_1(led_1),
        .sw_0(sw_0),
        .sysclk(sysclk),
        .sysreset_n(sysreset_n),
        .uart_rtl_0_rxd(uart_rtl_0_rxd),
        .uart_rtl_0_txd(uart_rtl_0_txd),
        .vga_blue_0(vga_blue_0),
        .vga_green_0(vga_green_0),
        .vga_hsync_0(vga_hsync_0),
        .vga_red_0(vga_red_0),
        .vga_vsync_0(vga_vsync_0));
endmodule
