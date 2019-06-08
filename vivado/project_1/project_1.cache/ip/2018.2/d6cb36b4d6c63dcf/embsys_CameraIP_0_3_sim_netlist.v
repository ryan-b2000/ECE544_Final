// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Jun  7 11:37:00 2019
// Host        : DESKTOP-976N9II running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_CameraIP_0_3_sim_netlist.v
// Design      : embsys_CameraIP_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0
   (led,
    OV7670_SIOD,
    S_AXI_AWREADY,
    OV7670_XCLK,
    capture_addr,
    capture_data,
    vga_red,
    vga_green,
    vga_blue,
    vga_hsync,
    vga_vsync,
    frame_addr,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    capture_we,
    s00_axi_bvalid,
    OV7670_SIOC,
    OV7670_VSYNC,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    clk50,
    OV7670_PCLK,
    OV7670_DATA,
    clk25,
    sysreset_n,
    frame_pixel,
    s00_axi_araddr,
    s00_axi_arvalid,
    OV7670_HREF,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output led;
  output OV7670_SIOD;
  output S_AXI_AWREADY;
  output OV7670_XCLK;
  output [18:0]capture_addr;
  output [11:0]capture_data;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output vga_hsync;
  output vga_vsync;
  output [18:0]frame_addr;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output capture_we;
  output s00_axi_bvalid;
  output OV7670_SIOC;
  input OV7670_VSYNC;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input clk50;
  input OV7670_PCLK;
  input [7:0]OV7670_DATA;
  input clk25;
  input sysreset_n;
  input [11:0]frame_pixel;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input OV7670_HREF;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [7:0]OV7670_DATA;
  wire OV7670_HREF;
  wire OV7670_PCLK;
  wire OV7670_SIOC;
  wire OV7670_SIOD;
  wire OV7670_VSYNC;
  wire OV7670_XCLK;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [18:0]capture_addr;
  wire [11:0]capture_data;
  wire capture_we;
  wire clk25;
  wire clk50;
  wire [18:0]frame_addr;
  wire [11:0]frame_pixel;
  wire led;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sysreset_n;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire vga_hsync;
  wire [3:0]vga_red;
  wire vga_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0_S00_AXI CameraIP_v1_0_S00_AXI_inst
       (.OV7670_DATA(OV7670_DATA),
        .OV7670_HREF(OV7670_HREF),
        .OV7670_PCLK(OV7670_PCLK),
        .OV7670_SIOC(OV7670_SIOC),
        .OV7670_SIOD(OV7670_SIOD),
        .OV7670_VSYNC(OV7670_VSYNC),
        .OV7670_XCLK(OV7670_XCLK),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .capture_addr(capture_addr),
        .capture_data(capture_data),
        .capture_we(capture_we),
        .clk25(clk25),
        .clk50(clk50),
        .frame_addr(frame_addr),
        .frame_pixel(frame_pixel),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sysreset_n(sysreset_n),
        .vga_blue(vga_blue),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0_S00_AXI
   (led,
    OV7670_SIOD,
    S_AXI_AWREADY,
    OV7670_XCLK,
    capture_addr,
    capture_data,
    vga_red,
    vga_green,
    vga_blue,
    vga_hsync,
    vga_vsync,
    frame_addr,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    capture_we,
    s00_axi_bvalid,
    OV7670_SIOC,
    OV7670_VSYNC,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    clk50,
    OV7670_PCLK,
    OV7670_DATA,
    clk25,
    sysreset_n,
    frame_pixel,
    s00_axi_araddr,
    s00_axi_arvalid,
    OV7670_HREF,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output led;
  output OV7670_SIOD;
  output S_AXI_AWREADY;
  output OV7670_XCLK;
  output [18:0]capture_addr;
  output [11:0]capture_data;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output vga_hsync;
  output vga_vsync;
  output [18:0]frame_addr;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output capture_we;
  output s00_axi_bvalid;
  output OV7670_SIOC;
  input OV7670_VSYNC;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input clk50;
  input OV7670_PCLK;
  input [7:0]OV7670_DATA;
  input clk25;
  input sysreset_n;
  input [11:0]frame_pixel;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input OV7670_HREF;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [7:0]OV7670_DATA;
  wire OV7670_HREF;
  wire OV7670_PCLK;
  wire OV7670_SIOC;
  wire OV7670_SIOD;
  wire OV7670_VSYNC;
  wire OV7670_XCLK;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [18:0]capture_addr;
  wire [11:0]capture_data;
  wire capture_we;
  wire clk25;
  wire clk50;
  wire [18:0]frame_addr;
  wire [11:0]frame_pixel;
  wire led;
  wire ov7670_n_5;
  wire ov7670_n_6;
  wire ov7670_n_7;
  wire ov7670_n_8;
  wire [1:0]p_0_in__0;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;
  wire sysreset_n;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire vga_hsync;
  wire [3:0]vga_red;
  wire vga_vsync;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in__0[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in__0[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in__0[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in__0[1]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(slv_reg2[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(slv_reg2[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(slv_reg2[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(slv_reg2[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(slv_reg2[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg2[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg2[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(slv_reg2[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(slv_reg2[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(slv_reg2[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(slv_reg2[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(slv_reg2[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(slv_reg2[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(slv_reg2[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg2[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg2[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(slv_reg2[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(slv_reg2[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(slv_reg2[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(slv_reg2[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(slv_reg2[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(slv_reg2[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(slv_reg2[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg2[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(slv_reg2[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(slv_reg2[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(slv_reg2[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(slv_reg2[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg2[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg2[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hF0CCAA00)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(slv_reg2[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    led_INST_0
       (.I0(ov7670_n_5),
        .I1(ov7670_n_6),
        .I2(ov7670_n_7),
        .I3(ov7670_n_8),
        .O(led));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_wrapper ov7670
       (.D(reg_data_out[0]),
        .OV7670_DATA(OV7670_DATA),
        .OV7670_HREF(OV7670_HREF),
        .OV7670_PCLK(OV7670_PCLK),
        .OV7670_SIOC(OV7670_SIOC),
        .OV7670_SIOD(OV7670_SIOD),
        .OV7670_VSYNC(OV7670_VSYNC),
        .OV7670_XCLK(OV7670_XCLK),
        .Q(slv_reg1[15:0]),
        .axi_araddr(axi_araddr),
        .\busy_sr_reg[0] (ov7670_n_5),
        .\busy_sr_reg[0]_0 (ov7670_n_6),
        .\busy_sr_reg[0]_1 (ov7670_n_7),
        .\busy_sr_reg[0]_2 (ov7670_n_8),
        .capture_addr(capture_addr),
        .capture_data(capture_data),
        .capture_we(capture_we),
        .clk25(clk25),
        .clk50(clk50),
        .frame_addr(frame_addr),
        .frame_pixel(frame_pixel),
        .\slv_reg2_reg[0] (slv_reg2[0]),
        .\slv_reg3_reg[0] (slv_reg3[0]),
        .sysreset_n(sysreset_n),
        .vga_blue(vga_blue),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg1[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in__0[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in__0[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in__0[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in__0[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in__0[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in__0[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in__0[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in__0[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in__0[0]),
        .I3(p_0_in__0[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_capture
   (capture_we,
    capture_addr,
    capture_data,
    OV7670_PCLK,
    sysreset_n_0,
    OV7670_VSYNC,
    sysreset_n,
    OV7670_HREF,
    OV7670_DATA);
  output capture_we;
  output [18:0]capture_addr;
  output [11:0]capture_data;
  input OV7670_PCLK;
  input sysreset_n_0;
  input OV7670_VSYNC;
  input sysreset_n;
  input OV7670_HREF;
  input [7:0]OV7670_DATA;

  wire [7:0]OV7670_DATA;
  wire OV7670_HREF;
  wire OV7670_PCLK;
  wire OV7670_VSYNC;
  wire \address[0]_i_1__0_n_0 ;
  wire \address[10]_i_1_n_0 ;
  wire \address[11]_i_1_n_0 ;
  wire \address[12]_i_1_n_0 ;
  wire \address[13]_i_1_n_0 ;
  wire \address[14]_i_1_n_0 ;
  wire \address[15]_i_1_n_0 ;
  wire \address[16]_i_1_n_0 ;
  wire \address[17]_i_1_n_0 ;
  wire \address[18]_i_1_n_0 ;
  wire \address[1]_i_1_n_0 ;
  wire \address[2]_i_1_n_0 ;
  wire \address[3]_i_1_n_0 ;
  wire \address[4]_i_1_n_0 ;
  wire \address[5]_i_1_n_0 ;
  wire \address[6]_i_1_n_0 ;
  wire \address[7]_i_1_n_0 ;
  wire \address[8]_i_1_n_0 ;
  wire \address[9]_i_1_n_0 ;
  wire \address_next[0]_i_1_n_0 ;
  wire \address_next[0]_i_3_n_0 ;
  wire \address_next[0]_i_4_n_0 ;
  wire \address_next[0]_i_5_n_0 ;
  wire \address_next[0]_i_6_n_0 ;
  wire \address_next[0]_i_7_n_0 ;
  wire \address_next[12]_i_2_n_0 ;
  wire \address_next[12]_i_3_n_0 ;
  wire \address_next[12]_i_4_n_0 ;
  wire \address_next[12]_i_5_n_0 ;
  wire \address_next[16]_i_2_n_0 ;
  wire \address_next[16]_i_3_n_0 ;
  wire \address_next[16]_i_4_n_0 ;
  wire \address_next[4]_i_2_n_0 ;
  wire \address_next[4]_i_3_n_0 ;
  wire \address_next[4]_i_4_n_0 ;
  wire \address_next[4]_i_5_n_0 ;
  wire \address_next[8]_i_2_n_0 ;
  wire \address_next[8]_i_3_n_0 ;
  wire \address_next[8]_i_4_n_0 ;
  wire \address_next[8]_i_5_n_0 ;
  wire [18:0]address_next_reg;
  wire \address_next_reg[0]_i_2_n_0 ;
  wire \address_next_reg[0]_i_2_n_1 ;
  wire \address_next_reg[0]_i_2_n_2 ;
  wire \address_next_reg[0]_i_2_n_3 ;
  wire \address_next_reg[0]_i_2_n_4 ;
  wire \address_next_reg[0]_i_2_n_5 ;
  wire \address_next_reg[0]_i_2_n_6 ;
  wire \address_next_reg[0]_i_2_n_7 ;
  wire \address_next_reg[12]_i_1_n_0 ;
  wire \address_next_reg[12]_i_1_n_1 ;
  wire \address_next_reg[12]_i_1_n_2 ;
  wire \address_next_reg[12]_i_1_n_3 ;
  wire \address_next_reg[12]_i_1_n_4 ;
  wire \address_next_reg[12]_i_1_n_5 ;
  wire \address_next_reg[12]_i_1_n_6 ;
  wire \address_next_reg[12]_i_1_n_7 ;
  wire \address_next_reg[16]_i_1_n_2 ;
  wire \address_next_reg[16]_i_1_n_3 ;
  wire \address_next_reg[16]_i_1_n_5 ;
  wire \address_next_reg[16]_i_1_n_6 ;
  wire \address_next_reg[16]_i_1_n_7 ;
  wire \address_next_reg[4]_i_1_n_0 ;
  wire \address_next_reg[4]_i_1_n_1 ;
  wire \address_next_reg[4]_i_1_n_2 ;
  wire \address_next_reg[4]_i_1_n_3 ;
  wire \address_next_reg[4]_i_1_n_4 ;
  wire \address_next_reg[4]_i_1_n_5 ;
  wire \address_next_reg[4]_i_1_n_6 ;
  wire \address_next_reg[4]_i_1_n_7 ;
  wire \address_next_reg[8]_i_1_n_0 ;
  wire \address_next_reg[8]_i_1_n_1 ;
  wire \address_next_reg[8]_i_1_n_2 ;
  wire \address_next_reg[8]_i_1_n_3 ;
  wire \address_next_reg[8]_i_1_n_4 ;
  wire \address_next_reg[8]_i_1_n_5 ;
  wire \address_next_reg[8]_i_1_n_6 ;
  wire \address_next_reg[8]_i_1_n_7 ;
  wire [18:0]capture_addr;
  wire [11:0]capture_data;
  wire capture_we;
  wire [15:0]d_latch;
  wire d_latch_0;
  wire \dout[11]_i_1_n_0 ;
  wire p_0_in;
  wire sysreset_n;
  wire sysreset_n_0;
  wire \wr_hold[0]_i_1_n_0 ;
  wire \wr_hold[1]_i_1_n_0 ;
  wire \wr_hold_reg_n_0_[0] ;
  wire [3:2]\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_next_reg[16]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \address[0]_i_1__0 
       (.I0(address_next_reg[0]),
        .I1(OV7670_VSYNC),
        .O(\address[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[10]_i_1 
       (.I0(address_next_reg[10]),
        .I1(OV7670_VSYNC),
        .O(\address[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[11]_i_1 
       (.I0(address_next_reg[11]),
        .I1(OV7670_VSYNC),
        .O(\address[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[12]_i_1 
       (.I0(address_next_reg[12]),
        .I1(OV7670_VSYNC),
        .O(\address[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[13]_i_1 
       (.I0(address_next_reg[13]),
        .I1(OV7670_VSYNC),
        .O(\address[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[14]_i_1 
       (.I0(address_next_reg[14]),
        .I1(OV7670_VSYNC),
        .O(\address[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[15]_i_1 
       (.I0(address_next_reg[15]),
        .I1(OV7670_VSYNC),
        .O(\address[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[16]_i_1 
       (.I0(address_next_reg[16]),
        .I1(OV7670_VSYNC),
        .O(\address[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[17]_i_1 
       (.I0(address_next_reg[17]),
        .I1(OV7670_VSYNC),
        .O(\address[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[18]_i_1 
       (.I0(address_next_reg[18]),
        .I1(OV7670_VSYNC),
        .O(\address[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[1]_i_1 
       (.I0(address_next_reg[1]),
        .I1(OV7670_VSYNC),
        .O(\address[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[2]_i_1 
       (.I0(address_next_reg[2]),
        .I1(OV7670_VSYNC),
        .O(\address[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[3]_i_1 
       (.I0(address_next_reg[3]),
        .I1(OV7670_VSYNC),
        .O(\address[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[4]_i_1 
       (.I0(address_next_reg[4]),
        .I1(OV7670_VSYNC),
        .O(\address[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[5]_i_1 
       (.I0(address_next_reg[5]),
        .I1(OV7670_VSYNC),
        .O(\address[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[6]_i_1 
       (.I0(address_next_reg[6]),
        .I1(OV7670_VSYNC),
        .O(\address[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[7]_i_1 
       (.I0(address_next_reg[7]),
        .I1(OV7670_VSYNC),
        .O(\address[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[8]_i_1 
       (.I0(address_next_reg[8]),
        .I1(OV7670_VSYNC),
        .O(\address[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \address[9]_i_1 
       (.I0(address_next_reg[9]),
        .I1(OV7670_VSYNC),
        .O(\address[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \address_next[0]_i_1 
       (.I0(p_0_in),
        .I1(OV7670_VSYNC),
        .O(\address_next[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \address_next[0]_i_3 
       (.I0(OV7670_VSYNC),
        .O(\address_next[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[0]_i_4 
       (.I0(address_next_reg[3]),
        .I1(OV7670_VSYNC),
        .O(\address_next[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[0]_i_5 
       (.I0(address_next_reg[2]),
        .I1(OV7670_VSYNC),
        .O(\address_next[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[0]_i_6 
       (.I0(address_next_reg[1]),
        .I1(OV7670_VSYNC),
        .O(\address_next[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \address_next[0]_i_7 
       (.I0(address_next_reg[0]),
        .I1(OV7670_VSYNC),
        .O(\address_next[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[12]_i_2 
       (.I0(address_next_reg[15]),
        .I1(OV7670_VSYNC),
        .O(\address_next[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[12]_i_3 
       (.I0(address_next_reg[14]),
        .I1(OV7670_VSYNC),
        .O(\address_next[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[12]_i_4 
       (.I0(address_next_reg[13]),
        .I1(OV7670_VSYNC),
        .O(\address_next[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[12]_i_5 
       (.I0(address_next_reg[12]),
        .I1(OV7670_VSYNC),
        .O(\address_next[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[16]_i_2 
       (.I0(address_next_reg[18]),
        .I1(OV7670_VSYNC),
        .O(\address_next[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[16]_i_3 
       (.I0(address_next_reg[17]),
        .I1(OV7670_VSYNC),
        .O(\address_next[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[16]_i_4 
       (.I0(address_next_reg[16]),
        .I1(OV7670_VSYNC),
        .O(\address_next[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[4]_i_2 
       (.I0(address_next_reg[7]),
        .I1(OV7670_VSYNC),
        .O(\address_next[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[4]_i_3 
       (.I0(address_next_reg[6]),
        .I1(OV7670_VSYNC),
        .O(\address_next[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[4]_i_4 
       (.I0(address_next_reg[5]),
        .I1(OV7670_VSYNC),
        .O(\address_next[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[4]_i_5 
       (.I0(address_next_reg[4]),
        .I1(OV7670_VSYNC),
        .O(\address_next[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[8]_i_2 
       (.I0(address_next_reg[11]),
        .I1(OV7670_VSYNC),
        .O(\address_next[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[8]_i_3 
       (.I0(address_next_reg[10]),
        .I1(OV7670_VSYNC),
        .O(\address_next[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[8]_i_4 
       (.I0(address_next_reg[9]),
        .I1(OV7670_VSYNC),
        .O(\address_next[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address_next[8]_i_5 
       (.I0(address_next_reg[8]),
        .I1(OV7670_VSYNC),
        .O(\address_next[8]_i_5_n_0 ));
  FDCE \address_next_reg[0] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[0]_i_2_n_7 ),
        .Q(address_next_reg[0]));
  CARRY4 \address_next_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\address_next_reg[0]_i_2_n_0 ,\address_next_reg[0]_i_2_n_1 ,\address_next_reg[0]_i_2_n_2 ,\address_next_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\address_next[0]_i_3_n_0 }),
        .O({\address_next_reg[0]_i_2_n_4 ,\address_next_reg[0]_i_2_n_5 ,\address_next_reg[0]_i_2_n_6 ,\address_next_reg[0]_i_2_n_7 }),
        .S({\address_next[0]_i_4_n_0 ,\address_next[0]_i_5_n_0 ,\address_next[0]_i_6_n_0 ,\address_next[0]_i_7_n_0 }));
  FDCE \address_next_reg[10] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[8]_i_1_n_5 ),
        .Q(address_next_reg[10]));
  FDCE \address_next_reg[11] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[8]_i_1_n_4 ),
        .Q(address_next_reg[11]));
  FDCE \address_next_reg[12] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[12]_i_1_n_7 ),
        .Q(address_next_reg[12]));
  CARRY4 \address_next_reg[12]_i_1 
       (.CI(\address_next_reg[8]_i_1_n_0 ),
        .CO({\address_next_reg[12]_i_1_n_0 ,\address_next_reg[12]_i_1_n_1 ,\address_next_reg[12]_i_1_n_2 ,\address_next_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[12]_i_1_n_4 ,\address_next_reg[12]_i_1_n_5 ,\address_next_reg[12]_i_1_n_6 ,\address_next_reg[12]_i_1_n_7 }),
        .S({\address_next[12]_i_2_n_0 ,\address_next[12]_i_3_n_0 ,\address_next[12]_i_4_n_0 ,\address_next[12]_i_5_n_0 }));
  FDCE \address_next_reg[13] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[12]_i_1_n_6 ),
        .Q(address_next_reg[13]));
  FDCE \address_next_reg[14] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[12]_i_1_n_5 ),
        .Q(address_next_reg[14]));
  FDCE \address_next_reg[15] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[12]_i_1_n_4 ),
        .Q(address_next_reg[15]));
  FDCE \address_next_reg[16] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[16]_i_1_n_7 ),
        .Q(address_next_reg[16]));
  CARRY4 \address_next_reg[16]_i_1 
       (.CI(\address_next_reg[12]_i_1_n_0 ),
        .CO({\NLW_address_next_reg[16]_i_1_CO_UNCONNECTED [3:2],\address_next_reg[16]_i_1_n_2 ,\address_next_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_next_reg[16]_i_1_O_UNCONNECTED [3],\address_next_reg[16]_i_1_n_5 ,\address_next_reg[16]_i_1_n_6 ,\address_next_reg[16]_i_1_n_7 }),
        .S({1'b0,\address_next[16]_i_2_n_0 ,\address_next[16]_i_3_n_0 ,\address_next[16]_i_4_n_0 }));
  FDCE \address_next_reg[17] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[16]_i_1_n_6 ),
        .Q(address_next_reg[17]));
  FDCE \address_next_reg[18] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[16]_i_1_n_5 ),
        .Q(address_next_reg[18]));
  FDCE \address_next_reg[1] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[0]_i_2_n_6 ),
        .Q(address_next_reg[1]));
  FDCE \address_next_reg[2] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[0]_i_2_n_5 ),
        .Q(address_next_reg[2]));
  FDCE \address_next_reg[3] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[0]_i_2_n_4 ),
        .Q(address_next_reg[3]));
  FDCE \address_next_reg[4] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[4]_i_1_n_7 ),
        .Q(address_next_reg[4]));
  CARRY4 \address_next_reg[4]_i_1 
       (.CI(\address_next_reg[0]_i_2_n_0 ),
        .CO({\address_next_reg[4]_i_1_n_0 ,\address_next_reg[4]_i_1_n_1 ,\address_next_reg[4]_i_1_n_2 ,\address_next_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[4]_i_1_n_4 ,\address_next_reg[4]_i_1_n_5 ,\address_next_reg[4]_i_1_n_6 ,\address_next_reg[4]_i_1_n_7 }),
        .S({\address_next[4]_i_2_n_0 ,\address_next[4]_i_3_n_0 ,\address_next[4]_i_4_n_0 ,\address_next[4]_i_5_n_0 }));
  FDCE \address_next_reg[5] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[4]_i_1_n_6 ),
        .Q(address_next_reg[5]));
  FDCE \address_next_reg[6] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[4]_i_1_n_5 ),
        .Q(address_next_reg[6]));
  FDCE \address_next_reg[7] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[4]_i_1_n_4 ),
        .Q(address_next_reg[7]));
  FDCE \address_next_reg[8] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[8]_i_1_n_7 ),
        .Q(address_next_reg[8]));
  CARRY4 \address_next_reg[8]_i_1 
       (.CI(\address_next_reg[4]_i_1_n_0 ),
        .CO({\address_next_reg[8]_i_1_n_0 ,\address_next_reg[8]_i_1_n_1 ,\address_next_reg[8]_i_1_n_2 ,\address_next_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_next_reg[8]_i_1_n_4 ,\address_next_reg[8]_i_1_n_5 ,\address_next_reg[8]_i_1_n_6 ,\address_next_reg[8]_i_1_n_7 }),
        .S({\address_next[8]_i_2_n_0 ,\address_next[8]_i_3_n_0 ,\address_next[8]_i_4_n_0 ,\address_next[8]_i_5_n_0 }));
  FDCE \address_next_reg[9] 
       (.C(OV7670_PCLK),
        .CE(\address_next[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_next_reg[8]_i_1_n_6 ),
        .Q(address_next_reg[9]));
  FDCE \address_reg[0] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[0]_i_1__0_n_0 ),
        .Q(capture_addr[0]));
  FDCE \address_reg[10] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[10]_i_1_n_0 ),
        .Q(capture_addr[10]));
  FDCE \address_reg[11] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[11]_i_1_n_0 ),
        .Q(capture_addr[11]));
  FDCE \address_reg[12] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[12]_i_1_n_0 ),
        .Q(capture_addr[12]));
  FDCE \address_reg[13] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[13]_i_1_n_0 ),
        .Q(capture_addr[13]));
  FDCE \address_reg[14] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[14]_i_1_n_0 ),
        .Q(capture_addr[14]));
  FDCE \address_reg[15] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[15]_i_1_n_0 ),
        .Q(capture_addr[15]));
  FDCE \address_reg[16] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[16]_i_1_n_0 ),
        .Q(capture_addr[16]));
  FDCE \address_reg[17] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[17]_i_1_n_0 ),
        .Q(capture_addr[17]));
  FDCE \address_reg[18] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[18]_i_1_n_0 ),
        .Q(capture_addr[18]));
  FDCE \address_reg[1] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[1]_i_1_n_0 ),
        .Q(capture_addr[1]));
  FDCE \address_reg[2] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[2]_i_1_n_0 ),
        .Q(capture_addr[2]));
  FDCE \address_reg[3] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[3]_i_1_n_0 ),
        .Q(capture_addr[3]));
  FDCE \address_reg[4] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[4]_i_1_n_0 ),
        .Q(capture_addr[4]));
  FDCE \address_reg[5] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[5]_i_1_n_0 ),
        .Q(capture_addr[5]));
  FDCE \address_reg[6] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[6]_i_1_n_0 ),
        .Q(capture_addr[6]));
  FDCE \address_reg[7] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[7]_i_1_n_0 ),
        .Q(capture_addr[7]));
  FDCE \address_reg[8] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[8]_i_1_n_0 ),
        .Q(capture_addr[8]));
  FDCE \address_reg[9] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\address[9]_i_1_n_0 ),
        .Q(capture_addr[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \d_latch[15]_i_1 
       (.I0(OV7670_VSYNC),
        .O(d_latch_0));
  FDCE \d_latch_reg[0] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[0]),
        .Q(d_latch[0]));
  FDCE \d_latch_reg[10] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(d_latch[2]),
        .Q(d_latch[10]));
  FDCE \d_latch_reg[12] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(d_latch[4]),
        .Q(d_latch[12]));
  FDCE \d_latch_reg[13] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(d_latch[5]),
        .Q(d_latch[13]));
  FDCE \d_latch_reg[14] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(d_latch[6]),
        .Q(d_latch[14]));
  FDCE \d_latch_reg[15] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(d_latch[7]),
        .Q(d_latch[15]));
  FDCE \d_latch_reg[1] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[1]),
        .Q(d_latch[1]));
  FDCE \d_latch_reg[2] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[2]),
        .Q(d_latch[2]));
  FDCE \d_latch_reg[3] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[3]),
        .Q(d_latch[3]));
  FDCE \d_latch_reg[4] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[4]),
        .Q(d_latch[4]));
  FDCE \d_latch_reg[5] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[5]),
        .Q(d_latch[5]));
  FDCE \d_latch_reg[6] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[6]),
        .Q(d_latch[6]));
  FDCE \d_latch_reg[7] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(OV7670_DATA[7]),
        .Q(d_latch[7]));
  FDCE \d_latch_reg[8] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(d_latch[0]),
        .Q(d_latch[8]));
  FDCE \d_latch_reg[9] 
       (.C(OV7670_PCLK),
        .CE(d_latch_0),
        .CLR(sysreset_n_0),
        .D(d_latch[1]),
        .Q(d_latch[9]));
  LUT2 #(
    .INIT(4'h2)) 
    \dout[11]_i_1 
       (.I0(sysreset_n),
        .I1(OV7670_VSYNC),
        .O(\dout[11]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[1]),
        .Q(capture_data[0]),
        .R(1'b0));
  FDRE \dout_reg[10] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[14]),
        .Q(capture_data[10]),
        .R(1'b0));
  FDRE \dout_reg[11] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[15]),
        .Q(capture_data[11]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[2]),
        .Q(capture_data[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[3]),
        .Q(capture_data[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[4]),
        .Q(capture_data[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[7]),
        .Q(capture_data[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[8]),
        .Q(capture_data[5]),
        .R(1'b0));
  FDRE \dout_reg[6] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[9]),
        .Q(capture_data[6]),
        .R(1'b0));
  FDRE \dout_reg[7] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[10]),
        .Q(capture_data[7]),
        .R(1'b0));
  FDRE \dout_reg[8] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[12]),
        .Q(capture_data[8]),
        .R(1'b0));
  FDRE \dout_reg[9] 
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(d_latch[13]),
        .Q(capture_data[9]),
        .R(1'b0));
  FDRE we_reg
       (.C(OV7670_PCLK),
        .CE(\dout[11]_i_1_n_0 ),
        .D(p_0_in),
        .Q(capture_we),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wr_hold[0]_i_1 
       (.I0(\wr_hold_reg_n_0_[0] ),
        .I1(OV7670_HREF),
        .I2(OV7670_VSYNC),
        .O(\wr_hold[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wr_hold[1]_i_1 
       (.I0(\wr_hold_reg_n_0_[0] ),
        .I1(OV7670_VSYNC),
        .O(\wr_hold[1]_i_1_n_0 ));
  FDCE \wr_hold_reg[0] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\wr_hold[0]_i_1_n_0 ),
        .Q(\wr_hold_reg_n_0_[0] ));
  FDCE \wr_hold_reg[1] 
       (.C(OV7670_PCLK),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(\wr_hold[1]_i_1_n_0 ),
        .Q(p_0_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_controller
   (OV7670_XCLK,
    OV7670_SIOC,
    \busy_sr_reg[0] ,
    \busy_sr_reg[0]_0 ,
    \busy_sr_reg[0]_1 ,
    \busy_sr_reg[0]_2 ,
    OV7670_SIOD,
    D,
    \divider_reg[1] ,
    clk50,
    Q,
    \slv_reg2_reg[0] ,
    \slv_reg3_reg[0] ,
    axi_araddr,
    sysreset_n);
  output OV7670_XCLK;
  output OV7670_SIOC;
  output \busy_sr_reg[0] ;
  output \busy_sr_reg[0]_0 ;
  output \busy_sr_reg[0]_1 ;
  output \busy_sr_reg[0]_2 ;
  output OV7670_SIOD;
  output [0:0]D;
  output \divider_reg[1] ;
  input clk50;
  input [15:0]Q;
  input [0:0]\slv_reg2_reg[0] ;
  input [0:0]\slv_reg3_reg[0] ;
  input [1:0]axi_araddr;
  input sysreset_n;

  wire [0:0]D;
  wire OV7670_SIOC;
  wire OV7670_SIOD;
  wire OV7670_XCLK;
  wire [15:0]Q;
  wire [1:0]axi_araddr;
  wire \busy_sr_reg[0] ;
  wire \busy_sr_reg[0]_0 ;
  wire \busy_sr_reg[0]_1 ;
  wire \busy_sr_reg[0]_2 ;
  wire clk50;
  wire \divider_reg[1] ;
  wire [0:0]\slv_reg2_reg[0] ;
  wire [0:0]\slv_reg3_reg[0] ;
  wire sys_clk_i_1_n_0;
  wire sysreset_n;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_sender sender
       (.D(D),
        .OV7670_SIOC(OV7670_SIOC),
        .OV7670_SIOD(OV7670_SIOD),
        .Q(Q),
        .axi_araddr(axi_araddr),
        .\busy_sr_reg[0]_0 (\busy_sr_reg[0] ),
        .\busy_sr_reg[0]_1 (\busy_sr_reg[0]_0 ),
        .\busy_sr_reg[0]_2 (\busy_sr_reg[0]_1 ),
        .\busy_sr_reg[0]_3 (\busy_sr_reg[0]_2 ),
        .clk50(clk50),
        .\divider_reg[1]_0 (\divider_reg[1] ),
        .\slv_reg2_reg[0] (\slv_reg2_reg[0] ),
        .\slv_reg3_reg[0] (\slv_reg3_reg[0] ),
        .sysreset_n(sysreset_n));
  LUT1 #(
    .INIT(2'h1)) 
    sys_clk_i_1
       (.I0(OV7670_XCLK),
        .O(sys_clk_i_1_n_0));
  FDRE sys_clk_reg
       (.C(clk50),
        .CE(1'b1),
        .D(sys_clk_i_1_n_0),
        .Q(OV7670_XCLK),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_wrapper
   (OV7670_XCLK,
    vga_hsync,
    vga_vsync,
    capture_we,
    OV7670_SIOC,
    \busy_sr_reg[0] ,
    \busy_sr_reg[0]_0 ,
    \busy_sr_reg[0]_1 ,
    \busy_sr_reg[0]_2 ,
    OV7670_SIOD,
    D,
    capture_addr,
    capture_data,
    vga_red,
    vga_green,
    vga_blue,
    frame_addr,
    clk50,
    clk25,
    sysreset_n,
    OV7670_PCLK,
    OV7670_VSYNC,
    Q,
    OV7670_HREF,
    \slv_reg2_reg[0] ,
    \slv_reg3_reg[0] ,
    axi_araddr,
    OV7670_DATA,
    frame_pixel);
  output OV7670_XCLK;
  output vga_hsync;
  output vga_vsync;
  output capture_we;
  output OV7670_SIOC;
  output \busy_sr_reg[0] ;
  output \busy_sr_reg[0]_0 ;
  output \busy_sr_reg[0]_1 ;
  output \busy_sr_reg[0]_2 ;
  output OV7670_SIOD;
  output [0:0]D;
  output [18:0]capture_addr;
  output [11:0]capture_data;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output [18:0]frame_addr;
  input clk50;
  input clk25;
  input sysreset_n;
  input OV7670_PCLK;
  input OV7670_VSYNC;
  input [15:0]Q;
  input OV7670_HREF;
  input [0:0]\slv_reg2_reg[0] ;
  input [0:0]\slv_reg3_reg[0] ;
  input [1:0]axi_araddr;
  input [7:0]OV7670_DATA;
  input [11:0]frame_pixel;

  wire [0:0]D;
  wire [7:0]OV7670_DATA;
  wire OV7670_HREF;
  wire OV7670_PCLK;
  wire OV7670_SIOC;
  wire OV7670_SIOD;
  wire OV7670_VSYNC;
  wire OV7670_XCLK;
  wire [15:0]Q;
  wire [1:0]axi_araddr;
  wire \busy_sr_reg[0] ;
  wire \busy_sr_reg[0]_0 ;
  wire \busy_sr_reg[0]_1 ;
  wire \busy_sr_reg[0]_2 ;
  wire [18:0]capture_addr;
  wire [11:0]capture_data;
  wire capture_we;
  wire clk25;
  wire clk50;
  wire controller_n_8;
  wire [18:0]frame_addr;
  wire [11:0]frame_pixel;
  wire [0:0]\slv_reg2_reg[0] ;
  wire [0:0]\slv_reg3_reg[0] ;
  wire sysreset_n;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire vga_hsync;
  wire [3:0]vga_red;
  wire vga_vsync;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_capture capture
       (.OV7670_DATA(OV7670_DATA),
        .OV7670_HREF(OV7670_HREF),
        .OV7670_PCLK(OV7670_PCLK),
        .OV7670_VSYNC(OV7670_VSYNC),
        .capture_addr(capture_addr),
        .capture_data(capture_data),
        .capture_we(capture_we),
        .sysreset_n(sysreset_n),
        .sysreset_n_0(controller_n_8));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_controller controller
       (.D(D),
        .OV7670_SIOC(OV7670_SIOC),
        .OV7670_SIOD(OV7670_SIOD),
        .OV7670_XCLK(OV7670_XCLK),
        .Q(Q),
        .axi_araddr(axi_araddr),
        .\busy_sr_reg[0] (\busy_sr_reg[0] ),
        .\busy_sr_reg[0]_0 (\busy_sr_reg[0]_0 ),
        .\busy_sr_reg[0]_1 (\busy_sr_reg[0]_1 ),
        .\busy_sr_reg[0]_2 (\busy_sr_reg[0]_2 ),
        .clk50(clk50),
        .\divider_reg[1] (controller_n_8),
        .\slv_reg2_reg[0] (\slv_reg2_reg[0] ),
        .\slv_reg3_reg[0] (\slv_reg3_reg[0] ),
        .sysreset_n(sysreset_n));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga vga
       (.clk25(clk25),
        .frame_addr(frame_addr),
        .frame_pixel(frame_pixel),
        .sysreset_n(sysreset_n),
        .sysreset_n_0(controller_n_8),
        .vga_blue(vga_blue),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync));
endmodule

(* CHECK_LICENSE_TYPE = "embsys_CameraIP_0_3,CameraIP_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "CameraIP_v1_0,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk50,
    clk25,
    sysreset_n,
    OV7670_VSYNC,
    OV7670_HREF,
    OV7670_PCLK,
    OV7670_DATA,
    OV7670_SIOD,
    OV7670_SIOC,
    OV7670_XCLK,
    OV7670_RESET,
    OV7670_PWDN,
    vga_red,
    vga_green,
    vga_blue,
    vga_hsync,
    vga_vsync,
    led,
    frame_pixel,
    frame_addr,
    capture_addr,
    capture_data,
    capture_we,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 OV7670_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME OV7670_RESET, POLARITY ACTIVE_LOW" *) output OV7670_RESET;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]OV7670_DATA;
  wire OV7670_HREF;
  wire OV7670_PCLK;
  wire OV7670_SIOC;
  wire OV7670_SIOD;
  wire OV7670_VSYNC;
  wire OV7670_XCLK;
  wire [18:0]capture_addr;
  wire [11:0]capture_data;
  wire capture_we;
  wire clk25;
  wire clk50;
  wire [18:0]frame_addr;
  wire [11:0]frame_pixel;
  wire led;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire sysreset_n;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire vga_hsync;
  wire [3:0]vga_red;
  wire vga_vsync;

  assign OV7670_PWDN = \<const0> ;
  assign OV7670_RESET = \<const1> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0 inst
       (.OV7670_DATA(OV7670_DATA),
        .OV7670_HREF(OV7670_HREF),
        .OV7670_PCLK(OV7670_PCLK),
        .OV7670_SIOC(OV7670_SIOC),
        .OV7670_SIOD(OV7670_SIOD),
        .OV7670_VSYNC(OV7670_VSYNC),
        .OV7670_XCLK(OV7670_XCLK),
        .S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .capture_addr(capture_addr),
        .capture_data(capture_data),
        .capture_we(capture_we),
        .clk25(clk25),
        .clk50(clk50),
        .frame_addr(frame_addr),
        .frame_pixel(frame_pixel),
        .led(led),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid),
        .sysreset_n(sysreset_n),
        .vga_blue(vga_blue),
        .vga_green(vga_green),
        .vga_hsync(vga_hsync),
        .vga_red(vga_red),
        .vga_vsync(vga_vsync));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_sender
   (OV7670_SIOC,
    \busy_sr_reg[0]_0 ,
    \busy_sr_reg[0]_1 ,
    \busy_sr_reg[0]_2 ,
    \busy_sr_reg[0]_3 ,
    OV7670_SIOD,
    D,
    \divider_reg[1]_0 ,
    clk50,
    Q,
    \slv_reg2_reg[0] ,
    \slv_reg3_reg[0] ,
    axi_araddr,
    sysreset_n);
  output OV7670_SIOC;
  output \busy_sr_reg[0]_0 ;
  output \busy_sr_reg[0]_1 ;
  output \busy_sr_reg[0]_2 ;
  output \busy_sr_reg[0]_3 ;
  output OV7670_SIOD;
  output [0:0]D;
  output \divider_reg[1]_0 ;
  input clk50;
  input [15:0]Q;
  input [0:0]\slv_reg2_reg[0] ;
  input [0:0]\slv_reg3_reg[0] ;
  input [1:0]axi_araddr;
  input sysreset_n;

  wire [0:0]D;
  wire OV7670_SIOC;
  wire OV7670_SIOD;
  wire OV7670_SIOD_INST_0_i_1_n_0;
  wire [15:0]Q;
  wire [1:0]axi_araddr;
  wire busy_sr0;
  wire \busy_sr[31]_i_3_n_0 ;
  wire \busy_sr[31]_i_4_n_0 ;
  wire \busy_sr[31]_i_5_n_0 ;
  wire \busy_sr_reg[0]_0 ;
  wire \busy_sr_reg[0]_1 ;
  wire \busy_sr_reg[0]_2 ;
  wire \busy_sr_reg[0]_3 ;
  wire \busy_sr_reg_n_0_[0] ;
  wire \busy_sr_reg_n_0_[10] ;
  wire \busy_sr_reg_n_0_[11] ;
  wire \busy_sr_reg_n_0_[12] ;
  wire \busy_sr_reg_n_0_[13] ;
  wire \busy_sr_reg_n_0_[14] ;
  wire \busy_sr_reg_n_0_[15] ;
  wire \busy_sr_reg_n_0_[16] ;
  wire \busy_sr_reg_n_0_[17] ;
  wire \busy_sr_reg_n_0_[18] ;
  wire \busy_sr_reg_n_0_[1] ;
  wire \busy_sr_reg_n_0_[21] ;
  wire \busy_sr_reg_n_0_[22] ;
  wire \busy_sr_reg_n_0_[23] ;
  wire \busy_sr_reg_n_0_[24] ;
  wire \busy_sr_reg_n_0_[25] ;
  wire \busy_sr_reg_n_0_[26] ;
  wire \busy_sr_reg_n_0_[27] ;
  wire \busy_sr_reg_n_0_[28] ;
  wire \busy_sr_reg_n_0_[29] ;
  wire \busy_sr_reg_n_0_[2] ;
  wire \busy_sr_reg_n_0_[30] ;
  wire \busy_sr_reg_n_0_[3] ;
  wire \busy_sr_reg_n_0_[4] ;
  wire \busy_sr_reg_n_0_[5] ;
  wire \busy_sr_reg_n_0_[6] ;
  wire \busy_sr_reg_n_0_[7] ;
  wire \busy_sr_reg_n_0_[8] ;
  wire \busy_sr_reg_n_0_[9] ;
  wire clk50;
  wire [31:31]data_sr;
  wire \data_sr[10]_i_1_n_0 ;
  wire \data_sr[11]_i_1_n_0 ;
  wire \data_sr[12]_i_1_n_0 ;
  wire \data_sr[13]_i_1_n_0 ;
  wire \data_sr[14]_i_1_n_0 ;
  wire \data_sr[15]_i_1_n_0 ;
  wire \data_sr[16]_i_1_n_0 ;
  wire \data_sr[17]_i_1_n_0 ;
  wire \data_sr[18]_i_1_n_0 ;
  wire \data_sr[19]_i_1_n_0 ;
  wire \data_sr[20]_i_1_n_0 ;
  wire \data_sr[21]_i_1_n_0 ;
  wire \data_sr[22]_i_1_n_0 ;
  wire \data_sr[23]_i_1_n_0 ;
  wire \data_sr[24]_i_1_n_0 ;
  wire \data_sr[25]_i_1_n_0 ;
  wire \data_sr[26]_i_1_n_0 ;
  wire \data_sr[27]_i_1_n_0 ;
  wire \data_sr[28]_i_1_n_0 ;
  wire \data_sr[29]_i_1_n_0 ;
  wire \data_sr[2]_i_1_n_0 ;
  wire \data_sr[30]_i_1_n_0 ;
  wire \data_sr[31]_i_1_n_0 ;
  wire \data_sr[3]_i_1_n_0 ;
  wire \data_sr[4]_i_1_n_0 ;
  wire \data_sr[5]_i_1_n_0 ;
  wire \data_sr[6]_i_1_n_0 ;
  wire \data_sr[7]_i_1_n_0 ;
  wire \data_sr[8]_i_1_n_0 ;
  wire \data_sr[9]_i_1_n_0 ;
  wire \data_sr_reg_n_0_[10] ;
  wire \data_sr_reg_n_0_[11] ;
  wire \data_sr_reg_n_0_[12] ;
  wire \data_sr_reg_n_0_[13] ;
  wire \data_sr_reg_n_0_[14] ;
  wire \data_sr_reg_n_0_[15] ;
  wire \data_sr_reg_n_0_[16] ;
  wire \data_sr_reg_n_0_[17] ;
  wire \data_sr_reg_n_0_[18] ;
  wire \data_sr_reg_n_0_[19] ;
  wire \data_sr_reg_n_0_[1] ;
  wire \data_sr_reg_n_0_[20] ;
  wire \data_sr_reg_n_0_[21] ;
  wire \data_sr_reg_n_0_[22] ;
  wire \data_sr_reg_n_0_[23] ;
  wire \data_sr_reg_n_0_[24] ;
  wire \data_sr_reg_n_0_[25] ;
  wire \data_sr_reg_n_0_[26] ;
  wire \data_sr_reg_n_0_[27] ;
  wire \data_sr_reg_n_0_[28] ;
  wire \data_sr_reg_n_0_[29] ;
  wire \data_sr_reg_n_0_[2] ;
  wire \data_sr_reg_n_0_[30] ;
  wire \data_sr_reg_n_0_[3] ;
  wire \data_sr_reg_n_0_[4] ;
  wire \data_sr_reg_n_0_[5] ;
  wire \data_sr_reg_n_0_[6] ;
  wire \data_sr_reg_n_0_[7] ;
  wire \data_sr_reg_n_0_[8] ;
  wire \data_sr_reg_n_0_[9] ;
  wire \divider[7]_i_1_n_0 ;
  wire \divider[7]_i_3_n_0 ;
  wire \divider_reg[1]_0 ;
  wire [5:0]divider_reg__0;
  wire [7:0]p_0_in;
  wire [1:0]p_0_in_1;
  wire [31:0]p_1_in;
  wire [1:0]p_1_in_0;
  wire p_2_in;
  wire sioc_i_1_n_0;
  wire sioc_i_2_n_0;
  wire sioc_i_3_n_0;
  wire sioc_i_4_n_0;
  wire sioc_i_5_n_0;
  wire [0:0]\slv_reg2_reg[0] ;
  wire [0:0]\slv_reg3_reg[0] ;
  wire sysreset_n;
  wire taken;
  wire taken_i_1_n_0;

  LUT2 #(
    .INIT(4'h8)) 
    OV7670_SIOD_INST_0
       (.I0(data_sr),
        .I1(OV7670_SIOD_INST_0_i_1_n_0),
        .O(OV7670_SIOD));
  LUT6 #(
    .INIT(64'hB0BBB0BB0000B0BB)) 
    OV7670_SIOD_INST_0_i_1
       (.I0(\busy_sr_reg_n_0_[28] ),
        .I1(\busy_sr_reg_n_0_[29] ),
        .I2(p_1_in_0[0]),
        .I3(p_1_in_0[1]),
        .I4(\busy_sr_reg_n_0_[11] ),
        .I5(\busy_sr_reg_n_0_[10] ),
        .O(OV7670_SIOD_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \address[18]_i_2 
       (.I0(sysreset_n),
        .O(\divider_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFF00F0F0AAAACCCC)) 
    \axi_rdata[0]_i_1 
       (.I0(Q[0]),
        .I1(taken),
        .I2(\slv_reg2_reg[0] ),
        .I3(\slv_reg3_reg[0] ),
        .I4(axi_araddr[0]),
        .I5(axi_araddr[1]),
        .O(D));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \busy_sr[0]_i_1 
       (.I0(\busy_sr_reg[0]_3 ),
        .I1(\busy_sr_reg[0]_2 ),
        .I2(\busy_sr_reg[0]_1 ),
        .I3(\busy_sr_reg[0]_0 ),
        .I4(p_2_in),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[10]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[9] ),
        .I2(p_1_in[0]),
        .O(p_1_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[11]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[10] ),
        .I2(p_1_in[0]),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[12]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[11] ),
        .I2(p_1_in[0]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[13]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[12] ),
        .I2(p_1_in[0]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[14]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[13] ),
        .I2(p_1_in[0]),
        .O(p_1_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[15]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[14] ),
        .I2(p_1_in[0]),
        .O(p_1_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[16]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[15] ),
        .I2(p_1_in[0]),
        .O(p_1_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[17]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[16] ),
        .I2(p_1_in[0]),
        .O(p_1_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[18]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[17] ),
        .I2(p_1_in[0]),
        .O(p_1_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[19]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[18] ),
        .I2(p_1_in[0]),
        .O(p_1_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[1]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[0] ),
        .I2(p_1_in[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[20]_i_1 
       (.I0(p_2_in),
        .I1(p_1_in_0[0]),
        .I2(p_1_in[0]),
        .O(p_1_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[21]_i_1 
       (.I0(p_2_in),
        .I1(p_1_in_0[1]),
        .I2(p_1_in[0]),
        .O(p_1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[22]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[21] ),
        .I2(p_1_in[0]),
        .O(p_1_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[23]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[22] ),
        .I2(p_1_in[0]),
        .O(p_1_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[24]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[23] ),
        .I2(p_1_in[0]),
        .O(p_1_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[25]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[24] ),
        .I2(p_1_in[0]),
        .O(p_1_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[26]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[25] ),
        .I2(p_1_in[0]),
        .O(p_1_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[27]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[26] ),
        .I2(p_1_in[0]),
        .O(p_1_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[28]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[27] ),
        .I2(p_1_in[0]),
        .O(p_1_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[29]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[28] ),
        .I2(p_1_in[0]),
        .O(p_1_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[2]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[1] ),
        .I2(p_1_in[0]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[30]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[29] ),
        .I2(p_1_in[0]),
        .O(p_1_in[30]));
  LUT3 #(
    .INIT(8'h4F)) 
    \busy_sr[31]_i_1 
       (.I0(\busy_sr[31]_i_3_n_0 ),
        .I1(p_1_in[0]),
        .I2(\busy_sr[31]_i_4_n_0 ),
        .O(busy_sr0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[31]_i_2 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[30] ),
        .I2(p_1_in[0]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \busy_sr[31]_i_3 
       (.I0(divider_reg__0[2]),
        .I1(divider_reg__0[3]),
        .I2(divider_reg__0[0]),
        .I3(divider_reg__0[1]),
        .I4(\busy_sr[31]_i_5_n_0 ),
        .O(\busy_sr[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    \busy_sr[31]_i_4 
       (.I0(p_2_in),
        .I1(p_0_in_1[1]),
        .I2(p_0_in_1[0]),
        .I3(\divider[7]_i_3_n_0 ),
        .O(\busy_sr[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \busy_sr[31]_i_5 
       (.I0(divider_reg__0[5]),
        .I1(divider_reg__0[4]),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[0]),
        .O(\busy_sr[31]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[3]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[2] ),
        .I2(p_1_in[0]),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[4]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[3] ),
        .I2(p_1_in[0]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[5]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[4] ),
        .I2(p_1_in[0]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[6]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[5] ),
        .I2(p_1_in[0]),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[7]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[6] ),
        .I2(p_1_in[0]),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[8]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[7] ),
        .I2(p_1_in[0]),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \busy_sr[9]_i_1 
       (.I0(p_2_in),
        .I1(\busy_sr_reg_n_0_[8] ),
        .I2(p_1_in[0]),
        .O(p_1_in[9]));
  FDCE \busy_sr_reg[0] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[0]),
        .Q(\busy_sr_reg_n_0_[0] ));
  FDCE \busy_sr_reg[10] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[10]),
        .Q(\busy_sr_reg_n_0_[10] ));
  FDCE \busy_sr_reg[11] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[11]),
        .Q(\busy_sr_reg_n_0_[11] ));
  FDCE \busy_sr_reg[12] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[12]),
        .Q(\busy_sr_reg_n_0_[12] ));
  FDCE \busy_sr_reg[13] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[13]),
        .Q(\busy_sr_reg_n_0_[13] ));
  FDCE \busy_sr_reg[14] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[14]),
        .Q(\busy_sr_reg_n_0_[14] ));
  FDCE \busy_sr_reg[15] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[15]),
        .Q(\busy_sr_reg_n_0_[15] ));
  FDCE \busy_sr_reg[16] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[16]),
        .Q(\busy_sr_reg_n_0_[16] ));
  FDCE \busy_sr_reg[17] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[17]),
        .Q(\busy_sr_reg_n_0_[17] ));
  FDCE \busy_sr_reg[18] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[18]),
        .Q(\busy_sr_reg_n_0_[18] ));
  FDCE \busy_sr_reg[19] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[19]),
        .Q(p_1_in_0[0]));
  FDCE \busy_sr_reg[1] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[1]),
        .Q(\busy_sr_reg_n_0_[1] ));
  FDCE \busy_sr_reg[20] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[20]),
        .Q(p_1_in_0[1]));
  FDCE \busy_sr_reg[21] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[21]),
        .Q(\busy_sr_reg_n_0_[21] ));
  FDCE \busy_sr_reg[22] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[22]),
        .Q(\busy_sr_reg_n_0_[22] ));
  FDCE \busy_sr_reg[23] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[23]),
        .Q(\busy_sr_reg_n_0_[23] ));
  FDCE \busy_sr_reg[24] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[24]),
        .Q(\busy_sr_reg_n_0_[24] ));
  FDCE \busy_sr_reg[25] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[25]),
        .Q(\busy_sr_reg_n_0_[25] ));
  FDCE \busy_sr_reg[26] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[26]),
        .Q(\busy_sr_reg_n_0_[26] ));
  FDCE \busy_sr_reg[27] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[27]),
        .Q(\busy_sr_reg_n_0_[27] ));
  FDCE \busy_sr_reg[28] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[28]),
        .Q(\busy_sr_reg_n_0_[28] ));
  FDCE \busy_sr_reg[29] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[29]),
        .Q(\busy_sr_reg_n_0_[29] ));
  FDCE \busy_sr_reg[2] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[2]),
        .Q(\busy_sr_reg_n_0_[2] ));
  FDCE \busy_sr_reg[30] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[30]),
        .Q(\busy_sr_reg_n_0_[30] ));
  FDCE \busy_sr_reg[31] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[31]),
        .Q(p_2_in));
  FDCE \busy_sr_reg[3] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[3]),
        .Q(\busy_sr_reg_n_0_[3] ));
  FDCE \busy_sr_reg[4] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[4]),
        .Q(\busy_sr_reg_n_0_[4] ));
  FDCE \busy_sr_reg[5] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[5]),
        .Q(\busy_sr_reg_n_0_[5] ));
  FDCE \busy_sr_reg[6] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[6]),
        .Q(\busy_sr_reg_n_0_[6] ));
  FDCE \busy_sr_reg[7] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[7]),
        .Q(\busy_sr_reg_n_0_[7] ));
  FDCE \busy_sr_reg[8] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[8]),
        .Q(\busy_sr_reg_n_0_[8] ));
  FDCE \busy_sr_reg[9] 
       (.C(clk50),
        .CE(busy_sr0),
        .CLR(\divider_reg[1]_0 ),
        .D(p_1_in[9]),
        .Q(\busy_sr_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[10]_i_1 
       (.I0(\data_sr_reg_n_0_[9] ),
        .I1(p_2_in),
        .I2(Q[7]),
        .O(\data_sr[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[11]_i_1 
       (.I0(\data_sr_reg_n_0_[10] ),
        .I1(p_2_in),
        .O(\data_sr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[12]_i_1 
       (.I0(\data_sr_reg_n_0_[11] ),
        .I1(p_2_in),
        .I2(Q[8]),
        .O(\data_sr[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[13]_i_1 
       (.I0(\data_sr_reg_n_0_[12] ),
        .I1(p_2_in),
        .I2(Q[9]),
        .O(\data_sr[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[14]_i_1 
       (.I0(\data_sr_reg_n_0_[13] ),
        .I1(p_2_in),
        .I2(Q[10]),
        .O(\data_sr[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[15]_i_1 
       (.I0(\data_sr_reg_n_0_[14] ),
        .I1(p_2_in),
        .I2(Q[11]),
        .O(\data_sr[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[16]_i_1 
       (.I0(\data_sr_reg_n_0_[15] ),
        .I1(p_2_in),
        .I2(Q[12]),
        .O(\data_sr[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[17]_i_1 
       (.I0(\data_sr_reg_n_0_[16] ),
        .I1(p_2_in),
        .I2(Q[13]),
        .O(\data_sr[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[18]_i_1 
       (.I0(\data_sr_reg_n_0_[17] ),
        .I1(p_2_in),
        .I2(Q[14]),
        .O(\data_sr[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[19]_i_1 
       (.I0(\data_sr_reg_n_0_[18] ),
        .I1(p_2_in),
        .I2(Q[15]),
        .O(\data_sr[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[20]_i_1 
       (.I0(\data_sr_reg_n_0_[19] ),
        .I1(p_2_in),
        .O(\data_sr[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[21]_i_1 
       (.I0(\data_sr_reg_n_0_[20] ),
        .I1(p_2_in),
        .O(\data_sr[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_sr[22]_i_1 
       (.I0(\data_sr_reg_n_0_[21] ),
        .I1(p_2_in),
        .O(\data_sr[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[23]_i_1 
       (.I0(\data_sr_reg_n_0_[22] ),
        .I1(p_2_in),
        .O(\data_sr[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[24]_i_1 
       (.I0(\data_sr_reg_n_0_[23] ),
        .I1(p_2_in),
        .O(\data_sr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[25]_i_1 
       (.I0(\data_sr_reg_n_0_[24] ),
        .I1(p_2_in),
        .O(\data_sr[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[26]_i_1 
       (.I0(\data_sr_reg_n_0_[25] ),
        .I1(p_2_in),
        .O(\data_sr[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_sr[27]_i_1 
       (.I0(\data_sr_reg_n_0_[26] ),
        .I1(p_2_in),
        .O(\data_sr[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[28]_i_1 
       (.I0(\data_sr_reg_n_0_[27] ),
        .I1(p_2_in),
        .O(\data_sr[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[29]_i_1 
       (.I0(\data_sr_reg_n_0_[28] ),
        .I1(p_2_in),
        .O(\data_sr[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[2]_i_1 
       (.I0(\data_sr_reg_n_0_[1] ),
        .I1(p_2_in),
        .O(\data_sr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_sr[30]_i_1 
       (.I0(\data_sr_reg_n_0_[29] ),
        .I1(p_2_in),
        .O(\data_sr[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \data_sr[31]_i_1 
       (.I0(\data_sr_reg_n_0_[30] ),
        .I1(p_2_in),
        .O(\data_sr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[3]_i_1 
       (.I0(\data_sr_reg_n_0_[2] ),
        .I1(p_2_in),
        .I2(Q[0]),
        .O(\data_sr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[4]_i_1 
       (.I0(\data_sr_reg_n_0_[3] ),
        .I1(p_2_in),
        .I2(Q[1]),
        .O(\data_sr[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[5]_i_1 
       (.I0(\data_sr_reg_n_0_[4] ),
        .I1(p_2_in),
        .I2(Q[2]),
        .O(\data_sr[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[6]_i_1 
       (.I0(\data_sr_reg_n_0_[5] ),
        .I1(p_2_in),
        .I2(Q[3]),
        .O(\data_sr[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[7]_i_1 
       (.I0(\data_sr_reg_n_0_[6] ),
        .I1(p_2_in),
        .I2(Q[4]),
        .O(\data_sr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[8]_i_1 
       (.I0(\data_sr_reg_n_0_[7] ),
        .I1(p_2_in),
        .I2(Q[5]),
        .O(\data_sr[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \data_sr[9]_i_1 
       (.I0(\data_sr_reg_n_0_[8] ),
        .I1(p_2_in),
        .I2(Q[6]),
        .O(\data_sr[9]_i_1_n_0 ));
  FDPE \data_sr_reg[10] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[10]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[10] ));
  FDPE \data_sr_reg[11] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[11]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[11] ));
  FDPE \data_sr_reg[12] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[12]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[12] ));
  FDPE \data_sr_reg[13] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[13]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[13] ));
  FDPE \data_sr_reg[14] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[14]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[14] ));
  FDPE \data_sr_reg[15] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[15]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[15] ));
  FDPE \data_sr_reg[16] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[16]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[16] ));
  FDPE \data_sr_reg[17] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[17]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[17] ));
  FDPE \data_sr_reg[18] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[18]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[18] ));
  FDPE \data_sr_reg[19] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[19]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[19] ));
  FDPE \data_sr_reg[1] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(p_2_in),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[1] ));
  FDPE \data_sr_reg[20] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[20]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[20] ));
  FDPE \data_sr_reg[21] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[21]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[21] ));
  FDPE \data_sr_reg[22] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[22]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[22] ));
  FDPE \data_sr_reg[23] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[23]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[23] ));
  FDPE \data_sr_reg[24] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[24]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[24] ));
  FDPE \data_sr_reg[25] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[25]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[25] ));
  FDPE \data_sr_reg[26] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[26]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[26] ));
  FDPE \data_sr_reg[27] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[27]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[27] ));
  FDPE \data_sr_reg[28] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[28]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[28] ));
  FDPE \data_sr_reg[29] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[29]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[29] ));
  FDPE \data_sr_reg[2] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[2]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[2] ));
  FDPE \data_sr_reg[30] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[30]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[30] ));
  FDPE \data_sr_reg[31] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[31]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(data_sr));
  FDPE \data_sr_reg[3] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[3]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[3] ));
  FDPE \data_sr_reg[4] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[4]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[4] ));
  FDPE \data_sr_reg[5] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[5]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[5] ));
  FDPE \data_sr_reg[6] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[6]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[6] ));
  FDPE \data_sr_reg[7] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[7]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[7] ));
  FDPE \data_sr_reg[8] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[8]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[8] ));
  FDPE \data_sr_reg[9] 
       (.C(clk50),
        .CE(busy_sr0),
        .D(\data_sr[9]_i_1_n_0 ),
        .PRE(\divider_reg[1]_0 ),
        .Q(\data_sr_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \divider[0]_i_1 
       (.I0(divider_reg__0[0]),
        .O(p_0_in[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \divider[1]_i_1 
       (.I0(\busy_sr[31]_i_4_n_0 ),
        .I1(divider_reg__0[1]),
        .I2(divider_reg__0[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \divider[2]_i_1 
       (.I0(\busy_sr[31]_i_4_n_0 ),
        .I1(divider_reg__0[2]),
        .I2(divider_reg__0[0]),
        .I3(divider_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \divider[3]_i_1 
       (.I0(\busy_sr[31]_i_4_n_0 ),
        .I1(divider_reg__0[3]),
        .I2(divider_reg__0[1]),
        .I3(divider_reg__0[0]),
        .I4(divider_reg__0[2]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \divider[4]_i_1 
       (.I0(\busy_sr[31]_i_4_n_0 ),
        .I1(divider_reg__0[4]),
        .I2(divider_reg__0[2]),
        .I3(divider_reg__0[0]),
        .I4(divider_reg__0[1]),
        .I5(divider_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \divider[5]_i_1 
       (.I0(divider_reg__0[3]),
        .I1(divider_reg__0[1]),
        .I2(divider_reg__0[0]),
        .I3(divider_reg__0[2]),
        .I4(divider_reg__0[4]),
        .I5(divider_reg__0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \divider[6]_i_1 
       (.I0(p_0_in_1[0]),
        .I1(\divider[7]_i_3_n_0 ),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFE0000)) 
    \divider[7]_i_1 
       (.I0(\busy_sr_reg[0]_0 ),
        .I1(\busy_sr_reg[0]_1 ),
        .I2(\busy_sr_reg[0]_2 ),
        .I3(\busy_sr_reg[0]_3 ),
        .I4(\busy_sr[31]_i_3_n_0 ),
        .I5(p_2_in),
        .O(\divider[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h9A)) 
    \divider[7]_i_2 
       (.I0(p_0_in_1[1]),
        .I1(\divider[7]_i_3_n_0 ),
        .I2(p_0_in_1[0]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \divider[7]_i_3 
       (.I0(divider_reg__0[4]),
        .I1(divider_reg__0[2]),
        .I2(divider_reg__0[0]),
        .I3(divider_reg__0[1]),
        .I4(divider_reg__0[3]),
        .I5(divider_reg__0[5]),
        .O(\divider[7]_i_3_n_0 ));
  FDPE \divider_reg[0] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .PRE(\divider_reg[1]_0 ),
        .Q(divider_reg__0[0]));
  FDCE \divider_reg[1] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .CLR(\divider_reg[1]_0 ),
        .D(p_0_in[1]),
        .Q(divider_reg__0[1]));
  FDCE \divider_reg[2] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .CLR(\divider_reg[1]_0 ),
        .D(p_0_in[2]),
        .Q(divider_reg__0[2]));
  FDCE \divider_reg[3] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .CLR(\divider_reg[1]_0 ),
        .D(p_0_in[3]),
        .Q(divider_reg__0[3]));
  FDCE \divider_reg[4] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .CLR(\divider_reg[1]_0 ),
        .D(p_0_in[4]),
        .Q(divider_reg__0[4]));
  FDCE \divider_reg[5] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .CLR(\divider_reg[1]_0 ),
        .D(p_0_in[5]),
        .Q(divider_reg__0[5]));
  FDCE \divider_reg[6] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .CLR(\divider_reg[1]_0 ),
        .D(p_0_in[6]),
        .Q(p_0_in_1[0]));
  FDCE \divider_reg[7] 
       (.C(clk50),
        .CE(\divider[7]_i_1_n_0 ),
        .CLR(\divider_reg[1]_0 ),
        .D(p_0_in[7]),
        .Q(p_0_in_1[1]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    led_INST_0_i_1
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[7]),
        .I3(Q[6]),
        .O(\busy_sr_reg[0]_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    led_INST_0_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\busy_sr_reg[0]_1 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    led_INST_0_i_3
       (.I0(Q[13]),
        .I1(Q[12]),
        .I2(Q[15]),
        .I3(Q[14]),
        .O(\busy_sr_reg[0]_2 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    led_INST_0_i_4
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[11]),
        .I3(Q[10]),
        .O(\busy_sr_reg[0]_3 ));
  LUT5 #(
    .INIT(32'hFEFFFE00)) 
    sioc_i_1
       (.I0(sioc_i_2_n_0),
        .I1(sioc_i_3_n_0),
        .I2(sioc_i_4_n_0),
        .I3(sysreset_n),
        .I4(OV7670_SIOC),
        .O(sioc_i_1_n_0));
  LUT6 #(
    .INIT(64'hF000000000000203)) 
    sioc_i_2
       (.I0(sioc_i_5_n_0),
        .I1(\busy_sr_reg_n_0_[0] ),
        .I2(\busy_sr_reg_n_0_[1] ),
        .I3(\busy_sr_reg_n_0_[30] ),
        .I4(\busy_sr_reg_n_0_[2] ),
        .I5(\busy_sr_reg_n_0_[29] ),
        .O(sioc_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    sioc_i_3
       (.I0(\busy_sr_reg_n_0_[1] ),
        .I1(\busy_sr_reg_n_0_[0] ),
        .I2(p_0_in_1[1]),
        .I3(p_0_in_1[0]),
        .O(sioc_i_3_n_0));
  LUT6 #(
    .INIT(64'h06606666FFFFFFFF)) 
    sioc_i_4
       (.I0(p_0_in_1[0]),
        .I1(p_0_in_1[1]),
        .I2(\busy_sr_reg_n_0_[29] ),
        .I3(\busy_sr_reg_n_0_[2] ),
        .I4(\busy_sr_reg_n_0_[30] ),
        .I5(p_2_in),
        .O(sioc_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    sioc_i_5
       (.I0(p_0_in_1[0]),
        .I1(p_0_in_1[1]),
        .O(sioc_i_5_n_0));
  FDRE sioc_reg
       (.C(clk50),
        .CE(1'b1),
        .D(sioc_i_1_n_0),
        .Q(OV7670_SIOC),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h2F20)) 
    taken_i_1
       (.I0(p_1_in[0]),
        .I1(\busy_sr[31]_i_3_n_0 ),
        .I2(sysreset_n),
        .I3(taken),
        .O(taken_i_1_n_0));
  FDRE taken_reg
       (.C(clk50),
        .CE(1'b1),
        .D(taken_i_1_n_0),
        .Q(taken),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga
   (vga_hsync,
    vga_vsync,
    vga_red,
    vga_green,
    vga_blue,
    frame_addr,
    clk25,
    sysreset_n_0,
    sysreset_n,
    frame_pixel);
  output vga_hsync;
  output vga_vsync;
  output [3:0]vga_red;
  output [3:0]vga_green;
  output [3:0]vga_blue;
  output [18:0]frame_addr;
  input clk25;
  input sysreset_n_0;
  input sysreset_n;
  input [11:0]frame_pixel;

  wire \address[0]_i_1_n_0 ;
  wire \address[0]_i_3_n_0 ;
  wire \address[0]_i_4_n_0 ;
  wire \address[0]_i_5_n_0 ;
  wire \address[0]_i_6_n_0 ;
  wire \address[0]_i_7_n_0 ;
  wire \address[12]_i_2_n_0 ;
  wire \address[12]_i_3_n_0 ;
  wire \address[12]_i_4_n_0 ;
  wire \address[12]_i_5_n_0 ;
  wire \address[16]_i_2_n_0 ;
  wire \address[16]_i_3_n_0 ;
  wire \address[16]_i_4_n_0 ;
  wire \address[4]_i_2_n_0 ;
  wire \address[4]_i_3_n_0 ;
  wire \address[4]_i_4_n_0 ;
  wire \address[4]_i_5_n_0 ;
  wire \address[8]_i_2_n_0 ;
  wire \address[8]_i_3_n_0 ;
  wire \address[8]_i_4_n_0 ;
  wire \address[8]_i_5_n_0 ;
  wire [18:0]address_reg;
  wire \address_reg[0]_i_2_n_0 ;
  wire \address_reg[0]_i_2_n_1 ;
  wire \address_reg[0]_i_2_n_2 ;
  wire \address_reg[0]_i_2_n_3 ;
  wire \address_reg[0]_i_2_n_4 ;
  wire \address_reg[0]_i_2_n_5 ;
  wire \address_reg[0]_i_2_n_6 ;
  wire \address_reg[0]_i_2_n_7 ;
  wire \address_reg[12]_i_1_n_0 ;
  wire \address_reg[12]_i_1_n_1 ;
  wire \address_reg[12]_i_1_n_2 ;
  wire \address_reg[12]_i_1_n_3 ;
  wire \address_reg[12]_i_1_n_4 ;
  wire \address_reg[12]_i_1_n_5 ;
  wire \address_reg[12]_i_1_n_6 ;
  wire \address_reg[12]_i_1_n_7 ;
  wire \address_reg[16]_i_1_n_2 ;
  wire \address_reg[16]_i_1_n_3 ;
  wire \address_reg[16]_i_1_n_5 ;
  wire \address_reg[16]_i_1_n_6 ;
  wire \address_reg[16]_i_1_n_7 ;
  wire \address_reg[4]_i_1_n_0 ;
  wire \address_reg[4]_i_1_n_1 ;
  wire \address_reg[4]_i_1_n_2 ;
  wire \address_reg[4]_i_1_n_3 ;
  wire \address_reg[4]_i_1_n_4 ;
  wire \address_reg[4]_i_1_n_5 ;
  wire \address_reg[4]_i_1_n_6 ;
  wire \address_reg[4]_i_1_n_7 ;
  wire \address_reg[8]_i_1_n_0 ;
  wire \address_reg[8]_i_1_n_1 ;
  wire \address_reg[8]_i_1_n_2 ;
  wire \address_reg[8]_i_1_n_3 ;
  wire \address_reg[8]_i_1_n_4 ;
  wire \address_reg[8]_i_1_n_5 ;
  wire \address_reg[8]_i_1_n_6 ;
  wire \address_reg[8]_i_1_n_7 ;
  wire blank;
  wire blank_i_1_n_0;
  wire blank_i_2_n_0;
  wire clk25;
  wire [18:0]frame_addr;
  wire [11:0]frame_pixel;
  wire [9:0]hCounter;
  wire \hCounter[4]_i_2_n_0 ;
  wire \hCounter[9]_i_2_n_0 ;
  wire [9:0]hCounter_1;
  wire sysreset_n;
  wire sysreset_n_0;
  wire [9:0]vCounter;
  wire \vCounter[0]_i_1_n_0 ;
  wire \vCounter[0]_i_2_n_0 ;
  wire \vCounter[1]_i_1_n_0 ;
  wire \vCounter[2]_i_1_n_0 ;
  wire \vCounter[3]_i_1_n_0 ;
  wire \vCounter[4]_i_1_n_0 ;
  wire \vCounter[5]_i_1_n_0 ;
  wire \vCounter[5]_i_2_n_0 ;
  wire \vCounter[6]_i_1_n_0 ;
  wire \vCounter[7]_i_1_n_0 ;
  wire \vCounter[8]_i_1_n_0 ;
  wire \vCounter[9]_i_2_n_0 ;
  wire \vCounter[9]_i_3_n_0 ;
  wire \vCounter[9]_i_4_n_0 ;
  wire \vCounter[9]_i_5_n_0 ;
  wire vCounter_0;
  wire [3:0]vga_blue;
  wire [3:0]vga_green;
  wire vga_hsync;
  wire vga_hsync_i_1_n_0;
  wire [3:0]vga_red;
  wire \vga_red[3]_i_1_n_0 ;
  wire vga_vsync;
  wire vga_vsync_i_1_n_0;
  wire vga_vsync_i_2_n_0;
  wire [3:2]\NLW_address_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_reg[16]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF0000001F)) 
    \address[0]_i_1 
       (.I0(hCounter[6]),
        .I1(hCounter[5]),
        .I2(hCounter[7]),
        .I3(hCounter[8]),
        .I4(hCounter[9]),
        .I5(blank_i_2_n_0),
        .O(\address[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[0]_i_3 
       (.I0(address_reg[0]),
        .I1(blank_i_2_n_0),
        .O(\address[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[0]_i_4 
       (.I0(address_reg[3]),
        .I1(blank_i_2_n_0),
        .O(\address[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[0]_i_5 
       (.I0(address_reg[2]),
        .I1(blank_i_2_n_0),
        .O(\address[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[0]_i_6 
       (.I0(address_reg[1]),
        .I1(blank_i_2_n_0),
        .O(\address[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \address[0]_i_7 
       (.I0(address_reg[0]),
        .I1(blank_i_2_n_0),
        .O(\address[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[12]_i_2 
       (.I0(address_reg[15]),
        .I1(blank_i_2_n_0),
        .O(\address[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[12]_i_3 
       (.I0(address_reg[14]),
        .I1(blank_i_2_n_0),
        .O(\address[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[12]_i_4 
       (.I0(address_reg[13]),
        .I1(blank_i_2_n_0),
        .O(\address[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[12]_i_5 
       (.I0(address_reg[12]),
        .I1(blank_i_2_n_0),
        .O(\address[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[16]_i_2 
       (.I0(address_reg[18]),
        .I1(blank_i_2_n_0),
        .O(\address[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[16]_i_3 
       (.I0(address_reg[17]),
        .I1(blank_i_2_n_0),
        .O(\address[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[16]_i_4 
       (.I0(address_reg[16]),
        .I1(blank_i_2_n_0),
        .O(\address[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[4]_i_2 
       (.I0(address_reg[7]),
        .I1(blank_i_2_n_0),
        .O(\address[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[4]_i_3 
       (.I0(address_reg[6]),
        .I1(blank_i_2_n_0),
        .O(\address[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[4]_i_4 
       (.I0(address_reg[5]),
        .I1(blank_i_2_n_0),
        .O(\address[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[4]_i_5 
       (.I0(address_reg[4]),
        .I1(blank_i_2_n_0),
        .O(\address[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[8]_i_2 
       (.I0(address_reg[11]),
        .I1(blank_i_2_n_0),
        .O(\address[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[8]_i_3 
       (.I0(address_reg[10]),
        .I1(blank_i_2_n_0),
        .O(\address[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[8]_i_4 
       (.I0(address_reg[9]),
        .I1(blank_i_2_n_0),
        .O(\address[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \address[8]_i_5 
       (.I0(address_reg[8]),
        .I1(blank_i_2_n_0),
        .O(\address[8]_i_5_n_0 ));
  FDCE \address_reg[0] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[0]_i_2_n_7 ),
        .Q(address_reg[0]));
  CARRY4 \address_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\address_reg[0]_i_2_n_0 ,\address_reg[0]_i_2_n_1 ,\address_reg[0]_i_2_n_2 ,\address_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\address[0]_i_3_n_0 }),
        .O({\address_reg[0]_i_2_n_4 ,\address_reg[0]_i_2_n_5 ,\address_reg[0]_i_2_n_6 ,\address_reg[0]_i_2_n_7 }),
        .S({\address[0]_i_4_n_0 ,\address[0]_i_5_n_0 ,\address[0]_i_6_n_0 ,\address[0]_i_7_n_0 }));
  FDCE \address_reg[10] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[8]_i_1_n_5 ),
        .Q(address_reg[10]));
  FDCE \address_reg[11] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[8]_i_1_n_4 ),
        .Q(address_reg[11]));
  FDCE \address_reg[12] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[12]_i_1_n_7 ),
        .Q(address_reg[12]));
  CARRY4 \address_reg[12]_i_1 
       (.CI(\address_reg[8]_i_1_n_0 ),
        .CO({\address_reg[12]_i_1_n_0 ,\address_reg[12]_i_1_n_1 ,\address_reg[12]_i_1_n_2 ,\address_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[12]_i_1_n_4 ,\address_reg[12]_i_1_n_5 ,\address_reg[12]_i_1_n_6 ,\address_reg[12]_i_1_n_7 }),
        .S({\address[12]_i_2_n_0 ,\address[12]_i_3_n_0 ,\address[12]_i_4_n_0 ,\address[12]_i_5_n_0 }));
  FDCE \address_reg[13] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[12]_i_1_n_6 ),
        .Q(address_reg[13]));
  FDCE \address_reg[14] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[12]_i_1_n_5 ),
        .Q(address_reg[14]));
  FDCE \address_reg[15] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[12]_i_1_n_4 ),
        .Q(address_reg[15]));
  FDCE \address_reg[16] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[16]_i_1_n_7 ),
        .Q(address_reg[16]));
  CARRY4 \address_reg[16]_i_1 
       (.CI(\address_reg[12]_i_1_n_0 ),
        .CO({\NLW_address_reg[16]_i_1_CO_UNCONNECTED [3:2],\address_reg[16]_i_1_n_2 ,\address_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_address_reg[16]_i_1_O_UNCONNECTED [3],\address_reg[16]_i_1_n_5 ,\address_reg[16]_i_1_n_6 ,\address_reg[16]_i_1_n_7 }),
        .S({1'b0,\address[16]_i_2_n_0 ,\address[16]_i_3_n_0 ,\address[16]_i_4_n_0 }));
  FDCE \address_reg[17] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[16]_i_1_n_6 ),
        .Q(address_reg[17]));
  FDCE \address_reg[18] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[16]_i_1_n_5 ),
        .Q(address_reg[18]));
  FDCE \address_reg[1] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[0]_i_2_n_6 ),
        .Q(address_reg[1]));
  FDCE \address_reg[2] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[0]_i_2_n_5 ),
        .Q(address_reg[2]));
  FDCE \address_reg[3] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[0]_i_2_n_4 ),
        .Q(address_reg[3]));
  FDCE \address_reg[4] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[4]_i_1_n_7 ),
        .Q(address_reg[4]));
  CARRY4 \address_reg[4]_i_1 
       (.CI(\address_reg[0]_i_2_n_0 ),
        .CO({\address_reg[4]_i_1_n_0 ,\address_reg[4]_i_1_n_1 ,\address_reg[4]_i_1_n_2 ,\address_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[4]_i_1_n_4 ,\address_reg[4]_i_1_n_5 ,\address_reg[4]_i_1_n_6 ,\address_reg[4]_i_1_n_7 }),
        .S({\address[4]_i_2_n_0 ,\address[4]_i_3_n_0 ,\address[4]_i_4_n_0 ,\address[4]_i_5_n_0 }));
  FDCE \address_reg[5] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[4]_i_1_n_6 ),
        .Q(address_reg[5]));
  FDCE \address_reg[6] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[4]_i_1_n_5 ),
        .Q(address_reg[6]));
  FDCE \address_reg[7] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[4]_i_1_n_4 ),
        .Q(address_reg[7]));
  FDCE \address_reg[8] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[8]_i_1_n_7 ),
        .Q(address_reg[8]));
  CARRY4 \address_reg[8]_i_1 
       (.CI(\address_reg[4]_i_1_n_0 ),
        .CO({\address_reg[8]_i_1_n_0 ,\address_reg[8]_i_1_n_1 ,\address_reg[8]_i_1_n_2 ,\address_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\address_reg[8]_i_1_n_4 ,\address_reg[8]_i_1_n_5 ,\address_reg[8]_i_1_n_6 ,\address_reg[8]_i_1_n_7 }),
        .S({\address[8]_i_2_n_0 ,\address[8]_i_3_n_0 ,\address[8]_i_4_n_0 ,\address[8]_i_5_n_0 }));
  FDCE \address_reg[9] 
       (.C(clk25),
        .CE(\address[0]_i_1_n_0 ),
        .CLR(sysreset_n_0),
        .D(\address_reg[8]_i_1_n_6 ),
        .Q(address_reg[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE0)) 
    blank_i_1
       (.I0(hCounter[6]),
        .I1(hCounter[5]),
        .I2(hCounter[7]),
        .I3(hCounter[8]),
        .I4(blank_i_2_n_0),
        .I5(hCounter[9]),
        .O(blank_i_1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    blank_i_2
       (.I0(vCounter[9]),
        .I1(vCounter[7]),
        .I2(vCounter[8]),
        .I3(\vCounter[9]_i_5_n_0 ),
        .O(blank_i_2_n_0));
  FDPE blank_reg
       (.C(clk25),
        .CE(1'b1),
        .D(blank_i_1_n_0),
        .PRE(sysreset_n_0),
        .Q(blank));
  FDRE \frame_addr_reg[0] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[0]),
        .Q(frame_addr[0]),
        .R(1'b0));
  FDRE \frame_addr_reg[10] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[10]),
        .Q(frame_addr[10]),
        .R(1'b0));
  FDRE \frame_addr_reg[11] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[11]),
        .Q(frame_addr[11]),
        .R(1'b0));
  FDRE \frame_addr_reg[12] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[12]),
        .Q(frame_addr[12]),
        .R(1'b0));
  FDRE \frame_addr_reg[13] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[13]),
        .Q(frame_addr[13]),
        .R(1'b0));
  FDRE \frame_addr_reg[14] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[14]),
        .Q(frame_addr[14]),
        .R(1'b0));
  FDRE \frame_addr_reg[15] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[15]),
        .Q(frame_addr[15]),
        .R(1'b0));
  FDRE \frame_addr_reg[16] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[16]),
        .Q(frame_addr[16]),
        .R(1'b0));
  FDRE \frame_addr_reg[17] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[17]),
        .Q(frame_addr[17]),
        .R(1'b0));
  FDRE \frame_addr_reg[18] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[18]),
        .Q(frame_addr[18]),
        .R(1'b0));
  FDRE \frame_addr_reg[1] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[1]),
        .Q(frame_addr[1]),
        .R(1'b0));
  FDRE \frame_addr_reg[2] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[2]),
        .Q(frame_addr[2]),
        .R(1'b0));
  FDRE \frame_addr_reg[3] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[3]),
        .Q(frame_addr[3]),
        .R(1'b0));
  FDRE \frame_addr_reg[4] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[4]),
        .Q(frame_addr[4]),
        .R(1'b0));
  FDRE \frame_addr_reg[5] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[5]),
        .Q(frame_addr[5]),
        .R(1'b0));
  FDRE \frame_addr_reg[6] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[6]),
        .Q(frame_addr[6]),
        .R(1'b0));
  FDRE \frame_addr_reg[7] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[7]),
        .Q(frame_addr[7]),
        .R(1'b0));
  FDRE \frame_addr_reg[8] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[8]),
        .Q(frame_addr[8]),
        .R(1'b0));
  FDRE \frame_addr_reg[9] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(address_reg[9]),
        .Q(frame_addr[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hCounter[0]_i_1 
       (.I0(hCounter[0]),
        .O(hCounter_1[0]));
  LUT3 #(
    .INIT(8'h28)) 
    \hCounter[1]_i_1 
       (.I0(\hCounter[4]_i_2_n_0 ),
        .I1(hCounter[1]),
        .I2(hCounter[0]),
        .O(hCounter_1[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \hCounter[2]_i_1 
       (.I0(\hCounter[4]_i_2_n_0 ),
        .I1(hCounter[2]),
        .I2(hCounter[0]),
        .I3(hCounter[1]),
        .O(hCounter_1[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \hCounter[3]_i_1 
       (.I0(\hCounter[4]_i_2_n_0 ),
        .I1(hCounter[3]),
        .I2(hCounter[1]),
        .I3(hCounter[0]),
        .I4(hCounter[2]),
        .O(hCounter_1[3]));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \hCounter[4]_i_1 
       (.I0(\hCounter[4]_i_2_n_0 ),
        .I1(hCounter[4]),
        .I2(hCounter[2]),
        .I3(hCounter[0]),
        .I4(hCounter[1]),
        .I5(hCounter[3]),
        .O(hCounter_1[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \hCounter[4]_i_2 
       (.I0(hCounter[5]),
        .I1(hCounter[6]),
        .I2(hCounter[7]),
        .I3(hCounter[9]),
        .I4(hCounter[8]),
        .I5(\hCounter[9]_i_2_n_0 ),
        .O(\hCounter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF00000000FFF7)) 
    \hCounter[5]_i_1 
       (.I0(hCounter[8]),
        .I1(hCounter[9]),
        .I2(hCounter[7]),
        .I3(hCounter[6]),
        .I4(hCounter[5]),
        .I5(\hCounter[9]_i_2_n_0 ),
        .O(hCounter_1[5]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \hCounter[6]_i_1 
       (.I0(hCounter[6]),
        .I1(hCounter[5]),
        .I2(\hCounter[9]_i_2_n_0 ),
        .O(hCounter_1[6]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hAA6A)) 
    \hCounter[7]_i_1 
       (.I0(hCounter[7]),
        .I1(hCounter[6]),
        .I2(hCounter[5]),
        .I3(\hCounter[9]_i_2_n_0 ),
        .O(hCounter_1[7]));
  LUT6 #(
    .INIT(64'hCCCCCCCC3CCCCCC4)) 
    \hCounter[8]_i_1 
       (.I0(hCounter[9]),
        .I1(hCounter[8]),
        .I2(hCounter[7]),
        .I3(hCounter[5]),
        .I4(hCounter[6]),
        .I5(\hCounter[9]_i_2_n_0 ),
        .O(hCounter_1[8]));
  LUT6 #(
    .INIT(64'hAAAAAAAA6AA8AAAA)) 
    \hCounter[9]_i_1 
       (.I0(hCounter[9]),
        .I1(hCounter[7]),
        .I2(hCounter[5]),
        .I3(hCounter[6]),
        .I4(hCounter[8]),
        .I5(\hCounter[9]_i_2_n_0 ),
        .O(hCounter_1[9]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \hCounter[9]_i_2 
       (.I0(hCounter[3]),
        .I1(hCounter[1]),
        .I2(hCounter[0]),
        .I3(hCounter[2]),
        .I4(hCounter[4]),
        .O(\hCounter[9]_i_2_n_0 ));
  FDCE \hCounter_reg[0] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[0]),
        .Q(hCounter[0]));
  FDCE \hCounter_reg[1] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[1]),
        .Q(hCounter[1]));
  FDCE \hCounter_reg[2] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[2]),
        .Q(hCounter[2]));
  FDCE \hCounter_reg[3] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[3]),
        .Q(hCounter[3]));
  FDCE \hCounter_reg[4] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[4]),
        .Q(hCounter[4]));
  FDCE \hCounter_reg[5] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[5]),
        .Q(hCounter[5]));
  FDCE \hCounter_reg[6] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[6]),
        .Q(hCounter[6]));
  FDCE \hCounter_reg[7] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[7]),
        .Q(hCounter[7]));
  FDCE \hCounter_reg[8] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[8]),
        .Q(hCounter[8]));
  FDCE \hCounter_reg[9] 
       (.C(clk25),
        .CE(1'b1),
        .CLR(sysreset_n_0),
        .D(hCounter_1[9]),
        .Q(hCounter[9]));
  LUT6 #(
    .INIT(64'h00000000FFFFDFFF)) 
    \vCounter[0]_i_1 
       (.I0(vCounter[9]),
        .I1(vCounter[6]),
        .I2(vCounter[3]),
        .I3(vCounter[2]),
        .I4(\vCounter[0]_i_2_n_0 ),
        .I5(vCounter[0]),
        .O(\vCounter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \vCounter[0]_i_2 
       (.I0(vCounter[1]),
        .I1(vCounter[7]),
        .I2(vCounter[8]),
        .I3(vCounter[5]),
        .I4(vCounter[4]),
        .O(\vCounter[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \vCounter[1]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[1]),
        .I2(vCounter[0]),
        .O(\vCounter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \vCounter[2]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[2]),
        .I2(vCounter[0]),
        .I3(vCounter[1]),
        .O(\vCounter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \vCounter[3]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[3]),
        .I2(vCounter[1]),
        .I3(vCounter[0]),
        .I4(vCounter[2]),
        .O(\vCounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \vCounter[4]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[4]),
        .I2(vCounter[1]),
        .I3(vCounter[0]),
        .I4(vCounter[3]),
        .I5(vCounter[2]),
        .O(\vCounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \vCounter[5]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[5]),
        .I2(vCounter[4]),
        .I3(\vCounter[5]_i_2_n_0 ),
        .I4(vCounter[3]),
        .I5(vCounter[2]),
        .O(\vCounter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \vCounter[5]_i_2 
       (.I0(vCounter[0]),
        .I1(vCounter[1]),
        .O(\vCounter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2888888888888888)) 
    \vCounter[6]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[6]),
        .I2(vCounter[3]),
        .I3(vCounter[5]),
        .I4(vCounter[4]),
        .I5(\vCounter[9]_i_4_n_0 ),
        .O(\vCounter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \vCounter[7]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[7]),
        .I2(vCounter[2]),
        .I3(vCounter[0]),
        .I4(vCounter[1]),
        .I5(\vCounter[9]_i_5_n_0 ),
        .O(\vCounter[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88882888)) 
    \vCounter[8]_i_1 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[8]),
        .I2(vCounter[7]),
        .I3(\vCounter[9]_i_4_n_0 ),
        .I4(\vCounter[9]_i_5_n_0 ),
        .O(\vCounter[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \vCounter[9]_i_1 
       (.I0(\hCounter[4]_i_2_n_0 ),
        .O(vCounter_0));
  LUT6 #(
    .INIT(64'h8888888828888888)) 
    \vCounter[9]_i_2 
       (.I0(\vCounter[9]_i_3_n_0 ),
        .I1(vCounter[9]),
        .I2(\vCounter[9]_i_4_n_0 ),
        .I3(vCounter[7]),
        .I4(vCounter[8]),
        .I5(\vCounter[9]_i_5_n_0 ),
        .O(\vCounter[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \vCounter[9]_i_3 
       (.I0(vCounter[9]),
        .I1(vCounter[6]),
        .I2(vCounter[3]),
        .I3(vCounter[2]),
        .I4(\vCounter[0]_i_2_n_0 ),
        .I5(vCounter[0]),
        .O(\vCounter[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \vCounter[9]_i_4 
       (.I0(vCounter[1]),
        .I1(vCounter[0]),
        .I2(vCounter[2]),
        .O(\vCounter[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \vCounter[9]_i_5 
       (.I0(vCounter[6]),
        .I1(vCounter[3]),
        .I2(vCounter[5]),
        .I3(vCounter[4]),
        .O(\vCounter[9]_i_5_n_0 ));
  FDCE \vCounter_reg[0] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[0]_i_1_n_0 ),
        .Q(vCounter[0]));
  FDCE \vCounter_reg[1] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[1]_i_1_n_0 ),
        .Q(vCounter[1]));
  FDCE \vCounter_reg[2] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[2]_i_1_n_0 ),
        .Q(vCounter[2]));
  FDCE \vCounter_reg[3] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[3]_i_1_n_0 ),
        .Q(vCounter[3]));
  FDCE \vCounter_reg[4] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[4]_i_1_n_0 ),
        .Q(vCounter[4]));
  FDCE \vCounter_reg[5] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[5]_i_1_n_0 ),
        .Q(vCounter[5]));
  FDCE \vCounter_reg[6] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[6]_i_1_n_0 ),
        .Q(vCounter[6]));
  FDCE \vCounter_reg[7] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[7]_i_1_n_0 ),
        .Q(vCounter[7]));
  FDCE \vCounter_reg[8] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[8]_i_1_n_0 ),
        .Q(vCounter[8]));
  FDCE \vCounter_reg[9] 
       (.C(clk25),
        .CE(vCounter_0),
        .CLR(sysreset_n_0),
        .D(\vCounter[9]_i_2_n_0 ),
        .Q(vCounter[9]));
  FDRE \vga_blue_reg[0] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[0]),
        .Q(vga_blue[0]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_blue_reg[1] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[1]),
        .Q(vga_blue[1]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_blue_reg[2] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[2]),
        .Q(vga_blue[2]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_blue_reg[3] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[3]),
        .Q(vga_blue[3]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_green_reg[0] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[4]),
        .Q(vga_green[0]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_green_reg[1] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[5]),
        .Q(vga_green[1]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_green_reg[2] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[6]),
        .Q(vga_green[2]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_green_reg[3] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[7]),
        .Q(vga_green[3]),
        .R(\vga_red[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF81FFFFFFFFFF)) 
    vga_hsync_i_1
       (.I0(hCounter[6]),
        .I1(hCounter[5]),
        .I2(hCounter[4]),
        .I3(hCounter[7]),
        .I4(hCounter[8]),
        .I5(hCounter[9]),
        .O(vga_hsync_i_1_n_0));
  FDRE vga_hsync_reg
       (.C(clk25),
        .CE(sysreset_n),
        .D(vga_hsync_i_1_n_0),
        .Q(vga_hsync),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \vga_red[3]_i_1 
       (.I0(blank),
        .I1(sysreset_n),
        .O(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_red_reg[0] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[8]),
        .Q(vga_red[0]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_red_reg[1] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[9]),
        .Q(vga_red[1]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_red_reg[2] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[10]),
        .Q(vga_red[2]),
        .R(\vga_red[3]_i_1_n_0 ));
  FDRE \vga_red_reg[3] 
       (.C(clk25),
        .CE(sysreset_n),
        .D(frame_pixel[11]),
        .Q(vga_red[3]),
        .R(\vga_red[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFFFFFFFFFF)) 
    vga_vsync_i_1
       (.I0(vga_vsync_i_2_n_0),
        .I1(vCounter[7]),
        .I2(vCounter[4]),
        .I3(vCounter[8]),
        .I4(vCounter[9]),
        .I5(vCounter[1]),
        .O(vga_vsync_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hBFFF)) 
    vga_vsync_i_2
       (.I0(vCounter[2]),
        .I1(vCounter[6]),
        .I2(vCounter[3]),
        .I3(vCounter[5]),
        .O(vga_vsync_i_2_n_0));
  FDRE vga_vsync_reg
       (.C(clk25),
        .CE(sysreset_n),
        .D(vga_vsync_i_1_n_0),
        .Q(vga_vsync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
