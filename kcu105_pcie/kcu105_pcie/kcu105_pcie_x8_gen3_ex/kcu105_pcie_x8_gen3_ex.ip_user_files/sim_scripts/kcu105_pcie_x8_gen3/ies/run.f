-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2017.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/gtwizard_ultrascale_v1_7_1 \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
  "../../../ipstatic/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/ip_0/sim/gtwizard_ultrascale_v1_7_gthe3_channel.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/ip_0/sim/kcu105_pcie_x8_gen3_gt_gthe3_channel_wrapper.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/ip_0/sim/gtwizard_ultrascale_v1_7_gthe3_common.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/ip_0/sim/kcu105_pcie_x8_gen3_gt_gthe3_common_wrapper.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/ip_0/sim/kcu105_pcie_x8_gen3_gt_gtwizard_gthe3.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/ip_0/sim/kcu105_pcie_x8_gen3_gt_gtwizard_top.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/ip_0/sim/kcu105_pcie_x8_gen3_gt.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_tph_tbl.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_pipe_lane.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram_16k.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram_rep_8k.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram_req_8k.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_gt_channel.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_pipe_pipeline.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_pipe_misc.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_init_ctrl.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_gt_common.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram_8k.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram_rep.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram_req.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_phy_sync.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram_cpl.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_sys_clk_gen.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_phy_rst.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_phy_txeq.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_phy_clk.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_bram.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_phy_rxeq.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_gtwizard_top.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_phy_wrapper.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_pcie3_uscale_wrapper.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_pcie3_uscale_top.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_phy_sync_cell.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_rxcdrhold.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/source/kcu105_pcie_x8_gen3_pcie3_uscale_core_top.v" \
  "../../../../kcu105_pcie_x8_gen3_ex.srcs/sources_1/ip/kcu105_pcie_x8_gen3/sim/kcu105_pcie_x8_gen3.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

