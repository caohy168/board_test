`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/12 09:23:45
// Design Name: 
// Module Name: upfir
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
module upfir(
    input clk_250m,clk_500m,
    input reset,
    
    input  s_axis_input_tvalid[8],
    output logic s_axis_input_tready[8],
    input  [15:0]s_axis_input_tdata[8],
    input  s_axis_input_tlast[8],
    
    output logic m_axis_output_tvalid[8],
    output logic [15:0]m_axis_outputI_tdata[8]
    );
genvar i;
generate
    for (i = 0; i < 8; i = i + 1)begin:layer1_transmit_lane
    assign s_axis_input_tready[i]=1;
end
endgenerate    
//    //==============================================================
//    //rrc coeff
//    //band=[-0.0120059176147931	0.00863100036767819	0.0193478458508522	-0.0268274414065058	-0.0266838029991328	0.0600295880739653	0.0329462383413051	-0.130644555281419	-0.0371610308610786	0.443495229965941	0.745854302895469	0.443495229965941	-0.0371610308610786	-0.130644555281419	0.0329462383413051	0.0600295880739653	-0.0266838029991328	-0.0268274414065058	0.0193478458508522	0.00863100036767819	-0.0120059176147931]
//    //==============================================================
//    logic signed[15:0] coeff1  = -0.0120059176147931    *1000;
//    logic signed[15:0] coeff2  = 0.00863100036767819    *1000;
//    logic signed[15:0] coeff3  = 0.0193478458508522     *1000;
//    logic signed[15:0] coeff4  = -0.0268274414065058    *1000;
//    logic signed[15:0] coeff5  = -0.0266838029991328    *1000;
//    logic signed[15:0] coeff6  = 0.0600295880739653     *1000;
//    logic signed[15:0] coeff7  = 0.0329462383413051     *1000;
//    logic signed[15:0] coeff8  = -0.130644555281419     *1000;
//    logic signed[15:0] coeff9  = -0.0371610308610786    *1000;
//    logic signed[15:0] coeff10 = 0.443495229965941      *1000;
//    logic signed[15:0] coeff11 = 0.745854302895469      *1000;
//    logic signed[15:0] coeff12 = 0.443495229965941      *1000;
//    logic signed[15:0] coeff13 = -0.0371610308610786    *1000;
//    logic signed[15:0] coeff14 = -0.130644555281419     *1000;
//    logic signed[15:0] coeff15 = 0.0329462383413051     *1000;
//    logic signed[15:0] coeff16 = 0.0600295880739653     *1000;
//    logic signed[15:0] coeff17 = -0.0266838029991328    *1000;
//    logic signed[15:0] coeff18 = -0.0268274414065058    *1000;
//    logic signed[15:0] coeff19 = 0.0193478458508522     *1000;
//    logic signed[15:0] coeff20 = 0.00863100036767819    *1000;
//    logic signed[15:0] coeff21 = -0.0120059176147931    *1000;
//    //===============================================================
//    // delay
//    //===============================================================
//    logic signed [15:0] delay_pipeline1=0;
//    logic signed [15:0] delay_pipeline2=0;
//    logic signed [15:0] delay_pipeline3=0;
//    logic signed [15:0] delay_pipeline4=0;
//    logic signed [15:0] delay_pipeline5=0;
//    logic signed [15:0] delay_pipeline6=0;
//    logic signed [15:0] delay_pipeline7=0;
//    logic signed [15:0] delay_pipeline8=0;
//    logic signed [15:0] delay_pipeline9=0;
//    logic signed [15:0] delay_pipeline10=0;
//    logic signed [15:0] delay_pipeline11=0;
//    logic signed [15:0] delay_pipeline12=0;
//    logic signed [15:0] delay_pipeline13=0;
//    logic signed [15:0] delay_pipeline14=0;
//    logic signed [15:0] delay_pipeline15=0;
//    logic signed [15:0] delay_pipeline16=0;
//    always@(posedge clk_250m)
//        begin
//            delay_pipeline1 <= s_axis_input_tdata ;
//            delay_pipeline2 <= delay_pipeline1 ;
//            delay_pipeline3 <= delay_pipeline2 ;
//            delay_pipeline4 <= delay_pipeline3 ;
//            delay_pipeline5 <= delay_pipeline4 ;
//            delay_pipeline6 <= delay_pipeline5 ;
//            delay_pipeline7 <= delay_pipeline6 ;
//            delay_pipeline8 <= delay_pipeline7 ;
//            delay_pipeline10 <= delay_pipeline9 ;
//            delay_pipeline11 <= delay_pipeline10 ;
//            delay_pipeline12 <= delay_pipeline11 ;
//            delay_pipeline13 <= delay_pipeline12 ;
//            delay_pipeline14 <= delay_pipeline13 ;
//            delay_pipeline16 <= delay_pipeline15 ;
//        end
//logic signed [15:0] adder=0;
//always@(posedge clk_250m) 
//adder <= (s_axis_input_tdata+delay_pipeline1*coeff1+delay_pipeline2*coeff2+delay_pipeline3*coeff3+delay_pipeline4*coeff4
//        +delay_pipeline5*coeff5+delay_pipeline6*coeff6+delay_pipeline7*coeff7+delay_pipeline8*coeff8
//        +delay_pipeline9*coeff9+delay_pipeline10*coeff10+delay_pipeline11*coeff11+delay_pipeline12*coeff12
//        +delay_pipeline13*coeff13+delay_pipeline14*coeff14+delay_pipeline15*coeff15+delay_pipeline16*coeff16);
    
endmodule
