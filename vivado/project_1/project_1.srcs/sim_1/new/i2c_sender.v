`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2019 08:39:57 PM
// Design Name: 
// Module Name: i2c_sender
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


module i2c_sender(
    input clk,
    input reset_n,
    inout siod,
    output reg sioc,
    output reg taken,
    input send,
    input [7:0] id,
    input [7:0] register,
    input [7:0] value
    );
    
    reg [7:0] divider;
    reg [31:0] busy_sr;
    reg [31:0] data_sr;
   
    assign siod = ((busy_sr[11:10]==2'b10)||(busy_sr[20:19]==2'b10)||(busy_sr[29:28]==2'b10)) ? 1'bz : data_sr[31];
    
    always @(posedge clk or negedge reset_n) begin
        if(~reset_n) begin
            divider <= 8'b00000001;
            busy_sr <= 0;
            data_sr <= 32'hffffffff;
        end else begin
            taken <= 0;
            if(busy_sr[31] == 1'b0) begin
                sioc <= 1'b1;
                if(send == 1'b1) begin
                    if(divider == 8'h00) begin
                        data_sr <= {3'b100,id,1'b0,register,1'b0,value,1'b0,2'b01};
                        busy_sr <= {32'b11111111_11111111_11111111_11111111};
                        taken <= 1'b1;
                    end else
                        divider <= divider + 1'b1;
                end
            end else begin
                case({busy_sr[31:29], busy_sr[2:0]})
                    6'b111111: 
                        case(divider[7:6])
                            2'b00: sioc <= 1'b1;
                            2'b01: sioc <= 1'b1;
                            2'b10: sioc <= 1'b1;
                            default: sioc <= 1'b1;
                        endcase
                    6'b111110:
                        case(divider[7:6])
                            2'b00: sioc <= 1'b1;
                            2'b01: sioc <= 1'b1;
                            2'b10: sioc <= 1'b1;
                            default: sioc <= 1'b1;
                        endcase
                    6'b111100:
                        case(divider[7:6])
                            2'b00: sioc <= 1'b0;
                            2'b01: sioc <= 1'b0;
                            2'b10: sioc <= 1'b0;
                            default: sioc <= 1'b0;
                        endcase
                    6'b110000:
                        case(divider[7:6])
                            2'b00: sioc <= 1'b0;
                            2'b01: sioc <= 1'b1;
                            2'b10: sioc <= 1'b1;
                            default: sioc <= 1'b1;
                        endcase
                    6'b100000:
                        case(divider[7:6])
                            2'b00: sioc <= 1'b1;
                            2'b01: sioc <= 1'b1;
                            2'b10: sioc <= 1'b1;
                            default: sioc <= 1'b1;
                        endcase
                    6'b000000:
                        case(divider[7:6])
                            2'b00: sioc <= 1'b1;
                            2'b01: sioc <= 1'b1;
                            2'b10: sioc <= 1'b1;
                            default: sioc <= 1'b1;
                        endcase
                    default:
                        case(divider[7:6])
                            2'b00: sioc <= 1'b0;
                            2'b01: sioc <= 1'b1;
                            2'b10: sioc <= 1'b1;
                            default: sioc <= 1'b0;
                        endcase
                endcase
                
                if(divider == 8'hff) begin
                    busy_sr <= {busy_sr[30:0],1'b0};
                    data_sr <= {data_sr[30:0],1'b1};
                    divider <= 0;
                end else
                    divider <= divider + 1'b1;
            end
        end
    end
    
endmodule
