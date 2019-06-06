
`timescale 1 ps / 1 ps

module n4fpga
(
   input				clk,				// 100Mhz clock input
   input                btnC,            	// center pushbutton
   input                btnU,            	// UP (North) pusbhbutton
   input                btnL,            	// LEFT (West) pushbutton
   input                btnD,           	// DOWN (South) pushbutton  - used for system reset
   input                btnR,            	// RIGHT (East) pushbutton
   input                btnCpuReset,    	// CPU reset pushbutton
   input    [15:0]      sw,                 // slide switches on Nexys 4
   output   [15:0]     led,            	// LEDs on Nexys 4  
   
   
   output [7:0]        an,             		// Seven Segment display
   output [6:0]        seg,					// Digits
   output              dp,             		// decimal point display on the seven segment 
   
   input                uart_rtl_rxd,    // USB UART Rx and Tx on Nexys 4
   output               uart_rtl_txd,     
    
   inout     [7:0]       JA             // JA PmodOLED connector 
   //inout     [7:0]       JC             // JC PMODHB3 connector
  // inout    [7:0]        JD,             // JD PmodENC connector
   
  );

wire clk_out_8M;
wire sysclk;
wire sysreset, sysreset_n;

wire [7:0] GPIO_0_IN_tri_i;
wire [7:0] GPIO_0_OUT_tri_o;

wire SPI_io0_i, SPI_io0_io, SPI_io0_o, SPI_io0_t;
wire SPI_io1_i, SPI_io1_io, SPI_io1_o, SPI_io1_t;
wire SPI_sck_i, SPI_sck_io, SPI_sck_o, SPI_sck_t;
wire SPI_ss_i_0, SPI_ss_io_0, SPI_ss_o_0, SPI_ss_t;

wire uart_rtl_ESP8266_rxd;
wire uart_rtl_ESP8266_txd;

logic uart_rts, uart_cts;

//wire dp_0;
//wire [6:0]seg_0;
//wire [7:0]an_0;

//wire btnC_0;
//wire btnD_0;
//wire btnL_0;
//wire btnR_0;
//wire btnU_0;

//wire [15:0]led_0;
//wire [15:0]sw_0;


//wire uart_rtl_0_rxd;
//wire uart_rtl_0_txd;

logic refclk, resetN, start;
logic miso, mosi, sclk, ss;
logic [7:0] din;

// system-wide signals
assign sysclk = clk;
assign sysreset_n = btnCpuReset;      // The CPU reset pushbutton is asserted low.  The other pushbuttons are asserted high
                                      // but the Microblaze for Nexys 4 expects reset to be asserted low
assign sysreset = ~sysreset_n;        // Generate a reset signal that is asserted high for any logic blocks expecting it.

assign JA[0] = SPI_io0_o;
assign JA[1] = SPI_io1_o;
assign JA[2] = SPI_sck_o;
assign JA[3] = SPI_ss_o_0;

assign JA[4] = uart_rtl_ESP8266_rxd;
assign JA[5] = uart_rtl_ESP8266_txd;
assign JA[6] = uart_rts;
assign JA[7] = uart_cts;

assign uart_rts = GPIO_0_OUT_tri_o[0];
assign uart_cts = GPIO_0_IN_tri_i[0];

embsys embsys_i
   (.sysclk(sysclk),
    .clk_out_8M(clk_out_8M),
    .sysreset_n(sysreset_n),
   
    .GPIO_0_IN_tri_i(GPIO_0_IN_tri_i),
    .GPIO_0_OUT_tri_o(GPIO_0_OUT_tri_o),
    
    //.SPI_io0_i(SPI_io0_i),
    .SPI_io0_o(SPI_io0_o),
    //.SPI_io0_t(SPI_io0_t),
    //.SPI_io1_i(SPI_io1_i),
    .SPI_io1_o(SPI_io1_o),
    //.SPI_io1_t(SPI_io1_t),
    //.SPI_sck_i(SPI_sck_i),
    .SPI_sck_o(SPI_sck_o),
    //.SPI_sck_t(SPI_sck_t),
   // .SPI_ss_i(SPI_ss_i_0),
    .SPI_ss_o(SPI_ss_o_0),
    //.SPI_ss_t(SPI_ss_t),
    
    .an_0(an),
    .dp_0(dp),
    .seg_0(seg),
        
    .btnC_0(btnC),
    .btnD_0(btnD),
    .btnL_0(btnL),
    .btnR_0(btnR),
    .btnU_0(btnU),
    
    .led_0(led),
    .sw_0(sw),
    
    .uart_rtl_ESP8266_rxd(uart_rtl_ESP8266_rxd),
    .uart_rtl_ESP8266_txd(uart_rtl_ESP8266_txd),
    
    .uart_rtl_0_rxd(uart_rtl_rxd),
    .uart_rtl_0_txd(uart_rtl_txd));

/*
IOBUF SPI_io0_iobuf
   (.I(SPI_io0_o),
    .IO(SPI_io0_io),
    .O(SPI_io0_i),
    .T(SPI_io0_t));
    
IOBUF SPI_io1_iobuf
   (.I(SPI_io1_o),
    .IO(SPI_io1_io),
    .O(SPI_io1_i),
    .T(SPI_io1_t));
    
IOBUF SPI_sck_iobuf
   (.I(SPI_sck_o),
    .IO(SPI_sck_io),
    .O(SPI_sck_i),
    .T(SPI_sck_t));
    
IOBUF SPI_ss_iobuf_0
   (.I(SPI_ss_o_0),
    .IO(SPI_ss_io),
    .O(SPI_ss_i_0),
    .T(SPI_ss_t));
*/

endmodule
