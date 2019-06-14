`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
// Module Name: OV7670_wrapper
//
// Description: Used for creating the Camera IP.
//
// Team: Andrew Capatina, Ryan Bentz, Ryan Bornhorst
//
// Date: 6/13/19
// 
//////////////////////////////////////////////////////////////////////////////////


module OV7670_wrapper(
    input clk100,		// system clock
    input clk50,		// 50MHz clock
    input clk25,		// 25MHz clock
    input sysreset_n,		// reset
    input OV7670_VSYNC,		// camera vsync
    input OV7670_HREF,		// camera href
    input OV7670_PCLK,		// camera pclk
    input [7:0] OV7670_DATA,	// camera data
    input [15:0] command,	// command for I2C
    inout OV7670_SIOD,		// camera siod
    output OV7670_SIOC,		// camera sioc
    output OV7670_XCLK,		// camera xclk
    output OV7670_RESET,	// camera reset
    output OV7670_PWDN,		// camera power down
    output [3:0] vga_red,	// vga red
    output [3:0] vga_green,	// vga green
    output [3:0] vga_blue,	// vga blue
    output vga_hsync,		// vga_hsync
    output vga_vsync,		// vga_vsync
    output [15:0] led,		// leds
    input [11:0] frame_pixel,	// incoming frame pixel for vga
    output [18:0] frame_addr,	// frame address to BRAM read
    output [18:0] capture_addr,	// capture address to BRAM write
    output [11:0] capture_data, // capture data written to BRAM
    output capture_we,		// write enable
    output taken,		// I2C ready
    input freeze_frame,		// freeze the camera frame
    input [18:0] axi_address,	// frame address to BRAM read from AXI
    output [11:0] axi_pixel	// frame pixel from BRAM to AXI
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
    
    // these signals are used to multiplex the RAM address reads
    // if a freeze frame signal comes through then control of the address
    // is given to the AXI bus for reading the frame from the RAM
    // otherwise the address is controlled by the camera capture to stream
    // frames to the VGA display
    wire [18:0] frame_addr_w;
    wire [11:0] frame_pixel_w;
    assign axi_pixel = frame_pixel;
    assign frame_addr = (freeze_frame) ? axi_address : frame_addr_w;
    assign frame_pixel_w = (freeze_frame) ? 'bz : frame_pixel;
    
    // signals used for VGA control
    wire nBlank;
    wire nSync;
    wire activeArea;
    wire vSync;
    
    assign vga_vsync = vSync;
    
    // OV7670 VGA Controller
    vga vga (
        .clk25(clk25),
        .reset_n(sysreset_n),
        .vga_hsync(vga_hsync),
        .vga_vsync(vSync),
        .nBlank(nBlank),
        .activeArea(activeArea),
        .nSync(nSync)
         );
    
    // used to tell VGA that address is valid output
    address_valid address_valid (
        .clk25(clk25),
        .reset_n(sysreset_n),
        .enable(activeArea),
        .vsync(vSync),
        .address(frame_addr_w)
    );
	
    // values for storing RGB for VGA display    
    wire [7:0] red, green, blue;
    assign vga_red = red[7:4];
    assign vga_green = green[7:4];
    assign vga_blue = blue[7:4];
    
    // if the address for VGA is valid, grab the RGB data
    rgb_valid rgb_valid (
        .data(frame_pixel_w),
        .nBlank(activeArea),
        .vga_red(red),
        .vga_green(green),
        .vga_blue(blue)
    );
    
endmodule
