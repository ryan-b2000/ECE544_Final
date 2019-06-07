-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Jun  6 15:40:26 2019
-- Host        : DESKTOP-976N9II running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_CameraIP_0_3_stub.vhdl
-- Design      : embsys_CameraIP_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk50 : in STD_LOGIC;
    clk25 : in STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    OV7670_HREF : in STD_LOGIC;
    OV7670_PCLK : in STD_LOGIC;
    OV7670_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_SIOD : inout STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    OV7670_XCLK : out STD_LOGIC;
    OV7670_RESET : out STD_LOGIC;
    OV7670_PWDN : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    led : out STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    frame_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    capture_we : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk50,clk25,sysreset_n,OV7670_VSYNC,OV7670_HREF,OV7670_PCLK,OV7670_DATA[7:0],OV7670_SIOD,OV7670_SIOC,OV7670_XCLK,OV7670_RESET,OV7670_PWDN,vga_red[3:0],vga_green[3:0],vga_blue[3:0],vga_hsync,vga_vsync,led,frame_pixel[11:0],frame_addr[18:0],capture_addr[18:0],capture_data[11:0],capture_we,s00_axi_awaddr[3:0],s00_axi_awprot[2:0],s00_axi_awvalid,s00_axi_awready,s00_axi_wdata[31:0],s00_axi_wstrb[3:0],s00_axi_wvalid,s00_axi_wready,s00_axi_bresp[1:0],s00_axi_bvalid,s00_axi_bready,s00_axi_araddr[3:0],s00_axi_arprot[2:0],s00_axi_arvalid,s00_axi_arready,s00_axi_rdata[31:0],s00_axi_rresp[1:0],s00_axi_rvalid,s00_axi_rready,s00_axi_aclk,s00_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CameraIP_v1_0,Vivado 2018.2";
begin
end;
