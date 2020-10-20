`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/28 17:49:58
// Design Name: 
// Module Name: tpu_interact_system_th
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


module tpu_interact_system_th(

    );
 
    reg s_axi_aclk = 0;
    always #(10/2) s_axi_aclk = ~s_axi_aclk; 
    wire [31:0]BRAM_PORTB_0_addr;
    wire  BRAM_PORTB_0_clk;
    wire [31:0]BRAM_PORTB_0_din;
    wire[31:0]BRAM_PORTB_0_dout;
    wire  BRAM_PORTB_0_en;
    wire  BRAM_PORTB_0_rst;
    wire  [3:0]BRAM_PORTB_0_we;  
    
tpu_interact_system tpu_interact_system(
    .*
    );
endmodule
