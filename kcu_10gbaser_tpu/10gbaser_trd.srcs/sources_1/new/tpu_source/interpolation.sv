`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd
// Engineer: caohy
// 
// Create Date: 04/01/2020 07:41:20 PM
// Design Name: 
// Module Name: interpolation
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

module interpolation(
    input aclk,reset,
    input s_axis_data_tvalid_I,s_axis_data_tvalid_Q,
    output logic s_axis_data_tready_I,s_axis_data_tready_Q,
    input [7:0]s_axis_data_tdata_I,s_axis_data_tdata_Q,
    input  s_axis_inputI_tlast,s_axis_inputQ_tlast,
    input m_axis_data_tready_I,m_axis_data_tready_Q,
    output logic m_axis_data_tvalid_I,m_axis_data_tvalid_Q,
    output logic [7:0]m_axis_data_tdata_I,m_axis_data_tdata_Q,
    output logic m_axis_data_tlast_I,m_axis_data_tlast_Q
    );
    
logic firin_fifo_valid_I,firin_fifo_valid_Q;
logic firin_fifo_last_I,firin_fifo_last_Q;

logic [7:0]firin_fifo_data_I,firin_fifo_data_Q;
logic firin_fifo_ready_I,firin_fifo_ready_Q;
assign s_axis_data_tready_I=firin_fifo_ready_I;
assign s_axis_data_tready_Q=firin_fifo_ready_Q;
logic flag_I=0;
logic flag_Q=0;
always @(posedge aclk)begin
    firin_fifo_valid_I<=s_axis_data_tvalid_I;
    firin_fifo_valid_Q<=s_axis_data_tvalid_Q;
    if(s_axis_data_tvalid_I)begin
        flag_I<=!flag_I;
        if(flag_I)begin
            firin_fifo_data_I<=s_axis_data_tdata_I;
            firin_fifo_last_I<=s_axis_inputI_tlast;
            end
        else begin
            firin_fifo_data_I<=0;
            firin_fifo_last_I<=0;
            end end
    else begin
            firin_fifo_data_I<=0;
            firin_fifo_last_I<=0;
            end 
    if(s_axis_data_tvalid_Q)begin
        flag_Q<=!flag_Q;
        if(flag_Q)begin
            firin_fifo_data_Q<=s_axis_data_tdata_Q;
            firin_fifo_last_Q<=s_axis_inputQ_tlast;
            end
        else begin
            firin_fifo_data_Q<=0;
            firin_fifo_last_Q<=0;
            end end
    else begin
            firin_fifo_data_Q<=0;
            firin_fifo_last_Q<=0;
            end 
    end 
    
logic firout_fifo_valid_I,firout_fifo_valid_Q;
logic [7:0]firout_fifo_data_I,firout_fifo_data_Q;
logic firout_fifo_ready_I,firout_fifo_ready_Q;
logic firout_fifo_last_I,firout_fifo_last_Q;
  
interpolation_infifo axis_fifo_t_firin_I  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(firin_fifo_valid_I),
          .s_axis_tready(firin_fifo_ready_I),
          .s_axis_tdata(firin_fifo_data_I),
          .s_axis_tlast(firin_fifo_last_I),
          .m_axis_tvalid(firout_fifo_valid_I),
          .m_axis_tready(firout_fifo_ready_I),
          .m_axis_tdata(firout_fifo_data_I),
          .m_axis_tlast(firout_fifo_last_I));

interpolation_infifo axis_fifo_t_firin_Q  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(firin_fifo_valid_Q),
          .s_axis_tready(firin_fifo_ready_Q),
          .s_axis_tdata(firin_fifo_data_Q),
          .s_axis_tlast(firin_fifo_last_Q),
          .m_axis_tvalid(firout_fifo_valid_Q),
          .m_axis_tready(firout_fifo_ready_Q),
          .m_axis_tdata(firout_fifo_data_Q),
          .m_axis_tlast(firout_fifo_last_Q));
          
//logic [15:0]fir_data_cnt=0;
logic [31:0]fir_data_I,fir_data_Q;
logic fir_data_valid_I,fir_data_valid_Q;
logic fir_data_last_I,fir_data_last_Q;
fir_compiler_t fir_compiler_t_I(
    .aclk(aclk),
    .s_axis_data_tvalid(firout_fifo_valid_I),
    .s_axis_data_tready(firout_fifo_ready_I),
    .s_axis_data_tdata(firout_fifo_data_I),
    .s_axis_data_tlast(firout_fifo_last_I),
    .m_axis_data_tvalid(fir_data_valid_I),
    .m_axis_data_tdata(fir_data_I),
    .m_axis_data_tlast(fir_data_last_I));  
    
fir_compiler_t fir_compiler_t_Q(
    .aclk(aclk),
    .s_axis_data_tvalid(firout_fifo_valid_Q),
    .s_axis_data_tready(firout_fifo_ready_Q),
    .s_axis_data_tdata(firout_fifo_data_Q),
    .s_axis_data_tlast(firout_fifo_last_Q),
    .m_axis_data_tvalid(fir_data_valid_Q),
    .m_axis_data_tdata(fir_data_Q),
    .m_axis_data_tlast(fir_data_last_Q));  

logic fir_fifoout_data_ready_I,fir_fifoout_data_ready_Q;
//assign fir_fifoout_data_ready_I=m_axis_data_tready_I;
//assign fir_fifoout_data_ready_Q=m_axis_data_tready_Q;
//assign fir_fifoout_data_ready_I=0;
//assign fir_fifoout_data_ready_Q=0;
logic[15:0]fifoout_state_I,fifoout_state_Q; 
logic[31 : 0]fifoout_rd_data_count_i,fifoout_rd_data_count_q;
always @(posedge aclk)begin
    if (reset) begin
      fifoout_state_I<=0;
      fifoout_state_Q<=0;
      fir_fifoout_data_ready_I<=0;
      fir_fifoout_data_ready_Q<=0;
    end
    else begin
      case (fifoout_state_I)
         0:begin
            if (m_axis_data_tready_I && (fifoout_rd_data_count_i==680))
              fifoout_state_I <=1;
            else
              fifoout_state_I <=0;
            fir_fifoout_data_ready_I<=0;
            end
         1:begin
            if (fifoout_rd_data_count_i==0)
            fifoout_state_I <=0;
            else
            fifoout_state_I <=1;
            fir_fifoout_data_ready_I<=1;
            end
      endcase
      case (fifoout_state_Q)
         0:begin
            if (m_axis_data_tready_Q && (fifoout_rd_data_count_q==680))
              fifoout_state_Q <=1;
            else
              fifoout_state_Q <=0;
            fir_fifoout_data_ready_Q<=0;
            end
         1:begin
            if (fifoout_rd_data_count_q==0)
            fifoout_state_Q <=0;
            else
            fifoout_state_Q <=1;
            fir_fifoout_data_ready_Q<=1;
            end
      endcase
      end end
logic [31:0]fir_fifoout_data_I,fir_fifoout_data_Q;
logic fir_fifoout_data_valid_I,fir_fifoout_data_valid_Q;  
assign m_axis_data_tvalid_I=fir_fifoout_data_valid_I && fir_fifoout_data_ready_I;
assign m_axis_data_tdata_I=fir_fifoout_data_I[15:8];
assign m_axis_data_tvalid_Q=fir_fifoout_data_valid_Q && fir_fifoout_data_ready_Q;
assign m_axis_data_tdata_Q=fir_fifoout_data_Q[15:8];
//test for wave compare
//logic [15:0]fir_out_fifo_cnt=0;
//logic fir_out_fifo_ready=0;
//always @(posedge aclk)begin
//    if(fir_data_valid_I)fir_out_fifo_cnt<=fir_out_fifo_cnt+1;
//    if(fir_out_fifo_cnt==680)fir_out_fifo_ready<=1;
//    end 

fir_out_fifo fir_out_fifo_I  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(fir_data_valid_I),
          .s_axis_tready(),
          .s_axis_tdata(fir_data_I),
          .s_axis_tlast(fir_data_last_I),
          .m_axis_tvalid(fir_fifoout_data_valid_I),
          .m_axis_tready(fir_fifoout_data_ready_I),
//          .m_axis_tready(fir_out_fifo_ready),
          .m_axis_tdata(fir_fifoout_data_I),
          .m_axis_tlast(m_axis_data_tlast_I),
          .axis_rd_data_count(fifoout_rd_data_count_i),
          .prog_full()); 
fir_out_fifo fir_out_fifo_Q  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(fir_data_valid_Q),
          .s_axis_tready(),
          .s_axis_tdata(fir_data_Q),
          .s_axis_tlast(fir_data_last_Q),
          .m_axis_tvalid(fir_fifoout_data_valid_Q),
          .m_axis_tready(fir_fifoout_data_ready_Q),
          .m_axis_tdata(fir_fifoout_data_Q),
          .m_axis_tlast(m_axis_data_tlast_Q),
          .axis_rd_data_count(fifoout_rd_data_count_q),
          .prog_full()); 
          
endmodule
