`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd
// Engineer: caohy
// 
// Create Date: 04/01/2020 11:03:05 PM
// Design Name: 
// Module Name: decimation
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
module decimation(
    input aclk,aclk1,reset,
    input s_axis_data_tvalid_I,s_axis_data_tvalid_Q,
    output logic s_axis_data_tready_I,s_axis_data_tready_Q,
    input [15:0]s_axis_data_tdata_I,s_axis_data_tdata_Q,
    
    input  m_axis_data_tready_ddc_I,m_axis_data_tready_ddc_Q,
    output logic m_axis_data_tvalid_ddc_I,m_axis_data_tvalid_ddc_Q,
    output logic [15:0]m_axis_data_tdata_ddc_I,m_axis_data_tdata_ddc_Q
    );
    
//assign s_axis_data_tready_I=1;
//assign s_axis_data_tready_Q=1;

logic firin_fifo_valid_I,firin_fifo_valid_Q;
assign firin_fifo_valid_I=s_axis_data_tvalid_I;
assign firin_fifo_valid_Q=s_axis_data_tvalid_Q;
logic [15:0]firin_fifo_data_I,firin_fifo_data_Q;
assign firin_fifo_data_I=s_axis_data_tdata_I;
assign firin_fifo_data_Q=s_axis_data_tdata_Q;
logic firin_fifo_ready_I,firin_fifo_ready_Q;
assign s_axis_data_tready_I=firin_fifo_ready_I;
assign s_axis_data_tready_Q=firin_fifo_ready_Q;

logic firout_fifo_valid_I,firout_fifo_valid_Q;
logic [15:0]firout_fifo_data_I,firout_fifo_data_Q;
logic firout_fifo_ready_I,firout_fifo_ready_Q;
decimation_infifo axis_fifo_r_firin_I  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(firin_fifo_valid_I),
          .s_axis_tready(firin_fifo_ready_I),
          .s_axis_tdata(firin_fifo_data_I),
          .m_axis_tvalid(firout_fifo_valid_I),
          .m_axis_tready(firout_fifo_ready_I),
          .m_axis_tdata(firout_fifo_data_I));

decimation_infifo axis_fifo_r_firin_Q  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(firin_fifo_valid_Q),
          .s_axis_tready(firin_fifo_ready_Q),
          .s_axis_tdata(firin_fifo_data_Q),
          .m_axis_tvalid(firout_fifo_valid_Q),
          .m_axis_tready(firout_fifo_ready_Q),
          .m_axis_tdata(firout_fifo_data_Q));
          
//logic [15:0]fir_data_cnt=0;
logic [39:0]fir_data_I,fir_data_Q;
logic fir_data_valid_I,fir_data_valid_Q;
fir_compiler_r fir_compiler_r_I(
    .aclk(aclk),
    .s_axis_data_tvalid(firout_fifo_valid_I),
    .s_axis_data_tready(firout_fifo_ready_I),
    .s_axis_data_tdata(firout_fifo_data_I),
    .m_axis_data_tvalid(fir_data_valid_I),
    .m_axis_data_tdata(fir_data_I));  
    
fir_compiler_r fir_compiler_r_Q(
    .aclk(aclk),
    .s_axis_data_tvalid(firout_fifo_valid_Q),
    .s_axis_data_tready(firout_fifo_ready_Q),
    .s_axis_data_tdata(firout_fifo_data_Q),
    .m_axis_data_tvalid(fir_data_valid_Q),
    .m_axis_data_tdata(fir_data_Q));  

//logic fir_fifoout_data_ready_I,fir_fifoout_data_ready_Q;
//assign fir_fifoout_data_ready_I=m_axis_data_tready_I;
//assign fir_fifoout_data_ready_Q=m_axis_data_tready_Q;
//logic [31:0]fir_fifoout_data_I,fir_fifoout_data_Q;
//logic fir_fifoout_data_valid_I,fir_fifoout_data_valid_Q;  
//assign m_axis_data_tvalid_I=fir_fifoout_data_valid_I;
//assign m_axis_data_tdata_I=fir_fifoout_data_I[15:8];
//assign m_axis_data_tvalid_Q=fir_fifoout_data_valid_Q;
//assign m_axis_data_tdata_Q=fir_fifoout_data_Q[25:10];
//test for wave compare
//logic [15:0]fir_out_fifo_cnt=0;
//logic fir_out_fifo_ready=0;
//always @(posedge aclk)begin
//    if(fir_data_valid_I)fir_out_fifo_cnt<=fir_out_fifo_cnt+1;
//    if(fir_out_fifo_cnt==680)fir_out_fifo_ready<=1;
//    end 

logic deci_firout_data_valid_I,deci_firout_data_valid_Q;
logic [39:0]deci_firout_data_I,deci_firout_data_Q; 
logic flag=0;
always @(posedge aclk)begin
    if(fir_data_valid_I)begin
        flag<=!flag;
        if(flag)begin
        deci_firout_data_valid_I<=fir_data_valid_I;
        deci_firout_data_I<=fir_data_I;
        end end
    else begin
        deci_firout_data_valid_I<=0;
        deci_firout_data_I<=0;
        end
    
    if(fir_data_valid_Q)begin
        flag<=!flag;
        if(flag)begin
        deci_firout_data_valid_Q<=fir_data_valid_Q;
        deci_firout_data_Q<=fir_data_Q;
        end end
    else begin
        deci_firout_data_valid_Q<=0;
        deci_firout_data_Q<=0;
        end
    end    
    
logic [39:0]firout_fifo_tdata_I,firout_fifo_tdata_Q;
logic firout_fifo_tvalid_I,firout_fifo_tvalid_Q;
assign m_axis_data_tdata_ddc_I=firout_fifo_tdata_I[31:15];
assign m_axis_data_tdata_ddc_Q=firout_fifo_tdata_Q[31:15];
logic firout_fifo_tready_I,firout_fifo_tready_Q;
assign m_axis_data_tvalid_ddc_I=firout_fifo_tvalid_I ;
assign m_axis_data_tvalid_ddc_Q=firout_fifo_tvalid_Q ;

//assign firout_fifo_tready_I=m_axis_data_tready_ddc_I;
//assign firout_fifo_tready_Q=m_axis_data_tready_ddc_Q;
assign firout_fifo_tready_I=0;
assign firout_fifo_tready_Q=0;
deci_firout_fifo deci_firout_fifo_I  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(deci_firout_data_valid_I),
          .s_axis_tready(),
          .s_axis_tdata(deci_firout_data_I),
          .m_axis_aclk(aclk1),
          .m_axis_tvalid(firout_fifo_tvalid_I),
          .m_axis_tready(firout_fifo_tready_I),
//          .m_axis_tready(fir_out_fifo_ready),
          .m_axis_tdata(firout_fifo_tdata_I),
          .m_axis_tlast(),
          .axis_rd_data_count()); 
deci_firout_fifo deci_firout_fifo_Q  (
          .s_axis_aresetn(!reset),
          .s_axis_aclk(aclk),
          .s_axis_tvalid(deci_firout_data_valid_Q),
          .s_axis_tready(),
          .s_axis_tdata(deci_firout_data_Q),
          .m_axis_aclk(aclk1),
          .m_axis_tvalid(firout_fifo_tvalid_Q),
          .m_axis_tready(firout_fifo_tready_Q),
          .m_axis_tdata(firout_fifo_tdata_Q),
          .m_axis_tlast(),
          .axis_rd_data_count()); 
endmodule
