`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/02/29 16:51:42
// Design Name: 
// Module Name: qam
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
module qam(
input clk,reset,

input s_axis_input_tvalid,
output logic s_axis_input_tready,
input [7:0]s_axis_input_tdata,
input s_axis_input_tlast,

output logic m_axis_outputI_tvalid,
input  m_axis_outputI_tready,
output logic [15:0]m_axis_outputI_tdata,
output logic m_axis_outputI_tlast,
output logic m_axis_outputQ_tvalid,
input  m_axis_outputQ_tready,
output logic [15:0]m_axis_outputQ_tdata,
output logic m_axis_outputQ_tlast,

output logic m_axis_outputI_tvalid_8,
input  m_axis_outputI_tready_8,
output logic [7:0]m_axis_outputI_tdata_8,
output logic m_axis_outputI_tlast_8,
output logic m_axis_outputQ_tvalid_8,
input  m_axis_outputQ_tready_8,
output logic [7:0]m_axis_outputQ_tdata_8,
output logic m_axis_outputQ_tlast_8
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
            if(m_axis_outputI_tlast)tready_state<=0;
            else tready_state<=2;end 
      endcase
      end end
logic [15:0]axi_in_i=1;
logic [8:1]qam_input[255:1];
logic [6:1]qam_bin[340:1];
logic [1:2040]data_in=0;
always@(posedge clk)
    begin
        if(s_axis_input_tvalid)begin
            if(axi_in_i<255)axi_in_i<=axi_in_i+1;
            else axi_in_i<=1;
            qam_input[axi_in_i]<=s_axis_input_tdata;
            data_in[8*(axi_in_i-1)+1]<=s_axis_input_tdata[7];
            data_in[8*(axi_in_i-1)+2]<=s_axis_input_tdata[6];
            data_in[8*(axi_in_i-1)+3]<=s_axis_input_tdata[5];
            data_in[8*(axi_in_i-1)+4]<=s_axis_input_tdata[4];
            data_in[8*(axi_in_i-1)+5]<=s_axis_input_tdata[3];
            data_in[8*(axi_in_i-1)+6]<=s_axis_input_tdata[2];
            data_in[8*(axi_in_i-1)+7]<=s_axis_input_tdata[1];
            data_in[8*(axi_in_i-1)+8]<=s_axis_input_tdata[0];end
        else axi_in_i<=1;
    end 
genvar j;
generate
    for (j = 1; j <=340; j = j + 1)begin: qam_bin_process
        always@(*)begin
            qam_bin[j]<={data_in[6*(j-1)+1],data_in[6*(j-1)+2],data_in[6*(j-1)+3],
                         data_in[6*(j-1)+4],data_in[6*(j-1)+5],data_in[6*(j-1)+6]};
            end end
endgenerate
logic [6:1]gray32[1:64]={0,1,3,2,6,7,5,4,12,13,15,14,10,11,9,8,24,25,27,26,30,31,29,28,20,21,23,22,18,19,17,16,
48,49,51,50,54,55,53,52,60,61,63,62,58,59,57,56,40,41,43,42,46,47,45,44,36,37,39,38,34,35,33,32};
logic [6:1]qam_gray_bin[340:1];
genvar i;
generate
    for (i = 1; i <=340; i = i + 1)begin: qam_gray_bin_process
        always@(*)begin
            qam_gray_bin[i]<=gray32[qam_bin[i]+1];
            end end
endgenerate   
logic signed[15:0]Imodel[7:0]={-7,-5,-3,-1,1,3,5,7};
logic signed[15:0]Qmodel[7:0]={-7,-5,-3,-1,1,3,5,7};
logic signed[15:0]IEncmodel[0:63]={Imodel[7],-7,-7,-7,-7,-7,-7,-7,
                                          -5,-5,-5,-5,-5,-5,-5,-5,
                                          -1,-1,-1,-1,-1,-1,-1,-1,
                                          -3,-3,-3,-3,-3,-3,-3,-3,
                                          +7,+7,+7,+7,+7,+7,+7,+7,
                                          +5,+5,+5,+5,+5,+5,+5,+5,
                                          +1,+1,+1,+1,+1,+1,+1,+1,
                                          +3,+3,+3,+3,+3,+3,+3,+3};
logic signed[15:0]QEncmodel[0:63]={Qmodel[0],+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3};
 
logic signed[7:0]IEncmodel_8[0:63]={      -7,-7,-7,-7,-7,-7,-7,-7,
                                          -5,-5,-5,-5,-5,-5,-5,-5,
                                          -1,-1,-1,-1,-1,-1,-1,-1,
                                          -3,-3,-3,-3,-3,-3,-3,-3,
                                          +7,+7,+7,+7,+7,+7,+7,+7,
                                          +5,+5,+5,+5,+5,+5,+5,+5,
                                          +1,+1,+1,+1,+1,+1,+1,+1,
                                          +3,+3,+3,+3,+3,+3,+3,+3};
logic signed[7:0]QEncmodel_8[0:63]={      +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3,
                                          +7,+5,+1,+3,-7,-5,-1,-3};
//logic signed[15:0]IQmodel[0:63][1:0]=
//{{Imodel[7],Qmodel[0]},{-7,5},{-7,1},{-7,3},{-7,-7},{-7,-5},{-7,-1},{-7,-3},
//                {-5,7},{-5,5},{-5,1},{-5,3},{-5,-7},{-5,-5},{-5,-1},{-5,-3},
//                {-1,7},{-1,5},{-1,1},{-1,3},{-1,-7},{-1,-5},{-1,-1},{-1,-3},
//                {-3,7},{-3,5},{-3,1},{-3,3},{-3,-7},{-3,-5},{-3,-1},{-3,-3},
//                {+7,7},{+7,5},{+7,1},{+7,3},{+7,-7},{+7,-5},{+7,-1},{+7,-3},
//                {+5,7},{+5,5},{+5,1},{+5,3},{+5,-7},{+5,-5},{+5,-1},{+5,-3},
//                {+1,7},{+1,5},{+1,1},{+1,3},{+1,-7},{+1,-5},{+1,-1},{+1,-3},
//                {+3,7},{+3,5},{+3,1},{+3,3},{+3,-7},{+3,-5},{+3,-1},{+3,-3}}; 

logic signed[15:0]Isymbol[340:1];
logic signed[15:0]Qsymbol[340:1];
logic signed[7:0]Isymbol_8[340:1];
logic signed[7:0]Qsymbol_8[340:1];
genvar k;
generate
    for (k =1 ; k <=340; k = k + 1)begin: qam_process
        always@(*)begin
            Isymbol[k]<=IEncmodel[qam_gray_bin[k]];
            Qsymbol[k]<=QEncmodel[qam_gray_bin[k]];
            
            Isymbol_8[k]<=IEncmodel_8[qam_gray_bin[k]];
            Qsymbol_8[k]<=QEncmodel_8[qam_gray_bin[k]];
            end end
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
        if (s_axis_input_tlast && s_axis_input_tvalid)
          axi_out_state <=1;
        else
          axi_out_state <=0;
     end
     1: begin
        if (m_axis_outputI_tready)
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
  
logic[15:0]axi_out_i_8=0;  
logic[15:0]axi_out_state_8; 
always @(posedge clk)begin
if (reset) begin
  axi_out_state_8=0;
end
else begin
  case (axi_out_state)
     0: begin
        if (s_axis_input_tlast && s_axis_input_tvalid)
          axi_out_state_8 <=1;
        else
          axi_out_state_8 <=0;
     end
     1: begin
        if (m_axis_outputI_tready_8)
          axi_out_state_8 <=2;
        else
          axi_out_state_8 <=1;
     end
     2:begin
        if(axi_out_i_8<340)
            begin
                axi_out_i_8<=axi_out_i_8+1;
                axi_out_state_8<=2;
            end
        else begin
            axi_out_i_8<=0;
            axi_out_state_8<=0;
        end 
     end
  endcase
  end end
  
  
always@(posedge clk)
      begin
          if((axi_out_i>=1)&&(axi_out_i<=340)&&(axi_out_state==2))begin
              m_axis_outputI_tvalid<=1;
              m_axis_outputI_tdata<=Isymbol[axi_out_i];
              m_axis_outputQ_tvalid<=1;
              m_axis_outputQ_tdata<=Qsymbol[axi_out_i];
              end
          else begin
              m_axis_outputI_tvalid<=0;
              m_axis_outputI_tdata<=0;
              m_axis_outputQ_tvalid<=0;
              m_axis_outputQ_tdata<=0;
              end
          if((axi_out_i==340)&&(axi_out_state==2))m_axis_outputI_tlast<=1;
          else m_axis_outputI_tlast<=0;
          if((axi_out_i==340)&&(axi_out_state==2))m_axis_outputQ_tlast<=1;
          else m_axis_outputQ_tlast<=0;
      end  
      
 always@(posedge clk)
      begin
          if((axi_out_i_8>=1)&&(axi_out_i_8<=340)&&(axi_out_state_8==2))begin
              m_axis_outputI_tvalid_8<=1;
              m_axis_outputI_tdata_8<=Isymbol_8[axi_out_i];
              m_axis_outputQ_tvalid_8<=1;
              m_axis_outputQ_tdata_8<=Qsymbol_8[axi_out_i];
              end
          else begin
              m_axis_outputI_tvalid_8<=0;
              m_axis_outputI_tdata_8<=0;
              m_axis_outputQ_tvalid_8<=0;
              m_axis_outputQ_tdata_8<=0;
              end
          if((axi_out_i_8==340)&&(axi_out_state_8==2))m_axis_outputI_tlast_8<=1;
          else m_axis_outputI_tlast_8<=0;
          if((axi_out_i_8==340)&&(axi_out_state_8==2))m_axis_outputQ_tlast_8<=1;
          else m_axis_outputQ_tlast_8<=0;
      end   
       
endmodule
