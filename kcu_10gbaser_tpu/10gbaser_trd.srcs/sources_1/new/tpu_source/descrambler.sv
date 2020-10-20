`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/03 08:49:23
// Design Name: 
// Module Name: descrambler
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
module descrambler(
input clk,reset,

input s_axis_input_tvalid,
output logic s_axis_input_tready,
input [7:0]s_axis_input_tdata,
input s_axis_input_tlast,

output logic m_axis_output_tvalid,
input  m_axis_output_tready,
output logic [7:0]m_axis_output_tdata,
output logic m_axis_output_tlast
    );
logic[15:0]tready_state; 
assign s_axis_input_tready = (tready_state==2)?0:1;
always @(posedge clk)begin
    if (reset) begin
      tready_state=0;
    end
    else begin
      case (tready_state)
         0:begin
            if (s_axis_input_tlast && s_axis_input_tvalid)
              tready_state <=1;
            else
              tready_state <=0;end
         1:begin
            if (!s_axis_input_tvalid)
            tready_state <=2;
            else
            tready_state <=1;end
         2:begin
            if(m_axis_output_tlast)tready_state<=0;
            else tready_state<=2;end 
      endcase
      end end    
    
logic [8:1]msg_eqam[255:1];  
logic [15:0]axi_in_i=1;
always@(posedge clk)
    begin
        if(s_axis_input_tvalid)begin
            if(axi_in_i<255)axi_in_i<=axi_in_i+1;
            else axi_in_i<=1;
            msg_eqam[axi_in_i]<=s_axis_input_tdata;
           end
        else axi_in_i<=1;
    end  
    
logic [15:1]s=15'b100111100011111;//20255    
logic [15:0]i=1;logic [15:0]j=1;
logic [8:1]descrambler_dat[255:1];  
logic msb,t;

logic[15:0]descrambler_state; 
always @(posedge clk)begin
if (reset) begin
  descrambler_state=0;
end
else begin
  case (descrambler_state)
     0: begin
        if (s_axis_input_tlast)
          descrambler_state <=1;
        else
          descrambler_state <=0;
     end
     1:begin
        if((j==255)&(i==8))descrambler_state<=0;
        else descrambler_state<=1;
     end
  endcase
  end end
always@(posedge clk)
    begin
        if(descrambler_state==1)begin
            if(j<=255)begin
                if(i<8)i<=i+1;
                else begin
                    i<=1;
                    j<=j+1;
                end 
            msb=s[1]^s[2];
            s=s>>1;
            s={msb,s[14:1]};
            t=msg_eqam[j][9-i]^msb;
            descrambler_dat[j][9-i]=t; 
            end
        end 
        else begin
            i<=1;
            j<=1;
            s=15'b100111100011111;//20255   
        end 
    end
//	descrambler_in=msg_eqam9;
//    for j=1:size(msg_eqam9,2);
//        for i=1:8
//        msb=bitxor(bitget(s,1),bitget(s,2));
//        s=bitshift(s,-1);
//        s=bitset(s,15,msb);
//        t=bitxor(bitget(msg_eqam9(j),9-i),msb);
//        descrambler_in(j)=bitset(descrambler_in(j),9-i,t);
//        end
//    end
//    descrambler_out(k,:)=descrambler_in

logic[15:0]axi_out_i=0;  
logic[15:0]axi_out_state; 
always @(posedge clk)begin
if (reset) begin
  axi_out_state=0;
end
else begin
  case (axi_out_state)
     0: begin
        if (j==255)
          axi_out_state <=1;
        else
          axi_out_state <=0;
     end
     1: begin
        if (m_axis_output_tready)
          axi_out_state <=2;
        else
          axi_out_state <=1;
     end
     2:begin
        if(axi_out_i<255)
            begin
                axi_out_i<=axi_out_i+1;
                axi_out_state<=2;
            end
        else begin
            axi_out_i<=0;
            axi_out_state<=0;
        end 
     end
  endcase
  end end
  
always@(posedge clk)
      begin
          if((axi_out_i>=1)&&(axi_out_i<=255)&&(axi_out_state==2))begin
              m_axis_output_tvalid<=1;
              m_axis_output_tdata<=descrambler_dat[axi_out_i];
              end
          else begin
              m_axis_output_tvalid<=0;
              m_axis_output_tdata<=0;
              end
          if((axi_out_i==255)&&(axi_out_state==2))m_axis_output_tlast<=1;
          else m_axis_output_tlast<=0;
      end  
endmodule
