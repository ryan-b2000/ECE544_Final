`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2019 02:42:15 PM
// Design Name: 
// Module Name: OV7670_wrapper
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


module OV7670_wrapper(
    input clk100,
    input clk50,
    input clk25,
    input sysreset_n,
    input OV7670_VSYNC,
    input OV7670_HREF,
    input OV7670_PCLK,
    input [7:0] OV7670_DATA,
    input [15:0] command,
    inout OV7670_SIOD,
    output OV7670_SIOC,
    output OV7670_XCLK,
    output OV7670_RESET,
    output OV7670_PWDN,
    output [3:0] vga_red,
    output [3:0] vga_green,
    output [3:0] vga_blue,
    output vga_hsync,
    output vga_vsync,
    output [15:0] led,
    input [11:0] frame_pixel,
    output [18:0] frame_addr,
    output [18:0] capture_addr,
    output [11:0] capture_data,
    output capture_we,
    output taken,
    input freeze_frame,
    input [18:0] axi_address,
    output [11:0] axi_pixel
    );
    
    // signal for showing camera has ran configuration
    // turn on led0 when camera configuration is done
    wire config_finished;
    assign led = config_finished;
    
    // OV7670 Controller
    OV7670_controller controller (
        .clk(clk50),
        .sioc(OV7670_SIOC),
        .reset_n(sysreset_n),
        .command(command),
        .config_finished(config_finished),
        .siod(OV7670_SIOD),
        .pwdn(OV7670_PWDN),
        .cam_reset(OV7670_RESET),
        .xclk(OV7670_XCLK),
        .taken(taken)
    );
    
    // OV7670 Capture
    OV7670_capture capture (
        .pclk(OV7670_PCLK),
        .reset_n(sysreset_n),
        .vsync(OV7670_VSYNC),
        .href(OV7670_HREF),
        .d(OV7670_DATA),
        .addr(capture_addr),
        .dout(capture_data),
        .we(capture_we),
        .freeze_frame(freeze_frame)
    );
    
    wire [18:0] frame_addr_w;
    wire [11:0] frame_pixel_w;
    assign axi_pixel = frame_pixel;
    assign frame_addr = (freeze_frame) ? axi_address : frame_addr_w;
    assign frame_pixel_w = (freeze_frame) ? 'bz : frame_pixel;
    
    wire nBlank;
    wire nSync;
    wire activeArea;
    wire vSync;
    
    assign vga_vsync = vSync;
    
    // OV7670 VGA Controller
    vga vga (
        .clk25(clk25),
        .reset_n(sysreset_n),
        /*
        .vga_red(vga_red),
        .vga_green(vga_green),
        .vga_blue(vga_blue),
        */
        .vga_hsync(vga_hsync),
        .vga_vsync(vSync),
        .nBlank(nBlank),
        .activeArea(activeArea),
        .nSync(nSync)
        /*
        .frame_addr(frame_addr_w),
        .frame_pixel(frame_pixel_w)
        */
    );
    
    address_valid address_valid (
        .clk25(clk25),
        .reset_n(sysreset_n),
        .enable(activeArea),
        .vsync(vSync),
        .address(frame_addr_w)
    );
    
    wire [7:0] red, green, blue;
    assign vga_red = red[7:4];
    assign vga_green = green[7:4];
    assign vga_blue = blue[7:4];
    
    rgb_valid rgb_valid (
        .data(frame_pixel_w),
        .nBlank(activeArea),
        .vga_red(red),
        .vga_green(green),
        .vga_blue(blue)
    );
    
endmodule
