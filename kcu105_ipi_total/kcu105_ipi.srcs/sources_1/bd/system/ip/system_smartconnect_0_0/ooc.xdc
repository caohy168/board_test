# aclk {FREQ_HZ 100000000 CLK_DOMAIN system_ddr4_0_0_c0_ddr4_ui_clk PHASE 0}
# Clock Domain: system_ddr4_0_0_c0_ddr4_ui_clk
create_clock -name aclk -period 10.000 [get_ports aclk]
# Generated clocks
