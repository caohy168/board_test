# Vivado Launch Script

create_project 10gbaser_trd runs/impl_run -part xcku040-ffva1156-2-e  -force 

set_property ip_repo_paths  ../sources/ip_packaged/gen_mon [current_fileset]
update_ip_catalog

add_files -norecurse ../sources/hdl/kcu105_10gbaser_top.v
add_files -norecurse ../sources/hdl/debouncer.v
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

add_files -fileset constrs_1 -norecurse ../sources/constraints/kcu105_10gbaser.xdc 
set_property processing_order LATE [get_files ../sources/constraints/kcu105_10gbaser.xdc]
#add_files -fileset constrs_1 -norecurse ../sources/constraints/target.xdc
#set_property target_constrs_file ../sources/constraints/target.xdc [current_fileset -constrset]
#report_compile_order -constraints

source scripts/mac_phy_bd.tcl
save_bd_design
validate_bd_design
generate_target all [get_files  runs/impl_run/10gbaser_trd.srcs/sources_1/bd/mac_phy/mac_phy.bd]
make_wrapper -files [get_files runs/impl_run/10gbaser_trd.srcs/sources_1/bd/mac_phy/mac_phy.bd] -top
add_files -norecurse runs/impl_run/10gbaser_trd.srcs/sources_1/bd/mac_phy/hdl/mac_phy_wrapper.v
regenerate_bd_layout
update_compile_order -fileset sources_1
update_compile_order -fileset sim_1

add_files -fileset sim_1 -norecurse ../sources/testbench/tb.v
update_compile_order -fileset sim_1

set_property top kcu105_10gbaser_top [current_fileset]
set_property top tb [get_filesets sim_1]
set_property SOURCE_SET sources_1 [get_filesets sim_1]
#import_files -fileset sim_1 -force -norecurse runs/impl_run/10gbaser_trd.srcs/sources_1/bd/mac_phy/ip/mac_phy_system_management_wiz_0_0/design.txt

# Simulation data file
#add_files ../sources/testbench/mac_phy_lmb_bram_0.mem
#set_property file_type {Data Files} [get_files  ../sources/testbench/mac_phy_lmb_bram_0.mem]
#set_property used_in_synthesis false [get_files ../sources/testbench/mac_phy_lmb_bram_0.mem]

# Vivado Simulator settings
set_property verilog_define {SIMULATION=1 OOB_SIM=1} [get_filesets sim_1]

#XSIM settings
set_property target_simulator XSim [current_project]
set_property -name {xsim.simulate.runtime} -value {300us} -objects [current_fileset -simset]

# Default to MTI
set_property target_simulator ModelSim [current_project]

# MTI settings
set_property -name {modelsim.simulate.runtime} -value {300us} -objects [current_fileset -simset]
set_property -name {modelsim.simulate.custom_udo} -value {../../../../../scripts/wave.do} -objects [current_fileset -simset]
# Workaround for 156.25 MHz not propogating to AXI UARTLITE core correctly
set_property CONFIG.C_S_AXI_ACLK_FREQ_HZ 156250000 [get_bd_cells axi_uartlite_0]
save_bd_design
generate_target all [get_files  runs/impl_run/10gbaser_trd.srcs/sources_1/bd/mac_phy/mac_phy.bd]


