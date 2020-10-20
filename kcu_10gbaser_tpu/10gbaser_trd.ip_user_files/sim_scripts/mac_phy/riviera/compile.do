vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xlconstant_v1_1_6
vlib riviera/xil_defaultlib
vlib riviera/ten_gig_eth_mac_v15_1_7
vlib riviera/gtwizard_ultrascale_v1_7_7
vlib riviera/ten_gig_eth_pcs_pma_v6_0_16
vlib riviera/gigantic_mux

vmap xpm riviera/xpm
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap xil_defaultlib riviera/xil_defaultlib
vmap ten_gig_eth_mac_v15_1_7 riviera/ten_gig_eth_mac_v15_1_7
vmap gtwizard_ultrascale_v1_7_7 riviera/gtwizard_ultrascale_v1_7_7
vmap ten_gig_eth_pcs_pma_v6_0_16 riviera/ten_gig_eth_pcs_pma_v6_0_16
vmap gigantic_mux riviera/gigantic_mux

vlog -work xpm  -sv2k12 \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xlconstant_v1_1_6  -v2k5 \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/34f7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mac_phy/ip/mac_phy_xlconstant_1b0_0/sim/mac_phy_xlconstant_1b0_0.v" \
"../../../bd/mac_phy/ip/mac_phy_xlconstant_1b1_0/sim/mac_phy_xlconstant_1b1_0.v" \
"../../../bd/mac_phy/ip/mac_phy_xlconstant_3b101_0/sim/mac_phy_xlconstant_3b101_0.v" \
"../../../bd/mac_phy/ip/mac_phy_xlconstant_8b0_0/sim/mac_phy_xlconstant_8b0_0.v" \

vlog -work ten_gig_eth_mac_v15_1_7  -v2k5 \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/c6d8/hdl/ten_gig_eth_mac_v15_1_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch1_0/ten_gig_eth_mac_v15_1_1/hdl/mac_phy_ten_gig_eth_mac_ch1_0_core.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch1_0/synth/mac_phy_ten_gig_eth_mac_ch1_0_sync_resetn.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch1_0/synth/mac_phy_ten_gig_eth_mac_ch1_0_block.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch1_0/synth/mac_phy_ten_gig_eth_mac_ch1_0.v" \

vlog -work gtwizard_ultrascale_v1_7_7  -v2k5 \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_bit_sync.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gte4_drp_arb.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gthe4_delay_powergood.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtye4_delay_powergood.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gthe3_cpll_cal.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gthe3_cal_freqcnt.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_rx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gthe4_cpll_cal_tx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gthe4_cal_freqcnt.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_rx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtye4_cpll_cal_tx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtye4_cal_freqcnt.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_rx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtwiz_buffbypass_tx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtwiz_reset.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_rx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtwiz_userclk_tx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_rx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_gtwiz_userdata_tx.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_reset_sync.v" \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/b860/hdl/gtwizard_ultrascale_v1_7_reset_inv_sync.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/ip_0/sim/gtwizard_ultrascale_v1_7_gthe3_channel.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch1_0_gt_gthe3_channel_wrapper.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch1_0_gt_gtwizard_gthe3.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch1_0_gt_gtwizard_top.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch1_0_gt.v" \

vlog -work ten_gig_eth_pcs_pma_v6_0_16  -v2k5 \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/aff2/hdl/ten_gig_eth_pcs_pma_v6_0_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch1_0_ff_synchronizer_rst.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch1_0_ff_synchronizer.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch1_0_local_clock_and_reset.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch1_0_sim_speedup_controller.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch1_0_cable_pull_logic.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch1_0_block.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch1_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch1_0.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch0_0/ten_gig_eth_mac_v15_1_1/hdl/mac_phy_ten_gig_eth_mac_ch0_0_core.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch0_0/synth/mac_phy_ten_gig_eth_mac_ch0_0_sync_resetn.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch0_0/synth/mac_phy_ten_gig_eth_mac_ch0_0_block.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_mac_ch0_0/synth/mac_phy_ten_gig_eth_mac_ch0_0.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_gthe3_channel_wrapper.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_gtwizard_gthe3.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_gtwizard_top.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/ip_0/sim/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_ff_synchronizer_rst.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_ff_synchronizer.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_local_clock_and_reset.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_sim_speedup_controller.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_cable_pull_logic.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_block.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_support.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_shared_clock_and_reset.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/gtwizard_ultrascale_v1_7_gthe3_common.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_common_wrapper.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_gt_common.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0_ff_synchronizer_rst2.v" \
"../../../bd/mac_phy/ip/mac_phy_ten_gig_eth_pcs_pma_ch0_0/synth/mac_phy_ten_gig_eth_pcs_pma_ch0_0.v" \
"../../../bd/mac_phy/ip/mac_phy_system_ila_mac_phy1_0/bd_0/sim/bd_0423.v" \
"../../../bd/mac_phy/ip/mac_phy_system_ila_mac_phy1_0/bd_0/ip/ip_0/sim/bd_0423_ila_lib_0.v" \

vlog -work gigantic_mux  -v2k5 \
"../../../../10gbaser_trd.srcs/sources_1/bd/mac_phy/ipshared/d322/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/mac_phy/ip/mac_phy_system_ila_mac_phy1_0/bd_0/ip/ip_1/bd_0423_g_inst_0_gigantic_mux.v" \
"../../../bd/mac_phy/ip/mac_phy_system_ila_mac_phy1_0/bd_0/ip/ip_1/sim/bd_0423_g_inst_0.v" \
"../../../bd/mac_phy/ip/mac_phy_system_ila_mac_phy1_0/sim/mac_phy_system_ila_mac_phy1_0.v" \
"../../../bd/mac_phy/sim/mac_phy.v" \

vlog -work xil_defaultlib \
"glbl.v"

