
################################################################
# This is a generated script based on design: mac_phy
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2019.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source mac_phy_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name mac_phy

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: mac_phy_ch1
proc create_hier_cell_mac_phy_ch1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mac_phy_ch1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rx

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 rx_statistics

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_pause

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_tx

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 tx_statistics


  # Create pins
  create_bd_pin -dir I areset
  create_bd_pin -dir I areset_clk156
  create_bd_pin -dir I -type clk clk156
  create_bd_pin -dir O -from 7 -to 0 core_status
  create_bd_pin -dir I dclk
  create_bd_pin -dir I gtrxreset
  create_bd_pin -dir I gttxreset
  create_bd_pin -dir I -from 2 -to 0 pma_pmd_type
  create_bd_pin -dir I -from 4 -to 0 prtad
  create_bd_pin -dir I qpll0lock
  create_bd_pin -dir I qpll0outclk
  create_bd_pin -dir I qpll0outrefclk
  create_bd_pin -dir I reset_counter_done
  create_bd_pin -dir I -type rst rx_axis_aresetn
  create_bd_pin -dir I -from 0 -to 0 rx_dcm_locked
  create_bd_pin -dir O rx_resetdone
  create_bd_pin -dir I rxn
  create_bd_pin -dir I rxp
  create_bd_pin -dir O -type clk rxrecclk_out
  create_bd_pin -dir I s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 s_axi_aresetn
  create_bd_pin -dir I sim_speedup_control
  create_bd_pin -dir O tx_disable
  create_bd_pin -dir I -from 0 -to 0 tx_fault
  create_bd_pin -dir I -from 7 -to 0 tx_ifg_delay
  create_bd_pin -dir O tx_resetdone
  create_bd_pin -dir O txclk322
  create_bd_pin -dir O txn
  create_bd_pin -dir O txp
  create_bd_pin -dir I txuserrdy
  create_bd_pin -dir I txusrclk
  create_bd_pin -dir I txusrclk2

  # Create instance: ten_gig_eth_mac_ch1, and set properties
  set ten_gig_eth_mac_ch1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ten_gig_eth_mac:15.1 ten_gig_eth_mac_ch1 ]

  # Create instance: ten_gig_eth_pcs_pma_ch1, and set properties
  set ten_gig_eth_pcs_pma_ch1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ten_gig_eth_pcs_pma:6.0 ten_gig_eth_pcs_pma_ch1 ]
  set_property -dict [ list \
   CONFIG.Locations {X0Y9} \
   CONFIG.base_kr {BASE-R} \
 ] $ten_gig_eth_pcs_pma_ch1

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axis_pause] [get_bd_intf_pins ten_gig_eth_mac_ch1/s_axis_pause]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins tx_statistics] [get_bd_intf_pins ten_gig_eth_mac_ch1/tx_statistics]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins rx_statistics] [get_bd_intf_pins ten_gig_eth_mac_ch1/rx_statistics]
  connect_bd_intf_net -intf_net axis_data_fifo_tx_ch0_M_AXIS_1 [get_bd_intf_pins s_axis_tx] [get_bd_intf_pins ten_gig_eth_mac_ch1/s_axis_tx]
  connect_bd_intf_net -intf_net s_axi_mac_1 [get_bd_intf_pins s_axi] [get_bd_intf_pins ten_gig_eth_mac_ch1/s_axi]
  connect_bd_intf_net -intf_net ten_gig_eth_mac_ch0_m_axis_rx_1 [get_bd_intf_pins m_axis_rx] [get_bd_intf_pins ten_gig_eth_mac_ch1/m_axis_rx]
  connect_bd_intf_net -intf_net ten_gig_eth_mac_ch0_xgmii_xgmac_1 [get_bd_intf_pins ten_gig_eth_mac_ch1/xgmii_xgmac] [get_bd_intf_pins ten_gig_eth_pcs_pma_ch1/xgmii_interface]
  connect_bd_intf_net -intf_net ten_gig_eth_pcs_pma_ch0_core_to_gt_drp_1 [get_bd_intf_pins ten_gig_eth_pcs_pma_ch1/core_to_gt_drp] [get_bd_intf_pins ten_gig_eth_pcs_pma_ch1/gt_drp]

  # Create port connections
  connect_bd_net -net areset_clk156_1 [get_bd_pins areset_clk156] [get_bd_pins ten_gig_eth_pcs_pma_ch1/areset_coreclk]
  connect_bd_net -net channel_1_core_status [get_bd_pins core_status] [get_bd_pins ten_gig_eth_pcs_pma_ch1/core_status]
  connect_bd_net -net channel_1_rx_resetdone [get_bd_pins rx_resetdone] [get_bd_pins ten_gig_eth_pcs_pma_ch1/rx_resetdone]
  connect_bd_net -net channel_1_tx_disable [get_bd_pins tx_disable] [get_bd_pins ten_gig_eth_pcs_pma_ch1/tx_disable]
  connect_bd_net -net channel_1_tx_resetdone [get_bd_pins tx_resetdone] [get_bd_pins ten_gig_eth_pcs_pma_ch1/tx_resetdone]
  connect_bd_net -net channel_1_txclk322 [get_bd_pins txclk322] [get_bd_pins ten_gig_eth_pcs_pma_ch1/txoutclk]
  connect_bd_net -net channel_1_txn [get_bd_pins txn] [get_bd_pins ten_gig_eth_pcs_pma_ch1/txn]
  connect_bd_net -net channel_1_txp [get_bd_pins txp] [get_bd_pins ten_gig_eth_pcs_pma_ch1/txp]
  connect_bd_net -net dclk_1 [get_bd_pins dclk] [get_bd_pins ten_gig_eth_pcs_pma_ch1/dclk]
  connect_bd_net -net gtrxreset_1 [get_bd_pins gtrxreset] [get_bd_pins ten_gig_eth_pcs_pma_ch1/gtrxreset]
  connect_bd_net -net gttxreset_1 [get_bd_pins gttxreset] [get_bd_pins ten_gig_eth_pcs_pma_ch1/gttxreset]
  connect_bd_net -net hdp_patgen_0_tx_ifg_delay_1 [get_bd_pins tx_ifg_delay] [get_bd_pins ten_gig_eth_mac_ch1/tx_ifg_delay]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins clk156] [get_bd_pins ten_gig_eth_mac_ch1/rx_clk0] [get_bd_pins ten_gig_eth_mac_ch1/tx_clk0] [get_bd_pins ten_gig_eth_pcs_pma_ch1/coreclk]
  connect_bd_net -net pma_pmd_type_1 [get_bd_pins pma_pmd_type] [get_bd_pins ten_gig_eth_pcs_pma_ch1/pma_pmd_type]
  connect_bd_net -net prtad_2 [get_bd_pins prtad] [get_bd_pins ten_gig_eth_pcs_pma_ch1/prtad]
  connect_bd_net -net qpll0lock_1 [get_bd_pins qpll0lock] [get_bd_pins ten_gig_eth_pcs_pma_ch1/qpll0lock]
  connect_bd_net -net qpll0outclk_1 [get_bd_pins qpll0outclk] [get_bd_pins ten_gig_eth_pcs_pma_ch1/qpll0outclk]
  connect_bd_net -net qpll0outrefclk_1 [get_bd_pins qpll0outrefclk] [get_bd_pins ten_gig_eth_pcs_pma_ch1/qpll0outrefclk]
  connect_bd_net -net reset_counter_done_1 [get_bd_pins reset_counter_done] [get_bd_pins ten_gig_eth_pcs_pma_ch1/reset_counter_done]
  connect_bd_net -net reset_mac [get_bd_pins areset] [get_bd_pins ten_gig_eth_mac_ch1/reset] [get_bd_pins ten_gig_eth_pcs_pma_ch1/areset]
  connect_bd_net -net reset_n_mac_1 [get_bd_pins rx_axis_aresetn] [get_bd_pins ten_gig_eth_mac_ch1/rx_axis_aresetn] [get_bd_pins ten_gig_eth_mac_ch1/tx_axis_aresetn]
  connect_bd_net -net rst_clk_156_156M_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins ten_gig_eth_mac_ch1/s_axi_aresetn]
  connect_bd_net -net rxn_2 [get_bd_pins rxn] [get_bd_pins ten_gig_eth_pcs_pma_ch1/rxn]
  connect_bd_net -net rxp_2 [get_bd_pins rxp] [get_bd_pins ten_gig_eth_pcs_pma_ch1/rxp]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins ten_gig_eth_mac_ch1/s_axi_aclk]
  connect_bd_net -net s_axis_pause_tvalid_1 [get_bd_pins tx_fault] [get_bd_pins ten_gig_eth_pcs_pma_ch1/tx_fault]
  connect_bd_net -net sim_speedup_control_1 [get_bd_pins sim_speedup_control] [get_bd_pins ten_gig_eth_pcs_pma_ch1/sim_speedup_control]
  connect_bd_net -net ten_gig_eth_mac_ch0_mdc_1 [get_bd_pins ten_gig_eth_mac_ch1/mdc] [get_bd_pins ten_gig_eth_pcs_pma_ch1/mdc]
  connect_bd_net -net ten_gig_eth_mac_ch0_mdio_out_1 [get_bd_pins ten_gig_eth_mac_ch1/mdio_out] [get_bd_pins ten_gig_eth_pcs_pma_ch1/mdio_in]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_drp_req_1 [get_bd_pins ten_gig_eth_pcs_pma_ch1/drp_gnt] [get_bd_pins ten_gig_eth_pcs_pma_ch1/drp_req]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_mdio_out_1 [get_bd_pins ten_gig_eth_mac_ch1/mdio_in] [get_bd_pins ten_gig_eth_pcs_pma_ch1/mdio_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch1_rxrecclk_out [get_bd_pins rxrecclk_out] [get_bd_pins ten_gig_eth_pcs_pma_ch1/rxrecclk_out]
  connect_bd_net -net txuserrdy_1 [get_bd_pins txuserrdy] [get_bd_pins ten_gig_eth_pcs_pma_ch1/txuserrdy]
  connect_bd_net -net txusrclk2_1 [get_bd_pins txusrclk2] [get_bd_pins ten_gig_eth_pcs_pma_ch1/txusrclk2]
  connect_bd_net -net txusrclk_1 [get_bd_pins txusrclk] [get_bd_pins ten_gig_eth_pcs_pma_ch1/txusrclk]
  connect_bd_net -net xlconstant_0_const [get_bd_pins rx_dcm_locked] [get_bd_pins ten_gig_eth_mac_ch1/rx_dcm_locked] [get_bd_pins ten_gig_eth_mac_ch1/tx_dcm_locked] [get_bd_pins ten_gig_eth_pcs_pma_ch1/signal_detect]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: mac_phy_ch0
proc create_hier_cell_mac_phy_ch0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_mac_phy_ch0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rx

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 refclk_diff_port

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 rx_statistics

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_pause

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_tx

  create_bd_intf_pin -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 tx_statistics


  # Create pins
  create_bd_pin -dir I areset
  create_bd_pin -dir O -type rst areset_clk156_out
  create_bd_pin -dir I -type clk clk156
  create_bd_pin -dir O -type clk core_clk156_out
  create_bd_pin -dir O -from 7 -to 0 core_status
  create_bd_pin -dir O -type rst gtrxreset_out
  create_bd_pin -dir O -type rst gttxreset_out
  create_bd_pin -dir I -from 4 -to 0 prtad
  create_bd_pin -dir O qpll0lock_out
  create_bd_pin -dir O -type clk qpll0outclk_out
  create_bd_pin -dir O -type clk qpll0outrefclk_out
  create_bd_pin -dir O reset_counter_done_out
  create_bd_pin -dir O resetdone
  create_bd_pin -dir I -type rst rx_axis_aresetn
  create_bd_pin -dir I -from 0 -to 0 rx_dcm_locked
  create_bd_pin -dir I rxn
  create_bd_pin -dir I rxp
  create_bd_pin -dir I s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 s_axi_aresetn
  create_bd_pin -dir I sim_speedup_control
  create_bd_pin -dir O tx_disable
  create_bd_pin -dir I -from 0 -to 0 tx_fault
  create_bd_pin -dir I -from 7 -to 0 tx_ifg_delay
  create_bd_pin -dir O txn
  create_bd_pin -dir O txp
  create_bd_pin -dir O txuserrdy_out
  create_bd_pin -dir O -type clk txusrclk2_out
  create_bd_pin -dir O -type clk txusrclk_out

  # Create instance: ten_gig_eth_mac_ch0, and set properties
  set ten_gig_eth_mac_ch0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ten_gig_eth_mac:15.1 ten_gig_eth_mac_ch0 ]

  # Create instance: ten_gig_eth_pcs_pma_ch0, and set properties
  set ten_gig_eth_pcs_pma_ch0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ten_gig_eth_pcs_pma:6.0 ten_gig_eth_pcs_pma_ch0 ]
  set_property -dict [ list \
   CONFIG.Locations {X0Y10} \
   CONFIG.SupportLevel {1} \
   CONFIG.base_kr {BASE-R} \
 ] $ten_gig_eth_pcs_pma_ch0

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins s_axis_pause] [get_bd_intf_pins ten_gig_eth_mac_ch0/s_axis_pause]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins refclk_diff_port] [get_bd_intf_pins ten_gig_eth_pcs_pma_ch0/refclk_diff_port]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins tx_statistics] [get_bd_intf_pins ten_gig_eth_mac_ch0/tx_statistics]
  connect_bd_intf_net -intf_net Conn4 [get_bd_intf_pins rx_statistics] [get_bd_intf_pins ten_gig_eth_mac_ch0/rx_statistics]
  connect_bd_intf_net -intf_net axis_data_fifo_tx_ch0_M_AXIS [get_bd_intf_pins s_axis_tx] [get_bd_intf_pins ten_gig_eth_mac_ch0/s_axis_tx]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins s_axi] [get_bd_intf_pins ten_gig_eth_mac_ch0/s_axi]
  connect_bd_intf_net -intf_net ten_gig_eth_mac_ch0_m_axis_rx [get_bd_intf_pins m_axis_rx] [get_bd_intf_pins ten_gig_eth_mac_ch0/m_axis_rx]
  connect_bd_intf_net -intf_net ten_gig_eth_mac_ch0_xgmii_xgmac [get_bd_intf_pins ten_gig_eth_mac_ch0/xgmii_xgmac] [get_bd_intf_pins ten_gig_eth_pcs_pma_ch0/xgmii_interface]
  connect_bd_intf_net -intf_net ten_gig_eth_pcs_pma_ch0_core_to_gt_drp [get_bd_intf_pins ten_gig_eth_pcs_pma_ch0/core_to_gt_drp] [get_bd_intf_pins ten_gig_eth_pcs_pma_ch0/gt_drp]

  # Create port connections
  connect_bd_net -net hdp_patgen_0_tx_ifg_delay [get_bd_pins tx_ifg_delay] [get_bd_pins ten_gig_eth_mac_ch0/tx_ifg_delay]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins clk156] [get_bd_pins ten_gig_eth_mac_ch0/rx_clk0] [get_bd_pins ten_gig_eth_mac_ch0/tx_clk0]
  connect_bd_net -net prtad_1 [get_bd_pins prtad] [get_bd_pins ten_gig_eth_pcs_pma_ch0/prtad]
  connect_bd_net -net reset_mac [get_bd_pins areset] [get_bd_pins ten_gig_eth_mac_ch0/reset] [get_bd_pins ten_gig_eth_pcs_pma_ch0/reset]
  connect_bd_net -net reset_n_mac_1 [get_bd_pins rx_axis_aresetn] [get_bd_pins ten_gig_eth_mac_ch0/rx_axis_aresetn] [get_bd_pins ten_gig_eth_mac_ch0/tx_axis_aresetn]
  connect_bd_net -net rst_clk_156_156M_peripheral_aresetn [get_bd_pins s_axi_aresetn] [get_bd_pins ten_gig_eth_mac_ch0/s_axi_aresetn]
  connect_bd_net -net rxn_1 [get_bd_pins rxn] [get_bd_pins ten_gig_eth_pcs_pma_ch0/rxn]
  connect_bd_net -net rxp_1 [get_bd_pins rxp] [get_bd_pins ten_gig_eth_pcs_pma_ch0/rxp]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins ten_gig_eth_mac_ch0/s_axi_aclk]
  connect_bd_net -net s_axis_pause_tvalid_1 [get_bd_pins tx_fault] [get_bd_pins ten_gig_eth_pcs_pma_ch0/tx_fault]
  connect_bd_net -net sim_speedup_control_1 [get_bd_pins sim_speedup_control] [get_bd_pins ten_gig_eth_pcs_pma_ch0/sim_speedup_control]
  connect_bd_net -net ten_gig_eth_mac_ch0_mdc [get_bd_pins ten_gig_eth_mac_ch0/mdc] [get_bd_pins ten_gig_eth_pcs_pma_ch0/mdc]
  connect_bd_net -net ten_gig_eth_mac_ch0_mdio_out [get_bd_pins ten_gig_eth_mac_ch0/mdio_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/mdio_in]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_areset_clk156_out [get_bd_pins areset_clk156_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/areset_datapathclk_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_core_clk156_out [get_bd_pins core_clk156_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/coreclk_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/dclk]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_core_status [get_bd_pins core_status] [get_bd_pins ten_gig_eth_pcs_pma_ch0/core_status]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_drp_req [get_bd_pins ten_gig_eth_pcs_pma_ch0/drp_gnt] [get_bd_pins ten_gig_eth_pcs_pma_ch0/drp_req]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_gtrxreset_out [get_bd_pins gtrxreset_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/gtrxreset_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_gttxreset_out [get_bd_pins gttxreset_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/gttxreset_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_mdio_out [get_bd_pins ten_gig_eth_mac_ch0/mdio_in] [get_bd_pins ten_gig_eth_pcs_pma_ch0/mdio_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_qpll0lock_out [get_bd_pins qpll0lock_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/qpll0lock_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_qpll0outclk_out [get_bd_pins qpll0outclk_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/qpll0outclk_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_qpll0outrefclk_out [get_bd_pins qpll0outrefclk_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/qpll0outrefclk_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_reset_counter_done_out [get_bd_pins reset_counter_done_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/reset_counter_done_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_resetdone [get_bd_pins resetdone] [get_bd_pins ten_gig_eth_pcs_pma_ch0/resetdone_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_tx_disable [get_bd_pins tx_disable] [get_bd_pins ten_gig_eth_pcs_pma_ch0/tx_disable]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txn [get_bd_pins txn] [get_bd_pins ten_gig_eth_pcs_pma_ch0/txn]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txp [get_bd_pins txp] [get_bd_pins ten_gig_eth_pcs_pma_ch0/txp]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txuserrdy_out [get_bd_pins txuserrdy_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/txuserrdy_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txusrclk2_out [get_bd_pins txusrclk2_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/txusrclk2_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txusrclk_out [get_bd_pins txusrclk_out] [get_bd_pins ten_gig_eth_pcs_pma_ch0/txusrclk_out]
  connect_bd_net -net xlconstant_0_const [get_bd_pins rx_dcm_locked] [get_bd_pins ten_gig_eth_mac_ch0/rx_dcm_locked] [get_bd_pins ten_gig_eth_mac_ch0/tx_dcm_locked] [get_bd_pins ten_gig_eth_pcs_pma_ch0/signal_detect]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis_rx_0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rx_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $m_axis_rx_0

  set m_axis_rx_1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rx_1 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $m_axis_rx_1

  set refclk_diff_port [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 refclk_diff_port ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   ] $refclk_diff_port

  set rx_statistics_ch0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 rx_statistics_ch0 ]

  set rx_statistics_ch1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 rx_statistics_ch1 ]

  set s_axis_pause_ch0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_pause_ch0 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {0} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.PHASE {0.000} \
   CONFIG.TDATA_NUM_BYTES {2} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $s_axis_pause_ch0

  set s_axis_pause_ch1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_pause_ch1 ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {0} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.PHASE {0.000} \
   CONFIG.TDATA_NUM_BYTES {2} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $s_axis_pause_ch1

  set s_axis_tx_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_tx_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {1} \
   ] $s_axis_tx_0

  set s_axis_tx_1 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_tx_1 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
   CONFIG.HAS_TKEEP {1} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {8} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {1} \
   ] $s_axis_tx_1

  set tx_statistics_ch0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 tx_statistics_ch0 ]

  set tx_statistics_ch1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 tx_statistics_ch1 ]


  # Create ports
  set aux_resetn [ create_bd_port -dir I -type rst aux_resetn ]
  set core_clk156_out [ create_bd_port -dir O -type clk core_clk156_out ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {s_axis_pause_ch1:s_axis_pause_ch0} \
 ] $core_clk156_out
  set core_status_ch0 [ create_bd_port -dir O -from 7 -to 0 core_status_ch0 ]
  set core_status_ch1 [ create_bd_port -dir O -from 7 -to 0 core_status_ch1 ]
  set mb_clk [ create_bd_port -dir I -type clk -freq_hz 156250000 mb_clk ]
  set prtad_ch0 [ create_bd_port -dir I -from 4 -to 0 prtad_ch0 ]
  set prtad_ch1 [ create_bd_port -dir I -from 4 -to 0 prtad_ch1 ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set reset_n [ create_bd_port -dir I reset_n ]
  set resetdone_ch0 [ create_bd_port -dir O resetdone_ch0 ]
  set rx_resetdone_ch1 [ create_bd_port -dir O rx_resetdone_ch1 ]
  set rxn_ch0 [ create_bd_port -dir I rxn_ch0 ]
  set rxn_ch1 [ create_bd_port -dir I rxn_ch1 ]
  set rxp_ch0 [ create_bd_port -dir I rxp_ch0 ]
  set rxp_ch1 [ create_bd_port -dir I rxp_ch1 ]
  set s_axi_aresetn [ create_bd_port -dir O -from 0 -to 0 -type rst s_axi_aresetn ]
  set sim_speedup_control_ch0 [ create_bd_port -dir I sim_speedup_control_ch0 ]
  set sim_speedup_control_ch1 [ create_bd_port -dir I sim_speedup_control_ch1 ]
  set tx_disable_ch0 [ create_bd_port -dir O tx_disable_ch0 ]
  set tx_disable_ch1 [ create_bd_port -dir O tx_disable_ch1 ]
  set tx_resetdone_ch1 [ create_bd_port -dir O tx_resetdone_ch1 ]
  set txclk322_ch1 [ create_bd_port -dir O txclk322_ch1 ]
  set txn_ch0 [ create_bd_port -dir O txn_ch0 ]
  set txn_ch1 [ create_bd_port -dir O txn_ch1 ]
  set txp_ch0 [ create_bd_port -dir O txp_ch0 ]
  set txp_ch1 [ create_bd_port -dir O txp_ch1 ]

  # Create instance: mac_phy_ch0
  create_hier_cell_mac_phy_ch0 [current_bd_instance .] mac_phy_ch0

  # Create instance: mac_phy_ch1
  create_hier_cell_mac_phy_ch1 [current_bd_instance .] mac_phy_ch1

  # Create instance: system_ila_mac_phy2, and set properties
  set system_ila_mac_phy2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_ila:1.1 system_ila_mac_phy2 ]
  set_property -dict [ list \
   CONFIG.C_BRAM_CNT {0} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_MON_TYPE {INTERFACE} \
   CONFIG.C_NUM_MONITOR_SLOTS {4} \
   CONFIG.C_SLOT {2} \
   CONFIG.C_SLOT_0_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_SLOT_0_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_1_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_SLOT_1_AXI_ID_WIDTH {AUTO} \
   CONFIG.C_SLOT_1_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_2_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_SLOT_2_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
   CONFIG.C_SLOT_3_AXIS_TDATA_WIDTH {64} \
   CONFIG.C_SLOT_3_AXI_ID_WIDTH {AUTO} \
   CONFIG.C_SLOT_3_INTF_TYPE {xilinx.com:interface:axis_rtl:1.0} \
 ] $system_ila_mac_phy2

  # Create instance: xlconstant_1b0, and set properties
  set xlconstant_1b0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1b0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1b0

  # Create instance: xlconstant_1b1, and set properties
  set xlconstant_1b1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1b1 ]

  # Create instance: xlconstant_3b101, and set properties
  set xlconstant_3b101 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3b101 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {5} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_3b101

  # Create instance: xlconstant_8b0, and set properties
  set xlconstant_8b0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_8b0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_8b0

  # Create interface connections
  connect_bd_intf_net -intf_net mac_phy_ch0_m_axis_rx [get_bd_intf_ports m_axis_rx_1] [get_bd_intf_pins mac_phy_ch0/m_axis_rx]
connect_bd_intf_net -intf_net [get_bd_intf_nets mac_phy_ch0_m_axis_rx] [get_bd_intf_ports m_axis_rx_1] [get_bd_intf_pins system_ila_mac_phy2/SLOT_1_AXIS]
  connect_bd_intf_net -intf_net mac_phy_ch0_rx_statistics [get_bd_intf_ports rx_statistics_ch1] [get_bd_intf_pins mac_phy_ch0/rx_statistics]
  connect_bd_intf_net -intf_net mac_phy_ch0_tx_statistics [get_bd_intf_ports tx_statistics_ch1] [get_bd_intf_pins mac_phy_ch0/tx_statistics]
  connect_bd_intf_net -intf_net mac_phy_ch1_m_axis_rx [get_bd_intf_ports m_axis_rx_0] [get_bd_intf_pins mac_phy_ch1/m_axis_rx]
connect_bd_intf_net -intf_net [get_bd_intf_nets mac_phy_ch1_m_axis_rx] [get_bd_intf_ports m_axis_rx_0] [get_bd_intf_pins system_ila_mac_phy2/SLOT_3_AXIS]
  connect_bd_intf_net -intf_net mac_phy_ch1_rx_statistics [get_bd_intf_ports rx_statistics_ch0] [get_bd_intf_pins mac_phy_ch1/rx_statistics]
  connect_bd_intf_net -intf_net mac_phy_ch1_tx_statistics [get_bd_intf_ports tx_statistics_ch0] [get_bd_intf_pins mac_phy_ch1/tx_statistics]
  connect_bd_intf_net -intf_net refclk_diff_port_1 [get_bd_intf_ports refclk_diff_port] [get_bd_intf_pins mac_phy_ch0/refclk_diff_port]
  connect_bd_intf_net -intf_net s_axis_pause_1 [get_bd_intf_ports s_axis_pause_ch0] [get_bd_intf_pins mac_phy_ch0/s_axis_pause]
  connect_bd_intf_net -intf_net s_axis_pause_1_1 [get_bd_intf_ports s_axis_pause_ch1] [get_bd_intf_pins mac_phy_ch1/s_axis_pause]
  connect_bd_intf_net -intf_net s_axis_tx_0_1 [get_bd_intf_ports s_axis_tx_0] [get_bd_intf_pins mac_phy_ch0/s_axis_tx]
connect_bd_intf_net -intf_net [get_bd_intf_nets s_axis_tx_0_1] [get_bd_intf_ports s_axis_tx_0] [get_bd_intf_pins system_ila_mac_phy2/SLOT_0_AXIS]
  connect_bd_intf_net -intf_net s_axis_tx_1_1 [get_bd_intf_ports s_axis_tx_1] [get_bd_intf_pins mac_phy_ch1/s_axis_tx]
connect_bd_intf_net -intf_net [get_bd_intf_nets s_axis_tx_1_1] [get_bd_intf_ports s_axis_tx_1] [get_bd_intf_pins system_ila_mac_phy2/SLOT_2_AXIS]

  # Create port connections
  connect_bd_net -net channel_1_rx_resetdone [get_bd_ports rx_resetdone_ch1] [get_bd_pins mac_phy_ch1/rx_resetdone]
  set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_nets channel_1_rx_resetdone]
  set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_nets channel_1_rx_resetdone]
  connect_bd_net -net channel_1_tx_disable [get_bd_ports tx_disable_ch1] [get_bd_pins mac_phy_ch1/tx_disable]
  connect_bd_net -net channel_1_tx_resetdone [get_bd_ports tx_resetdone_ch1] [get_bd_pins mac_phy_ch1/tx_resetdone]
  set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_nets channel_1_tx_resetdone]
  set_property HDL_ATTRIBUTE.MARK_DEBUG {true} [get_bd_nets channel_1_tx_resetdone]
  connect_bd_net -net channel_1_txclk322 [get_bd_ports txclk322_ch1] [get_bd_pins mac_phy_ch1/txclk322]
  connect_bd_net -net channel_1_txn [get_bd_ports txn_ch1] [get_bd_pins mac_phy_ch1/txn]
  connect_bd_net -net channel_1_txp [get_bd_ports txp_ch1] [get_bd_pins mac_phy_ch1/txp]
  connect_bd_net -net mac_phy_ch0_areset_clk156_out [get_bd_pins mac_phy_ch0/areset_clk156_out] [get_bd_pins mac_phy_ch1/areset_clk156]
  create_bd_net mac_phy_ch0_core_clk156_out
  connect_bd_net -net [get_bd_nets mac_phy_ch0_core_clk156_out] [get_bd_ports core_clk156_out] [get_bd_pins mac_phy_ch0/clk156] [get_bd_pins mac_phy_ch0/core_clk156_out] [get_bd_pins mac_phy_ch1/clk156] [get_bd_pins mac_phy_ch1/dclk] [get_bd_pins system_ila_mac_phy2/clk]
  connect_bd_net -net mac_phy_ch0_core_status [get_bd_ports core_status_ch0] [get_bd_pins mac_phy_ch0/core_status]
  connect_bd_net -net mac_phy_ch0_gtrxreset_out [get_bd_pins mac_phy_ch0/gtrxreset_out] [get_bd_pins mac_phy_ch1/gtrxreset]
  connect_bd_net -net mac_phy_ch0_gttxreset_out [get_bd_pins mac_phy_ch0/gttxreset_out] [get_bd_pins mac_phy_ch1/gttxreset]
  connect_bd_net -net mac_phy_ch0_qpll0lock_out [get_bd_pins mac_phy_ch0/qpll0lock_out] [get_bd_pins mac_phy_ch1/qpll0lock]
  set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_nets mac_phy_ch0_qpll0lock_out]
  connect_bd_net -net mac_phy_ch0_qpll0outclk_out [get_bd_pins mac_phy_ch0/qpll0outclk_out] [get_bd_pins mac_phy_ch1/qpll0outclk]
  connect_bd_net -net mac_phy_ch0_qpll0outrefclk_out [get_bd_pins mac_phy_ch0/qpll0outrefclk_out] [get_bd_pins mac_phy_ch1/qpll0outrefclk]
  connect_bd_net -net mac_phy_ch0_reset_counter_done_out [get_bd_pins mac_phy_ch0/reset_counter_done_out] [get_bd_pins mac_phy_ch1/reset_counter_done]
  connect_bd_net -net mac_phy_ch0_resetdone [get_bd_ports resetdone_ch0] [get_bd_pins mac_phy_ch0/resetdone]
  set_property HDL_ATTRIBUTE.DEBUG_IN_BD {true} [get_bd_nets mac_phy_ch0_resetdone]
  connect_bd_net -net mac_phy_ch0_txuserrdy_out [get_bd_pins mac_phy_ch0/txuserrdy_out] [get_bd_pins mac_phy_ch1/txuserrdy]
  connect_bd_net -net mac_phy_ch0_txusrclk2_out [get_bd_pins mac_phy_ch0/txusrclk2_out] [get_bd_pins mac_phy_ch1/txusrclk2]
  connect_bd_net -net mac_phy_ch0_txusrclk_out [get_bd_pins mac_phy_ch0/txusrclk_out] [get_bd_pins mac_phy_ch1/txusrclk]
  connect_bd_net -net mac_phy_ch1_core_status [get_bd_ports core_status_ch1] [get_bd_pins mac_phy_ch1/core_status]
  connect_bd_net -net microblaze_0_Clk [get_bd_ports mb_clk] [get_bd_pins mac_phy_ch0/s_axi_aclk] [get_bd_pins mac_phy_ch1/s_axi_aclk]
  connect_bd_net -net prtad_1 [get_bd_ports prtad_ch0] [get_bd_pins mac_phy_ch0/prtad]
  connect_bd_net -net prtad_2 [get_bd_ports prtad_ch1] [get_bd_pins mac_phy_ch1/prtad]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins mac_phy_ch0/areset] [get_bd_pins mac_phy_ch1/areset]
  connect_bd_net -net reset_n_mac_1 [get_bd_ports reset_n] [get_bd_pins mac_phy_ch0/rx_axis_aresetn] [get_bd_pins mac_phy_ch1/rx_axis_aresetn] [get_bd_pins system_ila_mac_phy2/resetn]
  connect_bd_net -net rst_clk_156_156M_peripheral_aresetn [get_bd_ports aux_resetn] [get_bd_ports s_axi_aresetn] [get_bd_pins mac_phy_ch0/s_axi_aresetn] [get_bd_pins mac_phy_ch1/s_axi_aresetn]
  connect_bd_net -net rxn_1 [get_bd_ports rxn_ch0] [get_bd_pins mac_phy_ch0/rxn]
  connect_bd_net -net rxn_2 [get_bd_ports rxn_ch1] [get_bd_pins mac_phy_ch1/rxn]
  connect_bd_net -net rxp_1 [get_bd_ports rxp_ch0] [get_bd_pins mac_phy_ch0/rxp]
  connect_bd_net -net rxp_2 [get_bd_ports rxp_ch1] [get_bd_pins mac_phy_ch1/rxp]
  connect_bd_net -net s_axis_pause_tdata_1 [get_bd_pins mac_phy_ch0/tx_ifg_delay] [get_bd_pins mac_phy_ch1/tx_ifg_delay] [get_bd_pins xlconstant_8b0/dout]
  connect_bd_net -net s_axis_pause_tvalid_1 [get_bd_pins mac_phy_ch0/tx_fault] [get_bd_pins mac_phy_ch1/tx_fault] [get_bd_pins xlconstant_1b0/dout]
  connect_bd_net -net sim_speedup_control_1 [get_bd_ports sim_speedup_control_ch0] [get_bd_pins mac_phy_ch0/sim_speedup_control]
  connect_bd_net -net sim_speedup_control_1_1 [get_bd_ports sim_speedup_control_ch1] [get_bd_pins mac_phy_ch1/sim_speedup_control]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_tx_disable [get_bd_ports tx_disable_ch0] [get_bd_pins mac_phy_ch0/tx_disable]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txn [get_bd_ports txn_ch0] [get_bd_pins mac_phy_ch0/txn]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txp [get_bd_ports txp_ch0] [get_bd_pins mac_phy_ch0/txp]
  connect_bd_net -net xlconstant_0_const [get_bd_pins mac_phy_ch0/rx_dcm_locked] [get_bd_pins mac_phy_ch1/rx_dcm_locked] [get_bd_pins xlconstant_1b1/dout]
  connect_bd_net -net xlconstant_3b101_dout [get_bd_pins mac_phy_ch1/pma_pmd_type] [get_bd_pins xlconstant_3b101/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


