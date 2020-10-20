`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/02 13:12:24
// Design Name: 
// Module Name: eqam
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
module eqam(
input clk,reset,

input  s_axis_inputI_tvalid,
output logic s_axis_inputI_tready,
input  [15:0]s_axis_inputI_tdata,
input  s_axis_inputI_tlast,
input  s_axis_inputQ_tvalid,
output logic s_axis_inputQ_tready,
input  [15:0]s_axis_inputQ_tdata,
input  s_axis_inputQ_tlast,

input  s_axis_inputI_tvalid_8,
output logic s_axis_inputI_tready_8,
input  [7:0]s_axis_inputI_tdata_8,
input  s_axis_inputI_tlast_8,
input  s_axis_inputQ_tvalid_8,
output logic s_axis_inputQ_tready_8,
input  [7:0]s_axis_inputQ_tdata_8,
input  s_axis_inputQ_tlast_8,

output logic m_axis_output_tvalid,
input m_axis_output_tready,
output logic[7:0]m_axis_output_tdata,
output logic m_axis_output_tlast
    );
//assign s_axis_inputI_tready_8 =1;
//assign s_axis_inputQ_tready_8 =1;
    
logic[15:0]tready_state; 
assign s_axis_inputI_tready = (tready_state==2)?0:1;
assign s_axis_inputQ_tready = (tready_state==2)?0:1;
always @(posedge clk)begin
    if (reset) begin
      tready_state=0;
    end
    else begin
      case (tready_state)
         0:begin
            if (s_axis_inputI_tlast && s_axis_inputI_tvalid)
              tready_state <=1;
            else
              tready_state <=0;end
         1:begin
            if (!s_axis_inputI_tvalid)
            tready_state <=2;
            else
            tready_state <=1;end
         2:begin
            if(m_axis_output_tlast)tready_state<=0;
            else tready_state<=2;end 
      endcase
      end end
      
logic[15:0]tready_state_8; 
assign s_axis_inputI_tready_8 = (tready_state_8==2)?0:1;
assign s_axis_inputQ_tready_8 = (tready_state_8==2)?0:1;
always @(posedge clk)begin
    if (reset) begin
      tready_state_8=0;
    end
    else begin
      case (tready_state_8)
         0:begin
            if (s_axis_inputI_tlast_8 && s_axis_inputI_tvalid_8)
              tready_state_8 <=1;
            else
              tready_state_8 <=0;end
         1:begin
            if (!s_axis_inputI_tvalid)
            tready_state_8 <=2;
            else
            tready_state_8 <=1;end
         2:begin
            if(m_axis_output_tlast)tready_state_8<=0;
            else tready_state_8<=2;end 
      endcase
      end end
      
logic signed[15:0]Isymbol[340:1];
logic signed[15:0]Qsymbol[340:1];   
logic signed[7:0]Isymbol_8[340:1];
logic signed[7:0]Qsymbol_8[340:1];   
logic [15:0]axi_inI_i=1;
logic [15:0]axi_inQ_i=1;
logic [15:0]axi_inI_i8=1;
logic [15:0]axi_inQ_i8=1;
always@(posedge clk)
    begin
        if(s_axis_inputI_tvalid)begin
            if(axi_inI_i<340)axi_inI_i<=axi_inI_i+1;
            else axi_inI_i<=1;
            Isymbol[axi_inI_i]<=s_axis_inputI_tdata;
           end
        else axi_inI_i<=1;
        if(s_axis_inputQ_tvalid)begin
            if(axi_inQ_i<340)axi_inQ_i<=axi_inQ_i+1;
            else axi_inQ_i<=1;
            Qsymbol[axi_inQ_i]<=s_axis_inputQ_tdata;
           end
        else axi_inQ_i<=1;
        
        if(s_axis_inputI_tvalid_8)begin
            if(axi_inI_i8<340)axi_inI_i8<=axi_inI_i8+1;
            else axi_inI_i8<=1;
            Isymbol_8[axi_inI_i8]<=s_axis_inputI_tdata_8;
           end
        else axi_inI_i8<=1;
        if(s_axis_inputQ_tvalid_8)begin
            if(axi_inQ_i8<340)axi_inQ_i8<=axi_inQ_i8+1;
            else axi_inQ_i8<=1;
            Qsymbol_8[axi_inQ_i8]<=s_axis_inputQ_tdata_8;
           end
        else axi_inQ_i8<=1;
    end  
    
logic [6:1]qam_gray_bin[340:1];   
genvar i;
generate
    for (i = 1; i <=340; i = i + 1)begin: qam_gray_bin_process
        always@(*)begin
//            case(Isymbol[i])//16bit I/Q input
            case(Isymbol_8[i])//8bit I/Q input
            -7:qam_gray_bin[i][6:4]<=3'b000;
            -5:qam_gray_bin[i][6:4]<=3'b001;
            -1:qam_gray_bin[i][6:4]<=3'b010;
            -3:qam_gray_bin[i][6:4]<=3'b011;
            +7:qam_gray_bin[i][6:4]<=3'b100;
            +5:qam_gray_bin[i][6:4]<=3'b101;
            +1:qam_gray_bin[i][6:4]<=3'b110;
            +3:qam_gray_bin[i][6:4]<=3'b111;
            endcase
//            case(Qsymbol[i])//16bit I/Q input
            case(Qsymbol_8[i])//8bit I/Q input
            +7:qam_gray_bin[i][3:1]<=3'b000;
            +5:qam_gray_bin[i][3:1]<=3'b001;
            +1:qam_gray_bin[i][3:1]<=3'b010;
            +3:qam_gray_bin[i][3:1]<=3'b011;
            -7:qam_gray_bin[i][3:1]<=3'b100;
            -5:qam_gray_bin[i][3:1]<=3'b101;
            -1:qam_gray_bin[i][3:1]<=3'b110;
            -3:qam_gray_bin[i][3:1]<=3'b111;
            endcase
            end end
endgenerate   
logic [6:1]grayinv32[1:64]={0,1,3,2,7,6,4,5,15,14,12,13,8,9,11,10,31,30,28,29,24,25,27,26,16,17,19,18,
23,22,20,21,63,62,60,61,56,57,59,58,48,49,51,50,55,54,52,53,32,33,35,34,39,38,36,37,47,46,44,45,40,41,43,42};
logic [6:1]qam_bin[340:1];
logic [1:2040]data_out=0;
genvar j;
generate
    for (j = 1; j <=340; j = j + 1)begin: qam_bin_process
        always@(*)begin
            qam_bin[j]<=grayinv32[qam_gray_bin[j]+1];
            end 
        always@(posedge clk)begin
            data_out[(6*(j-1)+1):(6*(j-1)+6)]<=qam_bin[j];
            end 
    end
endgenerate   
logic [8:1]qam_output[255:1];
genvar k;
generate
    for (k = 1; k <=255; k = k + 1)begin: qam_output_process
        always@(posedge clk)begin
            qam_output[k]<=data_out[(8*(k-1)+1):(8*(k-1)+8)];
            end 
    end
endgenerate 

logic[15:0]axi_out_i=0;  
logic[15:0]axi_out_state; 
always @(posedge clk)begin
if (reset) begin
  axi_out_state=0;
end
else begin
  case (axi_out_state)
     0: begin
//        if (s_axis_inputI_tlast||s_axis_inputQ_tlast)//16 bit I/Q output
        if (s_axis_inputI_tlast_8 && s_axis_inputI_tvalid_8)//8 bit I/Q output
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
        if(axi_out_i<340)
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
              m_axis_output_tdata<=qam_output[axi_out_i];
              end
          else begin
              m_axis_output_tvalid<=0;
              m_axis_output_tdata<=0;
              end
          if((axi_out_i==255)&&(axi_out_state==2))m_axis_output_tlast<=1;
          else m_axis_output_tlast<=0;
      end   

endmodule
