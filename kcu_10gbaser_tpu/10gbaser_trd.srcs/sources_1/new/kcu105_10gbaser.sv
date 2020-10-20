//////////////////////////////////////////////////////////////////////////////////
// Company: htgd_thz
// Engineer: caohy
// 
// Create Date: 2020/03/10 12:38:15
// Design Name: Telecommunications processing unit
// Module Name: tpu
// Project Name: BFB(base frequency band) research group
// Target Devices: xcvu9p
// Tool Versions: vivado 2019.2
// Description: 
// 
// Dependencies: 
// base on matlab simulation
// Revision:V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


`timescale 1 ps / 1 ps
module kcu105_10gbaser #(
        parameter AXIS_TDATA_WIDTH =  64,
        parameter AXIS_TKEEP_WIDTH =  AXIS_TDATA_WIDTH/8
    )(

  input             refclk_p,
  input             refclk_n,
  input             reset,
  output [1:0]      xphy_txp,
  output [1:0]      xphy_txn,
  input  [1:0]      xphy_rxp,
  input  [1:0]      xphy_rxn,
  output [1:0]      tx_disable,       
  output [2:0]      leds,
  
  input                         bb_rx_axis_aclk0,
  output [AXIS_TDATA_WIDTH-1:0] bb_rx_axis_tdata0,
  output [AXIS_TKEEP_WIDTH-1:0] bb_rx_axis_tkeep0,
  output                        bb_rx_axis_tvalid0,
  output                        bb_rx_axis_tlast0,
  output                        bb_rx_axis_tuser0,
  input                         bb_rx_axis_tready0,
  
  input                        bb_back_rx_axis_aclk0,
  input [AXIS_TDATA_WIDTH-1:0] bb_back_rx_axis_tdata0,
  input [AXIS_TKEEP_WIDTH-1:0] bb_back_rx_axis_tkeep0,
  input                        bb_back_rx_axis_tvalid0,
  input                        bb_back_rx_axis_tlast0,
  input                        bb_back_rx_axis_tuser0,
  output                       bb_back_rx_axis_tready0);
  
logic [AXIS_TDATA_WIDTH-1:0] bb_back_fifo_rx_axis_tdata0;
logic [AXIS_TKEEP_WIDTH-1:0] bb_back_fifo_rx_axis_tkeep0;
logic                        bb_back_fifo_rx_axis_tvalid0;
logic                        bb_back_fifo_rx_axis_tlast0;
logic                        bb_back_fifo_rx_axis_tuser0;
logic                        bb_back_fifo_rx_axis_tready0;

wire clk156;
wire reset_d;

bb_data_loopback_fifo bb_data_loopback_fifo (
  .s_axis_aresetn   (!reset),
  .s_axis_aclk      (bb_back_rx_axis_aclk0),
  .s_axis_tvalid    (bb_back_rx_axis_tvalid0),
  .s_axis_tready    (bb_back_rx_axis_tready0),
  .s_axis_tdata     (bb_back_rx_axis_tdata0),
  .s_axis_tkeep     (bb_back_rx_axis_tkeep0),
  .s_axis_tlast     (bb_back_rx_axis_tlast0),
  .s_axis_tuser     (bb_back_rx_axis_tuser0),
  .m_axis_aclk      (clk156),
  .m_axis_tvalid    (bb_back_fifo_rx_axis_tvalid0),
  .m_axis_tready    (bb_back_fifo_rx_axis_tready0),
  .m_axis_tdata     (bb_back_fifo_rx_axis_tdata0),
  .m_axis_tkeep     (bb_back_fifo_rx_axis_tkeep0),
  .m_axis_tlast     (bb_back_fifo_rx_axis_tlast0),
  .m_axis_tuser     (bb_back_fifo_rx_axis_tuser0)
);

wire [7:0]    xphy_status_ch0;
wire [7:0]    xphy_status_ch1;

wire          rx_statistics_valid_ch0;
wire [29 : 0] rx_statistics_vector_ch0;
wire          tx_statistics_valid_ch0;
wire [25 : 0] tx_statistics_vector_ch0;

wire          rx_statistics_valid_ch1;
wire [29 : 0] rx_statistics_vector_ch1;
wire          tx_statistics_valid_ch1;
wire [25 : 0] tx_statistics_vector_ch1;

wire [47 : 0]  tg_config_ch0;
wire [47 : 0]  tg_config_ch1;

wire          resetdone_ch0;
wire          tx_resetdone_ch1;
wire          rx_resetdone_ch1;

logic          sim_speedup_control_ch0;
logic          sim_speedup_control_ch1;

reg [15:0]    reset_counter = 16'h00;

`ifdef OOB_SIM  
  reg [3:0]     reset_pulse = 4'b0000;
`else
  reg [3:0]     reset_pulse = 4'b1110;
`endif

wire          reset_sys;

wire [0:0]s_axi_aresetn;

wire [31:0]M03_AXI_0_araddr;
wire [2:0]M03_AXI_0_arprot;
wire [0:0]M03_AXI_0_arready;
wire [0:0]M03_AXI_0_arvalid;
wire [31:0]M03_AXI_0_awaddr;
wire [2:0]M03_AXI_0_awprot;
wire [0:0]M03_AXI_0_awready;
wire [0:0]M03_AXI_0_awvalid;
wire [0:0]M03_AXI_0_bready;
wire [1:0]M03_AXI_0_bresp;
wire [0:0]M03_AXI_0_bvalid;
wire [31:0]M03_AXI_0_rdata;
wire [0:0]M03_AXI_0_rready;
wire [1:0]M03_AXI_0_rresp;
wire [0:0]M03_AXI_0_rvalid;
wire [31:0]M03_AXI_0_wdata;
wire [0:0]M03_AXI_0_wready;
wire [3:0]M03_AXI_0_wstrb;
wire [0:0]M03_AXI_0_wvalid;
wire [31:0]M05_AXI_0_araddr;
wire [2:0]M05_AXI_0_arprot;
wire [0:0]M05_AXI_0_arready;
wire [0:0]M05_AXI_0_arvalid;
wire [31:0]M05_AXI_0_awaddr;
wire [2:0]M05_AXI_0_awprot;
wire [0:0]M05_AXI_0_awready;
wire [0:0]M05_AXI_0_awvalid;
wire [0:0]M05_AXI_0_bready;
wire [1:0]M05_AXI_0_bresp;
wire [0:0]M05_AXI_0_bvalid;
wire [31:0]M05_AXI_0_rdata;
wire [0:0]M05_AXI_0_rready;
wire [1:0]M05_AXI_0_rresp;
wire [0:0]M05_AXI_0_rvalid;
wire [31:0]M05_AXI_0_wdata;
wire [0:0]M05_AXI_0_wready;
wire [3:0]M05_AXI_0_wstrb;
wire [0:0]M05_AXI_0_wvalid;

wire [63:0]m_axis_rx_0_tdata;
wire [7:0]m_axis_rx_0_tkeep;
wire m_axis_rx_0_tlast;
wire m_axis_rx_0_tuser;
wire m_axis_rx_0_tvalid;
wire [63:0]m_axis_rx_1_tdata;
wire [7:0]m_axis_rx_1_tkeep;
wire m_axis_rx_1_tlast;
wire m_axis_rx_1_tuser;
wire m_axis_rx_1_tvalid;

wire [63:0]s_axis_tx_0_tdata;
wire [7:0] s_axis_tx_0_tkeep;
wire       s_axis_tx_0_tlast;
wire       s_axis_tx_0_tready;
wire [0:0] s_axis_tx_0_tuser;
wire       s_axis_tx_0_tvalid;
wire [63:0]s_axis_tx_1_tdata;
wire [7:0] s_axis_tx_1_tkeep;
wire       s_axis_tx_1_tlast;
wire       s_axis_tx_1_tready;
wire [0:0] s_axis_tx_1_tuser;
wire       s_axis_tx_1_tvalid;
// control gen_mon logic
reg [31:0] tb_tg_config_ch0 = 0;
reg [31:0] tb_tg_config_ch1 = 0;
assign tg_config_ch0 = {16'b0, tb_tg_config_ch0};
assign tg_config_ch1 = {16'b0, tb_tg_config_ch1}; 
reg  [3:0]tg_config_ch_state0,tg_config_ch_state1;
reg  [31:0]tg_config_ch_cnt0,tg_config_ch_cnt1;

wire [AXIS_TDATA_WIDTH-1:0] bb_rx_axis_tdata0 ,bb_rx_axis_tdata1 ;
wire [AXIS_TKEEP_WIDTH-1:0] bb_rx_axis_tkeep0 ,bb_rx_axis_tkeep1 ;
wire                        bb_rx_axis_tvalid0,bb_rx_axis_tvalid1;
wire                        bb_rx_axis_tlast0 ,bb_rx_axis_tlast1 ;
wire                        bb_rx_axis_tuser0 ,bb_rx_axis_tuser1 ;
wire                        bb_rx_axis_tready0,bb_rx_axis_tready1;

wire[AXIS_TDATA_WIDTH-1:0]  bb_tx_axis_tdata0 ,bb_tx_axis_tdata1 ;
wire[AXIS_TKEEP_WIDTH-1:0]  bb_tx_axis_tkeep0 ,bb_tx_axis_tkeep1 ;
wire                        bb_tx_axis_tvalid0,bb_tx_axis_tvalid1;
wire                        bb_tx_axis_tlast0 ,bb_tx_axis_tlast1 ;
wire                        bb_tx_axis_tuser0 ,bb_tx_axis_tuser1 ;
wire                        bb_tx_axis_tready0,bb_tx_axis_tready1;

//ila_gen_mon ila_gen_mon (
//    .clk(clk156),

//    .probe0(tb_tg_config_ch0),
//    .probe1(tb_tg_config_ch1),
//    .probe2(xphy_status_ch0),
//    .probe3(xphy_status_ch1),
//    .probe4(s_axis_tx_0_tdata),
//    .probe5(m_axis_rx_0_tdata),
//    .probe6(reset_sys),
//    .probe7(rx_statistics_valid_ch0),
//    .probe8(rx_statistics_vector_ch0),
//    .probe9(tx_statistics_valid_ch0),
//    .probe10(tx_statistics_vector_ch0),
//    .probe11(rx_statistics_valid_ch1),
//    .probe12(rx_statistics_vector_ch1),
//    .probe13(tx_statistics_valid_ch1),
//    .probe14(tx_statistics_vector_ch1),
//    .probe15(s_axis_tx_1_tdata),
//    .probe16(m_axis_rx_1_tdata));
    
always@(posedge clk156)begin
     if(reset)begin
         tg_config_ch_state0   <= 0;
         tb_tg_config_ch0     <= 0 ;
         tg_config_ch_cnt0      <= 0 ;
     end
     else begin
         case(tg_config_ch_state0)
             0:begin
                 tb_tg_config_ch0     <= 0 ;
                 if(xphy_status_ch0==8'h01)tg_config_ch_state0<= 1;
                 else tg_config_ch_state0<= 0;
                end
             1:begin
                 if(tg_config_ch_cnt0==5000)
                     tg_config_ch_state0   <= 2;
                 else tg_config_ch_state0   <= 1;
                 tg_config_ch_cnt0<=tg_config_ch_cnt0+1;
                 tb_tg_config_ch0     <= 0 ;
             end
             2:begin
                 tg_config_ch_state0   <= tg_config_ch_state0;
                 tg_config_ch_cnt0     <= tg_config_ch_cnt0;
                 tb_tg_config_ch0      <= 32'h004f_0002;
             end
             default:begin
             tg_config_ch_state0   <= 0;
             tg_config_ch_cnt0     <= 0;
             tb_tg_config_ch0      <= 0;
             end
         endcase
     end
 end
 
 always@(posedge clk156)begin
      if(reset)begin
          tg_config_ch_state1   <= 0;
          tb_tg_config_ch1     <= 0 ;
          tg_config_ch_cnt1      <= 0 ;
      end
      else begin
          case(tg_config_ch_state1)
              0:begin
                  tb_tg_config_ch1     <= 0 ;
                  if(xphy_status_ch1==8'h01)tg_config_ch_state1<= 1;
                  else tg_config_ch_state1<= 0;
                 end
              1:begin
                  if(tg_config_ch_cnt1==5000)
                      tg_config_ch_state1   <= 2;
                  else tg_config_ch_state1   <= 1;
                  tg_config_ch_cnt1<=tg_config_ch_cnt1+1;
                  tb_tg_config_ch1     <= 0 ;
              end
              2:begin
                  tg_config_ch_state1   <= tg_config_ch_state1;
                  tg_config_ch_cnt1     <= tg_config_ch_cnt1;
                  tb_tg_config_ch1      <= 32'h007D_0002;
              end
              default:begin
              tg_config_ch_state1   <= 0;
              tg_config_ch_cnt1     <= 0;
              tb_tg_config_ch1      <= 0;
              end
          endcase
      end
  end
// Initial reset pulse

  always @(posedge clk156)
  begin
    if (!reset_counter[15])
      reset_counter   <=   reset_counter + 1'b1;   
    else
      reset_counter   <=   reset_counter;
  end

  always @(posedge clk156)
  begin
   if(reset_counter[15])
      reset_pulse   <=   {1'b0, reset_pulse[3:1]};
  end
  
debouncer # (
         .SHIFT_REG_LEN (4))
debounce_reset
     (
         .clk   (clk156),
         .d_in  (reset),
         .d_out (reset_d)
     );

assign   reset_sys  =   reset_pulse[0] ||  reset_d;

axi_stream_gen_mon_0  //data source
# (
    .XIL_MAC_ID_THIS (48'h111100000000), // 00:00:00:00:11:11
    .XIL_MAC_ID_OTHER(48'h222200000000)// 00:00:00:00:22:22
  )  
axi_stream_gen_mon_0
(
    // Slave AXI-Lite Interface for register
    // reads and writes
        .s_axi_clk      (clk156),
        .s_axi_areset_n (!reset_sys),
        
        .s_axi_awaddr   (M03_AXI_0_awaddr),
        .s_axi_awvalid  (M03_AXI_0_awvalid),
        .s_axi_awready  (M03_AXI_0_awready),
        .s_axi_wdata    (M03_AXI_0_wdata),
        .s_axi_wstrb    (M03_AXI_0_wstrb),
        .s_axi_wvalid   (M03_AXI_0_wvalid),
        .s_axi_wready   (M03_AXI_0_wready),
        .s_axi_bresp    (M03_AXI_0_bresp),
        .s_axi_bvalid   (M03_AXI_0_bvalid),
        .s_axi_bready   (M03_AXI_0_bready),
        .s_axi_araddr   (M03_AXI_0_araddr),
        .s_axi_arvalid  (M03_AXI_0_arvalid),
        .s_axi_arready  (M03_AXI_0_arready),
        .s_axi_rdata    (M03_AXI_0_rdata),
        .s_axi_rresp    (M03_AXI_0_rresp),
        .s_axi_rvalid   (M03_AXI_0_rvalid),
        .s_axi_rready   (M03_AXI_0_rready),
    
        .rx_axis_tdata  (m_axis_rx_0_tdata),
        .rx_axis_tkeep  (m_axis_rx_0_tkeep),
        .rx_axis_tvalid (m_axis_rx_0_tvalid),
        .rx_axis_tlast  (m_axis_rx_0_tlast),
        .rx_axis_tuser  (m_axis_rx_0_tuser),
        .rx_axis_tready (),    
    
        .tg_config      (tg_config_ch0),
    // AXI Stream Interface
    // Connects to the Ethernet MAC
        .axis_reset_n   (!reset_sys),
        .axis_clk       (clk156),             
   
        .tx_axis_tdata  (s_axis_tx_0_tdata),
        .tx_axis_tkeep  (s_axis_tx_0_tkeep),
        .tx_axis_tvalid (s_axis_tx_0_tvalid),
        .tx_axis_tlast  (s_axis_tx_0_tlast),
        .tx_axis_tuser  (s_axis_tx_0_tuser),
        .tx_axis_tready (s_axis_tx_0_tready),
    //Other status signals
        .phy_status     (xphy_status_ch0),
        
        .bb_rx_axis_aclk  (bb_rx_axis_aclk0),
        .bb_rx_axis_tdata (bb_rx_axis_tdata0 ),
        .bb_rx_axis_tkeep (bb_rx_axis_tkeep0 ),
        .bb_rx_axis_tvalid(bb_rx_axis_tvalid0),
        .bb_rx_axis_tlast (bb_rx_axis_tlast0 ),
        .bb_rx_axis_tuser (bb_rx_axis_tuser0 ),
        .bb_rx_axis_tready(bb_rx_axis_tready0),
       
        .bb_tx_axis_tdata (bb_tx_axis_tdata0 ),
        .bb_tx_axis_tkeep (bb_tx_axis_tkeep0 ),
        .bb_tx_axis_tvalid(bb_tx_axis_tvalid0),
        .bb_tx_axis_tlast (bb_tx_axis_tlast0 ),
        .bb_tx_axis_tuser (bb_tx_axis_tuser0 ),
        .bb_tx_axis_tready(bb_tx_axis_tready0)
    );

axi_stream_gen_mon_1  //tpu data loop source
# (
    .XIL_MAC_ID_THIS (48'h111100000000), // 00:00:00:00:11:11
    .XIL_MAC_ID_OTHER(48'h444400000000)// 00:00:00:00:44:44
  )  
axi_stream_gen_mon_1
(
    // Slave AXI-Lite Interface for register
    // reads and writes
        .s_axi_clk      (clk156),
        .s_axi_areset_n (!reset_sys),
        
        .s_axi_awaddr   (M05_AXI_0_awaddr),
        .s_axi_awvalid  (M05_AXI_0_awvalid),
        .s_axi_awready  (M05_AXI_0_awready),
        .s_axi_wdata    (M05_AXI_0_wdata),
        .s_axi_wstrb    (M05_AXI_0_wstrb),
        .s_axi_wvalid   (M05_AXI_0_wvalid),
        .s_axi_wready   (M05_AXI_0_wready),
        .s_axi_bresp    (M05_AXI_0_bresp),
        .s_axi_bvalid   (M05_AXI_0_bvalid),
        .s_axi_bready   (M05_AXI_0_bready),
        .s_axi_araddr   (M05_AXI_0_araddr),
        .s_axi_arvalid  (M05_AXI_0_arvalid),
        .s_axi_arready  (M05_AXI_0_arready),
        .s_axi_rdata    (M05_AXI_0_rdata),
        .s_axi_rresp    (M05_AXI_0_rresp),
        .s_axi_rvalid   (M05_AXI_0_rvalid),
        .s_axi_rready   (M05_AXI_0_rready),
    
        .rx_axis_tdata  (m_axis_rx_1_tdata),
        .rx_axis_tkeep  (m_axis_rx_1_tkeep),
        .rx_axis_tvalid (m_axis_rx_1_tvalid),
        .rx_axis_tlast  (m_axis_rx_1_tlast),
        .rx_axis_tuser  (m_axis_rx_1_tuser),
        .rx_axis_tready (),    
    
        .tg_config      (tg_config_ch1),
    // AXI Stream Interface
    // Connects to the Ethernet MAC
        .axis_reset_n   (!reset_sys),
        .axis_clk       (clk156),             
   
        .tx_axis_tdata  (s_axis_tx_1_tdata),
        .tx_axis_tkeep  (s_axis_tx_1_tkeep),
        .tx_axis_tvalid (s_axis_tx_1_tvalid),
        .tx_axis_tlast  (s_axis_tx_1_tlast),
        .tx_axis_tuser  (s_axis_tx_1_tuser),
        .tx_axis_tready (s_axis_tx_1_tready),
    //Other status signals
        .phy_status     (xphy_status_ch1),
        
        .bb_rx_axis_tdata (bb_rx_axis_tdata1 ),
        .bb_rx_axis_tkeep (bb_rx_axis_tkeep1 ),
        .bb_rx_axis_tvalid(bb_rx_axis_tvalid1),
        .bb_rx_axis_tlast (bb_rx_axis_tlast1 ),
        .bb_rx_axis_tuser (bb_rx_axis_tuser1 ),
        .bb_rx_axis_tready(bb_rx_axis_tready1),
       
        .bb_tx_axis_tdata (bb_tx_axis_tdata1 ),
        .bb_tx_axis_tkeep (bb_tx_axis_tkeep1 ),
        .bb_tx_axis_tvalid(bb_tx_axis_tvalid1),
        .bb_tx_axis_tlast (bb_tx_axis_tlast1 ),
        .bb_tx_axis_tuser (bb_tx_axis_tuser1 ),
        .bb_tx_axis_tready(bb_tx_axis_tready1)
        );

mac_phy_wrapper mac_phy_wrapper_i

       (     
        .s_axi_aresetn(s_axi_aresetn),
       
        .m_axis_rx_0_tdata (m_axis_rx_1_tdata),
        .m_axis_rx_0_tkeep (m_axis_rx_1_tkeep),
        .m_axis_rx_0_tlast (m_axis_rx_1_tlast),
        .m_axis_rx_0_tuser (m_axis_rx_1_tuser),
        .m_axis_rx_0_tvalid(m_axis_rx_1_tvalid),
        .m_axis_rx_1_tdata (m_axis_rx_0_tdata),
        .m_axis_rx_1_tkeep (m_axis_rx_0_tkeep),
        .m_axis_rx_1_tlast (m_axis_rx_0_tlast),
        .m_axis_rx_1_tuser (m_axis_rx_0_tuser),
        .m_axis_rx_1_tvalid(m_axis_rx_0_tvalid),

        
        .s_axis_tx_0_tdata (s_axis_tx_0_tdata ),
        .s_axis_tx_0_tkeep (s_axis_tx_0_tkeep ),
        .s_axis_tx_0_tlast (s_axis_tx_0_tlast ),
        .s_axis_tx_0_tready(s_axis_tx_0_tready),
        .s_axis_tx_0_tuser (s_axis_tx_0_tuser ),
        .s_axis_tx_0_tvalid(s_axis_tx_0_tvalid),
//        .s_axis_tx_1_tdata (s_axis_tx_1_tdata ),
//        .s_axis_tx_1_tkeep (s_axis_tx_1_tkeep ),
//        .s_axis_tx_1_tlast (s_axis_tx_1_tlast ),
//        .s_axis_tx_1_tready(s_axis_tx_1_tready),
//        .s_axis_tx_1_tuser (s_axis_tx_1_tuser ),
//        .s_axis_tx_1_tvalid(s_axis_tx_1_tvalid),
        .s_axis_tx_1_tdata (bb_back_fifo_rx_axis_tdata0),
        .s_axis_tx_1_tkeep (bb_back_fifo_rx_axis_tkeep0),
        .s_axis_tx_1_tlast (bb_back_fifo_rx_axis_tlast0),
        .s_axis_tx_1_tready(bb_back_fifo_rx_axis_tready0),
        .s_axis_tx_1_tuser (bb_back_fifo_rx_axis_tuser0),
        .s_axis_tx_1_tvalid(bb_back_fifo_rx_axis_tvalid0),

        .core_status_ch0                    (xphy_status_ch0          ),
        .prtad_ch0                          (5'b0                     ),
        .tx_disable_ch0                     (tx_disable[0]            ),
        .resetdone_ch0                      (resetdone_ch0            ),
        // Output from PCS-PMA Ch0
        .core_clk156_out                    (clk156                   ), 
          
        .rx_statistics_ch0_vector           (rx_statistics_vector_ch0 ),
        .rx_statistics_ch0_valid            (rx_statistics_valid_ch0  ),
        .tx_statistics_ch0_vector           (tx_statistics_vector_ch0 ),
        .tx_statistics_ch0_valid            (tx_statistics_valid_ch0  ),

        .s_axis_pause_ch0_tdata             (16'b0                    ),
        .s_axis_pause_ch0_tvalid            (1'b0                     ),

        .rxn_ch0                            (xphy_rxn[0]              ),
        .rxp_ch0                            (xphy_rxp[0]              ),
        .txn_ch0                            (xphy_txn[0]              ),
        .txp_ch0                            (xphy_txp[0]              ),
        .sim_speedup_control_ch0            (sim_speedup_control_ch0  ),

        .core_status_ch1                    (xphy_status_ch1          ),
        .prtad_ch1                          (5'b1                     ),
        .tx_disable_ch1                     (tx_disable[1]            ),
        .rx_resetdone_ch1                   (rx_resetdone_ch1         ),
        .tx_resetdone_ch1                   (tx_resetdone_ch1         ),
        .txclk322_ch1                       (                         ),

        .rx_statistics_ch1_vector           (rx_statistics_vector_ch1 ),
        .rx_statistics_ch1_valid            (rx_statistics_valid_ch1  ),
        .tx_statistics_ch1_vector           (tx_statistics_vector_ch1 ),
        .tx_statistics_ch1_valid            (tx_statistics_valid_ch1  ),

        .s_axis_pause_ch1_tdata             (16'b0                    ),
        .s_axis_pause_ch1_tvalid            (1'b0                     ),

        .rxn_ch1                            (xphy_rxn[1]              ),
        .rxp_ch1                            (xphy_rxp[1]              ),
        .txn_ch1                            (xphy_txn[1]              ),
        .txp_ch1                            (xphy_txp[1]              ),
        .sim_speedup_control_ch1            (sim_speedup_control_ch1  ),

        .aux_resetn                       (!reset_sys                 ),
        .mb_clk                             (clk156                   ),

        .refclk_diff_port_clk_n             (refclk_n                 ),
        .refclk_diff_port_clk_p             (refclk_p                 ),

        .reset                              (reset_sys                ),
        .reset_n                            (!reset_sys               )

        );

assign leds[0] = xphy_status_ch0[0];
assign leds[1] = xphy_status_ch1[0];
assign leds[2] = resetdone_ch0 & tx_resetdone_ch1 & rx_resetdone_ch1;

endmodule
