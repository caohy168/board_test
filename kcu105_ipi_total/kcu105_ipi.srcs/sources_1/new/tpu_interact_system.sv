`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd
// Engineer: caohy
// 
// Create Date: 2019/11/28 16:10:10
// Design Name: 
// Module Name: tpu_interact_system
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


module tpu_interact_system(
    input s_axi_aclk,
    
    output reg[31:0]    BRAM_PORTB_0_addr,
    output wire         BRAM_PORTB_0_clk,
    output wire[31:0]   BRAM_PORTB_0_din,
    input [31:0]        BRAM_PORTB_0_dout,
    output reg          BRAM_PORTB_0_en,
    output wire         BRAM_PORTB_0_rst,
    output reg [3:0]    BRAM_PORTB_0_we  
    );

ila_interact ila_interact (
    .clk(s_axi_aclk),
    
    .probe0(  BRAM_PORTB_0_addr),
    .probe1(  BRAM_PORTB_0_clk ),
    .probe2(  BRAM_PORTB_0_din ),
    .probe3(  BRAM_PORTB_0_dout),
    .probe4(  BRAM_PORTB_0_en ),
    .probe5(  BRAM_PORTB_0_rst ),
    .probe6(  BRAM_PORTB_0_we  ),
    .probe7(read_bram_state),
    .probe8(read_wait_short),
    .probe9(read_wait_long)
);

assign  BRAM_PORTB_0_clk = s_axi_aclk;   
assign  BRAM_PORTB_0_din = 0;     assign  BRAM_PORTB_0_rst = 0;   
reg [7:0]read_bram_state=0;
reg [7:0]read_wait_short=0;
reg [31:0]read_wait_long=0;
always@(posedge s_axi_aclk)
begin
	case(read_bram_state)
		0://idle
		  begin
		      read_bram_state <= 1;
		      BRAM_PORTB_0_en<=0;
		      BRAM_PORTB_0_we<=0;
		      BRAM_PORTB_0_addr<=0;
		      read_wait_short<=0;
		      read_wait_long<=0;
		  end
		1://read
		  begin
		      BRAM_PORTB_0_en<=1;
		      read_bram_state <= 2;
		      BRAM_PORTB_0_addr<=BRAM_PORTB_0_addr+4;
		  end
		2://wait a little
		  begin
		      BRAM_PORTB_0_en<=0;
		     
		      if(read_wait_short>=8)
		          begin
		              read_wait_short<=0;
		              read_bram_state <= 3;
		          end
		      else
		          begin
		              read_wait_short<=read_wait_short+1;
		              read_bram_state <= 2;
		          end
		  end
		3://read 
            begin
                if(BRAM_PORTB_0_addr>=64)
                    begin
                        read_bram_state <= 4;
                    end
                else
                    begin
                        read_bram_state <= 1;
                    end
            end
		4://wait a long time
			if(read_wait_long>=128)
		          begin
		              read_wait_long<=0;
		              read_bram_state <= 0;
		          end
		      else
		          begin
		              read_wait_long<=read_wait_long+1;
		              read_bram_state <= 4;
		          end
		default:
			read_bram_state <= 0;
	endcase
end
endmodule
