// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Jun  6 11:09:43 2019
// Host        : DESKTOP-976N9II running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_CameraIP_0_3_stub.v
// Design      : embsys_CameraIP_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CameraIP_v1_0,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk50, clk25, sysreset_n, OV7670_VSYNC, 
  OV7670_HREF, OV7670_PCLK, OV7670_DATA, OV7670_SIOD, OV7670_SIOC, OV7670_XCLK, OV7670_RESET, 
  OV7670_PWDN, vga_red, vga_green, vga_blue, vga_hsync, vga_vsync, led, frame_pixel, frame_addr, 
  capture_addr, capture_data, capture_we, s00_axi_awaddr, s00_axi_awprot, s00_axi_awvalid, 
  s00_axi_awready, s00_axi_wdata, s00_axi_wstrb, s00_axi_wvalid, s00_axi_wready, 
  s00_axi_bresp, s00_axi_bvalid, s00_axi_bready, s00_axi_araddr, s00_axi_arprot, 
  s00_axi_arvalid, s00_axi_arready, s00_axi_rdata, s00_axi_rresp, s00_axi_rvalid, 
  s00_axi_rready, s00_axi_aclk, s00_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="clk50,clk25,sysreset_n,OV7670_VSYNC,OV7670_HREF,OV7670_PCLK,OV7670_DATA[7:0],OV7670_SIOD,OV7670_SIOC,OV7670_XCLK,OV7670_RESET,OV7670_PWDN,vga_red[3:0],vga_green[3:0],vga_blue[3:0],vga_hsync,vga_vsync,led,frame_pixel[11:0],frame_addr[18:0],capture_addr[18:0],capture_data[11:0],capture_we,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn" */;
  input clk50;
  input clk25;
  input sysreset_n;
  input OV7670_VSYNC;
  input OV7670_HREF;
  input OV7670_PCLK;
  input [7:0]OV7670_DATA;
  inout OV7670_SIOD;
  output OV7670_SIOC;
  output OV7670_XCLK;
  output OV7670_RESET;
  output OV7670_PWDN;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output vga_hsync;
  output vga_vsync;
  output led;
  input [11:0]frame_pixel;
  output [18:0]frame_addr;
  output [18:0]capture_addr;
  output [11:0]capture_data;
  output capture_we;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;
  input s00_axi_aclk;
  input s00_axi_aresetn;
endmodule
