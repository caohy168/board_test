`timescale 1ns / 1ps
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
`define inter_gen

`timescale 1ps / 1ps

module axi_stream_gen_mon_0 #(
    parameter        AXIS_TDATA_WIDTH    =  64,
    parameter [47:0] XIL_MAC_ID_THIS     =  48'h111100000000, // 00:00:00:00:11:11
    parameter [47:0] XIL_MAC_ID_OTHER    =  48'h222200000000, // 00:00:00:00:22:22
    parameter [47:0] EXT_MAC_ID          =  48'h333300000000, // 00:00:00:00:33:33
    parameter        S_AXI_ADDR_WIDTH    =  32,
    parameter        S_AXI_DATA_WIDTH    =  32,
    parameter [15:0] S_AXI_MIN_SIZE      =  16'hFFFF,
    parameter [31:0] S_AXI_BASE_ADDRESS  =  32'h44A0_0000,
    // Design information
    // 0105 - Targeting KCU105 board
    // 141  - Viavdo 2014.1 
    // 1    - Ethernet Reference Design 1
    parameter [31:0] DESIGN_VERSION      =  32'h0105_1431,
    // one second timer in terms of 156.25 MHz clock
    parameter ONE_SEC_CLOCK_COUNT =  32'h9502F90)
(
    // Slave AXI-Lite Interface for register
    // reads and writes
    input  [S_AXI_ADDR_WIDTH-1:0]     s_axi_awaddr,
    input                             s_axi_awvalid,
    output                            s_axi_awready,
    input  [S_AXI_DATA_WIDTH-1:0]     s_axi_wdata,
    input  [(S_AXI_DATA_WIDTH/8)-1:0] s_axi_wstrb,
    input                             s_axi_wvalid,
    output                            s_axi_wready,
    output [1:0]                      s_axi_bresp,
    output                            s_axi_bvalid,
    input                             s_axi_bready,
    input  [S_AXI_ADDR_WIDTH-1:0]     s_axi_araddr,
    input                             s_axi_arvalid,
    output                            s_axi_arready,
    output [S_AXI_DATA_WIDTH-1:0]     s_axi_rdata,
    output [1:0]                      s_axi_rresp,
    output                            s_axi_rvalid,
    input                             s_axi_rready,
    
    input [AXIS_TDATA_WIDTH-1:0]      rx_axis_tdata,
    input [(AXIS_TDATA_WIDTH/8)-1:0]  rx_axis_tkeep,
    input                             rx_axis_tvalid,
    input                             rx_axis_tlast,
    input                             rx_axis_tuser,
    output                            rx_axis_tready,
    
    input                             s_axi_clk,
    input                             axis_reset_n,
    input  [47:0]                     tg_config,
    input                             s_axi_areset_n,
    //Other status signals
    input                             axis_clk,  
    input  [7:0]                      phy_status,    
    // AXI Stream Interface
    // Connects to the Ethernet MAC
    output [AXIS_TDATA_WIDTH-1:0]     tx_axis_tdata,
    output [(AXIS_TDATA_WIDTH/8)-1:0] tx_axis_tkeep,
    output                            tx_axis_tvalid,
    output                            tx_axis_tlast,
    output                            tx_axis_tuser,
    input                             tx_axis_tready,
    
    (* DONT_TOUCH = "true" *)    input                         bb_rx_axis_aclk,
    (* DONT_TOUCH = "true" *)    output [AXIS_TDATA_WIDTH-1:0] bb_rx_axis_tdata,
    (* DONT_TOUCH = "true" *)    output [AXIS_TKEEP_WIDTH-1:0] bb_rx_axis_tkeep,
    (* DONT_TOUCH = "true" *)    output                        bb_rx_axis_tvalid,
    (* DONT_TOUCH = "true" *)    output                        bb_rx_axis_tlast,
    (* DONT_TOUCH = "true" *)    output                        bb_rx_axis_tuser,
    (* DONT_TOUCH = "true" *)    input                         bb_rx_axis_tready,
     
    (* DONT_TOUCH = "true" *)    input [AXIS_TDATA_WIDTH-1:0]  bb_tx_axis_tdata,
    (* DONT_TOUCH = "true" *)    input [AXIS_TKEEP_WIDTH-1:0]  bb_tx_axis_tkeep,
    (* DONT_TOUCH = "true" *)    input                         bb_tx_axis_tvalid,
    (* DONT_TOUCH = "true" *)    input                         bb_tx_axis_tlast,
    (* DONT_TOUCH = "true" *)    input                         bb_tx_axis_tuser,
    (* DONT_TOUCH = "true" *)    output wire                  bb_tx_axis_tready
);
    
    localparam          AXIS_TKEEP_WIDTH    =  AXIS_TDATA_WIDTH/8;   
    localparam [31:0]   S_AXI_HIGH_ADDRESS  =  S_AXI_BASE_ADDRESS + S_AXI_MIN_SIZE;
    
    wire  [AXIS_TDATA_WIDTH-1:0]     tx_axis_tdata_g;
    wire  [AXIS_TKEEP_WIDTH-1:0]     tx_axis_tkeep_g;
    wire                             tx_axis_tvalid_g;
    wire                             tx_axis_tlast_g;
    wire                             tx_axis_tuser_g;

    wire  [AXIS_TDATA_WIDTH-1:0]     tx_axis_tdata_lb;
    wire  [AXIS_TKEEP_WIDTH-1:0]     tx_axis_tkeep_lb;
    wire                             tx_axis_tvalid_lb;
    wire                             tx_axis_tlast_lb;
    wire                             tx_axis_tuser_lb;

    wire                             rx_axis_tready_lb;

    wire                             enable_loopback;
    wire                             enable_gen;
    wire  [15:0]                     data_payload;
    wire  [15:0]                     packet_count;
    wire  [31:0]                     tx_byte_count;
    wire  [31:0]                     rx_byte_count;
    wire  [31:0]                     tx_pkt_count;
    wire  [31:0]                     rx_pkt_count;
    wire                             lb_dropped_packet;
    wire                             enable_loopback_sync;
    wire                             enable_gen_sync;
    wire  [15:0]                     data_payload_sync;
    wire  [15:0]                     packet_count_sync;
    wire  [31:0]                     tx_byte_count_sync;
    wire  [31:0]                     rx_byte_count_sync;
    wire  [31:0]                     tx_pkt_count_sync;
    wire  [31:0]                     rx_pkt_count_sync;
    wire                             lb_dropped_pkt_sync;
    wire  [7:0]                      phy_status_sync;
 //`ifdef OOB_SIM  
    wire                             enable_loopback_sim;
    wire                             enable_gen_sim;
    wire  [15:0]                     data_payload_sim;
    wire  [15:0]                     packet_count_sim;
 //`endif
    
 
 // If running a simulation drive the traffic configuration
 // via the tg_config input signal else drive it via the
 // user_registers_slave block.
 // This is done to speed up simulation, simulating the microblaze
 // subsystem (with the UART) which drives the S_AXI interface
 // will take very long.
 //`ifdef OOB_SIM  
    assign  enable_loopback_sim = tg_config[0];
    assign  enable_gen_sim      = tg_config[1];
    assign  data_payload_sim    = tg_config[31:16];
    assign  packet_count_sim    = tg_config[47:32];
 //`endif

/*    ila_gen_mon_axis ila_gen_mon_axis (
    .clk(s_axi_clk),
    
    .probe0(rx_axis_tdata   ),
    .probe1(rx_axis_tkeep   ),
    .probe2(rx_axis_tvalid  ),
    .probe3(rx_axis_tlast   ),
    .probe4(rx_axis_tuser   ),
    .probe5(rx_axis_tready  ),
    .probe6(tx_axis_tdata   ),
    .probe7(tx_axis_tkeep   ),
    .probe8(tx_axis_tvalid  ),
    .probe9(tx_axis_tlast   ),
    .probe10(tx_axis_tuser  ),
    .probe11(tx_axis_tready ),
    .probe12(tx_axis_tdata_lb ),
    .probe13(tx_axis_tkeep_lb ),
    .probe14(tx_axis_tvalid_lb),
    .probe15(tx_axis_tlast_lb ),
    .probe16(tx_axis_tuser_lb ),
    .probe17(rx_axis_tready_lb),
    .probe18(tx_axis_tdata_g ),
    .probe19(tx_axis_tkeep_g ),
    .probe20(tx_axis_tvalid_g),
    .probe21(tx_axis_tlast_g ),
    .probe22(tx_axis_tuser_g ),
    .probe23(tx_axis_tready  )
    );*/
  (* DONT_TOUCH = "true" *)   
  axi_stream_interface axi_stream_interface (
    . reset         (!axis_reset_n),   
    . tx_axis_clk   (axis_clk),
                    
    . tx_axis_tdata (tx_axis_tdata),
    . tx_axis_tkeep (tx_axis_tkeep),
    . tx_axis_tvalid(tx_axis_tvalid),
    . tx_axis_tlast (tx_axis_tlast),
    . tx_axis_tuser (tx_axis_tuser),
    . tx_axis_tready(tx_axis_tready),
                    
    . rx_axis_tdata (rx_axis_tdata),
    . rx_axis_tkeep (rx_axis_tkeep),
    . rx_axis_tvalid(rx_axis_tvalid),
    . rx_axis_tlast (rx_axis_tlast),
    . rx_axis_tuser (rx_axis_tuser),
    . rx_axis_tready(rx_axis_tready),
    
    .bb_rx_axis_aclk  (bb_rx_axis_aclk),
    .bb_rx_axis_tdata (bb_rx_axis_tdata),
    .bb_rx_axis_tkeep (bb_rx_axis_tkeep),
    .bb_rx_axis_tvalid(bb_rx_axis_tvalid),
    .bb_rx_axis_tlast (bb_rx_axis_tlast),
    .bb_rx_axis_tuser (bb_rx_axis_tuser),
    .bb_rx_axis_tready(bb_rx_axis_tready),
    `ifdef inter_gen 
        .bb_tx_axis_tdata (tx_axis_tdata_g ),
        .bb_tx_axis_tkeep (tx_axis_tkeep_g ),
        .bb_tx_axis_tvalid(tx_axis_tvalid_g),
        .bb_tx_axis_tlast (tx_axis_tlast_g ),
        .bb_tx_axis_tuser (tx_axis_tuser_g ),
        .bb_tx_axis_tready(tx_axis_tready_g)
    `else 
        .bb_tx_axis_tdata (bb_tx_axis_tdata ),
        .bb_tx_axis_tkeep (bb_tx_axis_tkeep ),
        .bb_tx_axis_tvalid(bb_tx_axis_tvalid),
        .bb_tx_axis_tlast (bb_tx_axis_tlast ),
        .bb_tx_axis_tuser (bb_tx_axis_tuser ),
        .bb_tx_axis_tready(bb_tx_axis_tready)
    `endif 
    );
   // External Traffic generator - looopback on the MAC side
   // Send received data as transmit data
  axi_stream_lb # (
    .AXIS_TDATA_WIDTH     (AXIS_TDATA_WIDTH       ),
    .AXIS_TKEEP_WIDTH     (AXIS_TKEEP_WIDTH       ),
    .XIL_MAC_ID_THIS      (XIL_MAC_ID_THIS        ),
    .EXT_MAC_ID           (EXT_MAC_ID             )
  )  
  axi_stream_lb_i (

     .reset               (!axis_reset_n          ),
     .tx_axis_clk         (axis_clk               ),
     .tx_axis_tdata       (tx_axis_tdata_lb       ),
     .tx_axis_tkeep       (tx_axis_tkeep_lb       ),
     .tx_axis_tvalid      (tx_axis_tvalid_lb      ),
     .tx_axis_tlast       (tx_axis_tlast_lb       ),
     .tx_axis_tuser       (tx_axis_tuser_lb       ),
     .tx_axis_tready      (tx_axis_tready         ),
     .rx_axis_tdata       (rx_axis_tdata          ),
     .rx_axis_tkeep       (rx_axis_tkeep          ),
     .rx_axis_tvalid      (rx_axis_tvalid         ),
     .rx_axis_tlast       (rx_axis_tlast          ),
     .rx_axis_tuser       (rx_axis_tuser          ),
     .rx_axis_tready      (rx_axis_tready_lb      ),
     .lb_dropped_packet   (lb_dropped_packet      ),
     .enable_loopback     (1    )
 //  `ifdef OOB_SIM  
 //    .enable_loopback     (enable_loopback_sim    )
 //  `else 
 //   .enable_loopback      (enable_loopback_sync   )
 //  `endif
  );
    
  // FPGA Traffic generator - looopback on the PHY side
  // Generate transmit data
  axi_stream_gen # (
    .AXIS_TDATA_WIDTH     (AXIS_TDATA_WIDTH       ),
    .AXIS_TKEEP_WIDTH     (AXIS_TKEEP_WIDTH       ),
    .XIL_MAC_ID_THIS      (XIL_MAC_ID_THIS        ),
    .XIL_MAC_ID_OTHER     (XIL_MAC_ID_OTHER       )
  )  
  axi_stream_gen_i (

     .reset               (!axis_reset_n          ),
     .tx_axis_clk         (axis_clk               ),
     .tx_axis_tdata       (tx_axis_tdata_g        ),
     .tx_axis_tkeep       (tx_axis_tkeep_g        ),
     .tx_axis_tvalid      (tx_axis_tvalid_g       ),
     .tx_axis_tlast       (tx_axis_tlast_g        ),
     .tx_axis_tuser       (tx_axis_tuser_g        ),
     .tx_axis_tready      (tx_axis_tready_g       ),
//   `ifdef OOB_SIM  
     .enable_gen          (enable_gen_sim         ),
     .data_payload        (data_payload_sim       ),
     .packet_count        (packet_count_sim       ),
     .phy_status          (phy_status)
//     .packet_count        (20       )
//   `else 
//    .enable_gen          (enable_gen_sync        ),
//    .data_payload        (data_payload_sync      ),
//     .packet_count        (packet_count_sync      )
//   `endif

  );

  // If enable_loopback is asserted, axi_stream_lb drives the transmit data
  // Otherwise axi_stream_gen block drives the transmit data 
//   `ifdef OOB_SIM  
//      assign tx_axis_tdata  = enable_loopback_sim ?  tx_axis_tdata_lb  : tx_axis_tdata_g;
//      assign tx_axis_tkeep  = enable_loopback_sim ?  tx_axis_tkeep_lb  : tx_axis_tkeep_g;
//      assign tx_axis_tvalid = enable_loopback_sim ?  tx_axis_tvalid_lb : tx_axis_tvalid_g;
//      assign tx_axis_tlast  = enable_loopback_sim ?  tx_axis_tlast_lb  : tx_axis_tlast_g;
//      assign tx_axis_tuser  = enable_loopback_sim ?  tx_axis_tuser_lb  : tx_axis_tuser_g;
//      assign rx_axis_tready = enable_loopback_sim ?  rx_axis_tready_lb : 1'b1;
//   `else 
//      assign tx_axis_tdata  = enable_loopback ?  tx_axis_tdata_lb  : tx_axis_tdata_g;
//      assign tx_axis_tkeep  = enable_loopback ?  tx_axis_tkeep_lb  : tx_axis_tkeep_g;
//      assign tx_axis_tvalid = enable_loopback ?  tx_axis_tvalid_lb : tx_axis_tvalid_g;
//      assign tx_axis_tlast  = enable_loopback ?  tx_axis_tlast_lb  : tx_axis_tlast_g;
//      assign tx_axis_tuser  = enable_loopback ?  tx_axis_tuser_lb  : tx_axis_tuser_g;
//      assign rx_axis_tready = enable_loopback ?  rx_axis_tready_lb : 1'b1;

//   `endif


  eth_performance_monitor # (
    .AXIS_TDATA_WIDTH     (AXIS_TDATA_WIDTH       ),
    .AXIS_TKEEP_WIDTH     (AXIS_TKEEP_WIDTH       ),
    .ONE_SEC_CLOCK_COUNT  ('h9502F90              )
  )  
  eth_performance_monitor_i (
     .reset               (!axis_reset_n          ),
     .clk                 (axis_clk               ),
     .s_axis_tx_tdata     (tx_axis_tdata          ),
     .s_axis_tx_tkeep     (tx_axis_tkeep          ),
     .s_axis_tx_tlast     (tx_axis_tlast          ),
     .s_axis_tx_tvalid    (tx_axis_tvalid         ),
     .s_axis_tx_tready    (tx_axis_tready         ),
     .m_axis_rx_tdata     (rx_axis_tdata          ),
     .m_axis_rx_tkeep     (rx_axis_tkeep          ),
     .m_axis_rx_tlast     (rx_axis_tlast          ),
     .m_axis_rx_tvalid    (rx_axis_tvalid         ),
     .m_axis_rx_tready    (rx_axis_tready         ),
     .tx_byte_count       (tx_byte_count          ),
     .rx_byte_count       (rx_byte_count          ),
     .tx_pkt_count        (tx_pkt_count           ),
     .rx_pkt_count        (rx_pkt_count           )
  );



  user_registers_slave # (
    .C_S_AXI_ADDR_WIDTH   (S_AXI_ADDR_WIDTH       ),
    .C_S_AXI_DATA_WIDTH   (S_AXI_DATA_WIDTH       ),
    .C_S_AXI_MIN_SIZE     (S_AXI_MIN_SIZE         ),
    .C_BASE_ADDRESS       (S_AXI_BASE_ADDRESS     ),
    .C_HIGH_ADDRESS       (S_AXI_HIGH_ADDRESS     ),
    .DESIGN_VERSION       (DESIGN_VERSION         )  
  )  
  user_reg_slave_i (
    .s_axi_clk            (s_axi_clk              ),
    .s_axi_areset_n       (s_axi_areset_n         ),
    .s_axi_awaddr         (s_axi_awaddr           ),
    .s_axi_awready        (s_axi_awready          ),
    .s_axi_awvalid        (s_axi_awvalid          ),
    .s_axi_wdata          (s_axi_wdata            ),
    .s_axi_wstrb          (s_axi_wstrb            ),
    .s_axi_wvalid         (s_axi_wvalid           ),
    .s_axi_wready         (s_axi_wready           ),
    .s_axi_bresp          (s_axi_bresp            ),
    .s_axi_bvalid         (s_axi_bvalid           ),
    .s_axi_bready         (s_axi_bready           ),
    .s_axi_araddr         (s_axi_araddr           ),
    .s_axi_arvalid        (s_axi_arvalid          ),
    .s_axi_arready        (s_axi_arready          ),
    .s_axi_rdata          (s_axi_rdata            ),
    .s_axi_rresp          (s_axi_rresp            ),
    .s_axi_rvalid         (s_axi_rvalid           ),
    .s_axi_rready         (s_axi_rready           ),

     //Registers
     // Inputs
    .tx_byte_count        (tx_byte_count_sync     ),
    .rx_byte_count        (rx_byte_count_sync     ),
    .tx_pkt_count         (tx_pkt_count_sync      ),
    .rx_pkt_count         (rx_pkt_count_sync      ),
    .phy_status           (phy_status_sync        ),  
    .lb_dropped_packet    (lb_dropped_pkt_sync    ),
        
    // Outputs
    .enable_loopback      (enable_loopback        ),
    .enable_gen           (enable_gen             ),
    .data_payload         (data_payload           ),
    .packet_count         (packet_count           )

  );


  sync_registers  sync_registers_i
  (

    .s_axi_clk            (s_axi_clk              ),
    .axis_clk             (axis_clk               ),

     // Inputs
    .tx_byte_count        (tx_byte_count          ),
    .rx_byte_count        (rx_byte_count          ),
    .tx_pkt_count         (tx_pkt_count           ),
    .rx_pkt_count         (rx_pkt_count           ),
    .phy_status           (phy_status             ),  
    .lb_dropped_packet    (lb_dropped_packet      ),
    .enable_loopback      (enable_loopback        ),
    .enable_gen           (enable_gen             ),
    .data_payload         (data_payload           ),
    .packet_count         (packet_count           ),
        
    // Outputs
    .tx_byte_count_sync   (tx_byte_count_sync     ),
    .rx_byte_count_sync   (rx_byte_count_sync     ),
    .tx_pkt_count_sync    (tx_pkt_count_sync      ),
    .rx_pkt_count_sync    (rx_pkt_count_sync      ),
    .phy_status_sync      (phy_status_sync        ),  
    .lb_dropped_pkt_sync  (lb_dropped_pkt_sync    ),
    .enable_loopback_sync (enable_loopback_sync   ),
    .enable_gen_sync      (enable_gen_sync        ),
    .data_payload_sync    (data_payload_sync      ),
    .packet_count_sync    (packet_count_sync      )

  );

endmodule

