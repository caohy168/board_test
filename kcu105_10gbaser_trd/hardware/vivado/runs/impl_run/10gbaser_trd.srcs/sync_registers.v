//////////////////////////////////////////////////////////////////////////////////
// Company: htgd
// Engineer:caohy
// 
// Create Date: 2019/10/18 12:59:08
// Design Name: 
// Module Name: eth_axi_stream_gen_mon
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

//-----------------------------------------------------------------------------
// MODULE 
//-----------------------------------------------------------------------------

module sync_registers 
 (
    input                               s_axi_clk,
    input                               axis_clk,
    
    input  [31:0]                       tx_byte_count,
    input  [31:0]                       rx_byte_count,
    input  [31:0]                       tx_pkt_count,
    input  [31:0]                       rx_pkt_count,
    input  [7:0]                        phy_status,
    input                               lb_dropped_packet,
    input                               enable_loopback,
    input                               enable_gen,
    input  [15:0]                       data_payload,
    input  [15:0]                       packet_count,
    
    output  [31:0]                      tx_byte_count_sync,
    output  [31:0]                      rx_byte_count_sync,
    output  [31:0]                      tx_pkt_count_sync,
    output  [31:0]                      rx_pkt_count_sync,
    output  [7:0]                       phy_status_sync,
    output                              lb_dropped_pkt_sync,
    output                              enable_loopback_sync,
    output                              enable_gen_sync,
    output  [15:0]                      data_payload_sync,
    output  [15:0]                      packet_count_sync

);

  synchronizer_simple # (
    .DATA_WIDTH           (32                     )
  )
  sync_tx_byte_count (
    .data_in               (tx_byte_count          ),
    .new_clk               (s_axi_clk              ),
    .data_out              (tx_byte_count_sync     )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (32                     )
  )
  sync_rx_byte_count (
    .data_in               (rx_byte_count          ),
    .new_clk               (s_axi_clk              ),
    .data_out              (rx_byte_count_sync     )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (32                     )
  )
  sync_tx_pkt_count (
    .data_in               (tx_pkt_count           ),
    .new_clk               (s_axi_clk              ),
    .data_out              (tx_pkt_count_sync      )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (32                     )
  )
  sync_rx_pkt_count (
    .data_in               (rx_pkt_count           ),
    .new_clk               (s_axi_clk              ),
    .data_out              (rx_pkt_count_sync      )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (8                      )
  )
  sync_phy_status (
    .data_in               (phy_status             ),
    .new_clk               (s_axi_clk              ),
    .data_out              (phy_status_sync        )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (1                      )
  )
  sync_lb_dropped_pkt (
    .data_in               (lb_dropped_packet      ),
    .new_clk               (s_axi_clk              ),
    .data_out              (lb_dropped_pkt_sync    )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (1                      )
  )
  sync_enable_loopback (
    .data_in               (enable_loopback        ),
    .new_clk               (axis_clk               ),
    .data_out              (enable_loopback_sync   )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (1                      )
  )
  sync_enable_gen (
    .data_in               (enable_gen             ),
    .new_clk               (axis_clk               ),
    .data_out              (enable_gen_sync        )
  );  

  synchronizer_simple # (
    .DATA_WIDTH           (16                     )
  )
  sync_data_payload (
    .data_in               (data_payload           ),
    .new_clk               (axis_clk               ),
    .data_out              (data_payload_sync      )
  );  
  synchronizer_simple # (
    .DATA_WIDTH           (16                     )
  )
  sync_packet_count (
    .data_in               (packet_count           ),
    .new_clk               (axis_clk               ),
    .data_out              (packet_count_sync      )
  );  
endmodule
