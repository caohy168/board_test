
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
set scripts_vivado_version 2017.3
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

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_uartlite:2.0\
xilinx.com:user:eth_axi_stream_gen_mon:1.3\
xilinx.com:ip:system_management_wiz:1.3\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:ten_gig_eth_mac:15.1\
xilinx.com:ip:ten_gig_eth_pcs_pma:6.0\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:microblaze:10.0\
xilinx.com:ip:axi_intc:4.1\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
xilinx.com:ip:lmb_v10:3.0\
xilinx.com:ip:blk_mem_gen:8.4\
"

   set list_ips_missing ""
   common::send_msg_id "BD_TCL-006" "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_msg_id "BD_TCL-115" "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

if { $bCheckIPsPassed != 1 } {
  common::send_msg_id "BD_TCL-1003" "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 LMB_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
   CONFIG.C_MASK {0x0000000040000000} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
   CONFIG.C_MASK {0x0000000000000000} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]
  connect_bd_net -net microblaze_0_LMB_Rst [get_bd_pins LMB_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: microblaze_sub_system
proc create_hier_cell_microblaze_sub_system { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_sub_system() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M_AXI_DP
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_INTC
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S_AXI_MDM

  # Create pins
  create_bd_pin -dir I In0
  create_bd_pin -dir I -type rst aux_reset_in
  create_bd_pin -dir I -from 0 -to 0 dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir I -type clk mb_clk
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {100000000} \
   CONFIG.C_USE_UART {1} \
 ] $mdm_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_FAULT_TOLERANT {0} \
   CONFIG.C_FREQ {156250000} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_M_AXI_DC_USER_SIGNALS {0} \
   CONFIG.C_M_AXI_IC_USER_SIGNALS {0} \
   CONFIG.C_USE_BARREL {1} \
   CONFIG.C_USE_EXT_BRK {0} \
   CONFIG.C_USE_EXT_NM_BRK {0} \
   CONFIG.C_USE_HW_MUL {1} \
   CONFIG.C_USE_INTERRUPT {2} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_ASYNC_INTR {0xFFFFFFFE} \
   CONFIG.C_DISABLE_SYNCHRONIZERS {1} \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory $hier_obj microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {1} \
 ] $microblaze_0_xlconcat

  # Create instance: rst_clk_156_156M, and set properties
  set rst_clk_156_156M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_156_156M ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
 ] $rst_clk_156_156M

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins M_AXI_DP] [get_bd_intf_pins microblaze_0/M_AXI_DP]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins S_AXI_MDM] [get_bd_intf_pins mdm_1/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins S_AXI_INTC] [get_bd_intf_pins microblaze_0_axi_intc/s_axi]

  # Create port connections
  connect_bd_net -net aux_reset_in_1 [get_bd_pins aux_reset_in] [get_bd_pins rst_clk_156_156M/aux_reset_in]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins In0] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net ext_reset_in_1_1 [get_bd_pins ext_reset_in] [get_bd_pins rst_clk_156_156M/ext_reset_in]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_156_156M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins mb_clk] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_156_156M/slowest_sync_clk]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net rst_clk_156_156M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/LMB_Rst] [get_bd_pins rst_clk_156_156M/bus_struct_reset]
  connect_bd_net -net rst_clk_156_156M_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins rst_clk_156_156M/interconnect_aresetn]
  connect_bd_net -net rst_clk_156_156M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_clk_156_156M/mb_reset]
  connect_bd_net -net rst_clk_156_156M_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins rst_clk_156_156M/peripheral_aresetn]
  connect_bd_net -net xlconstant_0_const [get_bd_pins dcm_locked] [get_bd_pins rst_clk_156_156M/dcm_locked]

  # Restore current instance
  current_bd_instance $oldCurInst
}

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
  set UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART ]
  set Vaux0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux0 ]
  set Vaux2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux2 ]
  set Vaux8 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux8 ]
  set Vp_Vn [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn ]
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
  set tx_statistics_ch0 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 tx_statistics_ch0 ]
  set tx_statistics_ch1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:display_ten_gig_eth_mac:statistics_rtl:2.0 tx_statistics_ch1 ]

  # Create ports
  set aux_reset_in [ create_bd_port -dir I -type rst aux_reset_in ]
  set core_clk156_out [ create_bd_port -dir O -type clk core_clk156_out ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {s_axis_pause_ch1:s_axis_pause_ch0} \
 ] $core_clk156_out
  set core_status_ch0 [ create_bd_port -dir O -from 7 -to 0 core_status_ch0 ]
  set core_status_ch1 [ create_bd_port -dir O -from 7 -to 0 core_status_ch1 ]
  set ext_reset_in [ create_bd_port -dir I -type rst ext_reset_in ]
  set mb_clk [ create_bd_port -dir I -type clk mb_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {156250000} \
 ] $mb_clk
  set muxaddr_out [ create_bd_port -dir O -from 4 -to 0 muxaddr_out ]
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
  set sim_speedup_control_ch0 [ create_bd_port -dir I sim_speedup_control_ch0 ]
  set sim_speedup_control_ch1 [ create_bd_port -dir I sim_speedup_control_ch1 ]
  set tg_config_ch0 [ create_bd_port -dir I -from 47 -to 0 tg_config_ch0 ]
  set tg_config_ch1 [ create_bd_port -dir I -from 47 -to 0 tg_config_ch1 ]
  set tx_disable_ch0 [ create_bd_port -dir O tx_disable_ch0 ]
  set tx_disable_ch1 [ create_bd_port -dir O tx_disable_ch1 ]
  set tx_resetdone_ch1 [ create_bd_port -dir O tx_resetdone_ch1 ]
  set txclk322_ch1 [ create_bd_port -dir O txclk322_ch1 ]
  set txn_ch0 [ create_bd_port -dir O txn_ch0 ]
  set txn_ch1 [ create_bd_port -dir O txn_ch1 ]
  set txp_ch0 [ create_bd_port -dir O txp_ch0 ]
  set txp_ch1 [ create_bd_port -dir O txp_ch1 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {156250000} \
 ] $axi_uartlite_0

  # Create instance: eth_axi_stream_gen_mon_0, and set properties
  set eth_axi_stream_gen_mon_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:eth_axi_stream_gen_mon:1.3 eth_axi_stream_gen_mon_0 ]

  # Create instance: eth_axi_stream_gen_mon_1, and set properties
  set eth_axi_stream_gen_mon_1 [ create_bd_cell -type ip -vlnv xilinx.com:user:eth_axi_stream_gen_mon:1.3 eth_axi_stream_gen_mon_1 ]
  set_property -dict [ list \
   CONFIG.EXT_MAC_ID {0x444400000000} \
   CONFIG.S_AXI_BASE_ADDRESS {0x44A10000} \
   CONFIG.XIL_MAC_ID_OTHER {0x111100000000} \
   CONFIG.XIL_MAC_ID_THIS {0x222200000000} \
 ] $eth_axi_stream_gen_mon_1

  # Create instance: mac_phy_ch0
  create_hier_cell_mac_phy_ch0 [current_bd_instance .] mac_phy_ch0

  # Create instance: mac_phy_ch1
  create_hier_cell_mac_phy_ch1 [current_bd_instance .] mac_phy_ch1

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {8} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_sub_system
  create_hier_cell_microblaze_sub_system [current_bd_instance .] microblaze_sub_system

  # Create instance: system_management_wiz_0, and set properties
  set system_management_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_management_wiz:1.3 system_management_wiz_0 ]
  set_property -dict [ list \
   CONFIG.ACQUISITION_TIME_VAUXP0_VAUXN0 {true} \
   CONFIG.ACQUISITION_TIME_VAUXP2_VAUXN2 {true} \
   CONFIG.ACQUISITION_TIME_VAUXP8_VAUXN8 {true} \
   CONFIG.ACQUISITION_TIME_VP_VN {false} \
   CONFIG.ADC_CONVERSION_RATE {200} \
   CONFIG.ADC_OFFSET_CALIBRATION {true} \
   CONFIG.ANALOG_BANK_SELECTION {66} \
   CONFIG.AVERAGE_ENABLE_TEMPERATURE {true} \
   CONFIG.AVERAGE_ENABLE_VAUXP0_VAUXN0 {true} \
   CONFIG.AVERAGE_ENABLE_VAUXP2_VAUXN2 {true} \
   CONFIG.AVERAGE_ENABLE_VAUXP8_VAUXN8 {true} \
   CONFIG.AVERAGE_ENABLE_VBRAM {true} \
   CONFIG.AVERAGE_ENABLE_VCCAUX {true} \
   CONFIG.AVERAGE_ENABLE_VCCINT {true} \
   CONFIG.AVERAGE_ENABLE_VP_VN {false} \
   CONFIG.AVERAGE_ENABLE_VUSER0 {true} \
   CONFIG.AVERAGE_ENABLE_VUSER1 {true} \
   CONFIG.AVERAGE_ENABLE_VUSER2 {true} \
   CONFIG.AVERAGE_ENABLE_VUSER3 {true} \
   CONFIG.BIPOLAR_VAUXP0_VAUXN0 {false} \
   CONFIG.BIPOLAR_VAUXP8_VAUXN8 {false} \
   CONFIG.CHANNEL_AVERAGING {16} \
   CONFIG.CHANNEL_ENABLE_VAUXP0_VAUXN0 {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP2_VAUXN2 {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP8_VAUXN8 {true} \
   CONFIG.CHANNEL_ENABLE_VP_VN {true} \
   CONFIG.CHANNEL_ENABLE_VUSER0 {true} \
   CONFIG.CHANNEL_ENABLE_VUSER1 {true} \
   CONFIG.CHANNEL_ENABLE_VUSER2 {true} \
   CONFIG.CHANNEL_ENABLE_VUSER3 {true} \
   CONFIG.COMMON_N_SOURCE {Vaux8} \
   CONFIG.DCLK_FREQUENCY {156.25} \
   CONFIG.ENABLE_EXTERNAL_MUX {false} \
   CONFIG.ENABLE_RESET {false} \
   CONFIG.EXTERNAL_MUXADDR_ENABLE {true} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.OT_ALARM {false} \
   CONFIG.SELECT_USER_SUPPLY1 {VCCO_BOT} \
   CONFIG.SELECT_USER_SUPPLY1_LEVEL {1.8} \
   CONFIG.SELECT_USER_SUPPLY2 {VCCO} \
   CONFIG.SELECT_USER_SUPPLY3 {VCCAUX} \
   CONFIG.SENSOR_OFFSET_CALIBRATION {true} \
   CONFIG.USER_SUPPLY0_BANK {47} \
   CONFIG.USER_SUPPLY1_ALARM_LOWER {1.79} \
   CONFIG.USER_SUPPLY1_ALARM_UPPER {1.81} \
   CONFIG.USER_SUPPLY1_BANK {64} \
   CONFIG.USER_SUPPLY3_BANK {48} \
   CONFIG.USER_TEMP_ALARM {false} \
   CONFIG.VAUXN0_LOC {E13} \
   CONFIG.VAUXN10_LOC {K12} \
   CONFIG.VAUXN11_LOC {J11} \
   CONFIG.VAUXN12_LOC {H8} \
   CONFIG.VAUXN13_LOC {K8} \
   CONFIG.VAUXN14_LOC {C9} \
   CONFIG.VAUXN15_LOC {C8} \
   CONFIG.VAUXN1_LOC {B12} \
   CONFIG.VAUXN2_LOC {H13} \
   CONFIG.VAUXN3_LOC {K13} \
   CONFIG.VAUXN4_LOC {J10} \
   CONFIG.VAUXN5_LOC {H9} \
   CONFIG.VAUXN6_LOC {D10} \
   CONFIG.VAUXN7_LOC {A10} \
   CONFIG.VAUXN8_LOC {B11} \
   CONFIG.VAUXN9_LOC {D11} \
   CONFIG.VAUXP0_LOC {F13} \
   CONFIG.VAUXP10_LOC {L12} \
   CONFIG.VAUXP11_LOC {K11} \
   CONFIG.VAUXP12_LOC {J8} \
   CONFIG.VAUXP13_LOC {L8} \
   CONFIG.VAUXP14_LOC {D9} \
   CONFIG.VAUXP15_LOC {D8} \
   CONFIG.VAUXP1_LOC {C12} \
   CONFIG.VAUXP2_LOC {J13} \
   CONFIG.VAUXP3_LOC {L13} \
   CONFIG.VAUXP4_LOC {K10} \
   CONFIG.VAUXP5_LOC {J9} \
   CONFIG.VAUXP6_LOC {E10} \
   CONFIG.VAUXP7_LOC {B10} \
   CONFIG.VAUXP8_LOC {C11} \
   CONFIG.VAUXP9_LOC {E11} \
   CONFIG.VCCAUX_ALARM {false} \
   CONFIG.VCCINT_ALARM {false} \
 ] $system_management_wiz_0

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
   CONFIG.CONST_VAL {101} \
   CONFIG.CONST_WIDTH {3} \
 ] $xlconstant_3b101

  # Create instance: xlconstant_8b0, and set properties
  set xlconstant_8b0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_8b0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
   CONFIG.CONST_WIDTH {8} \
 ] $xlconstant_8b0

  # Create interface connections
  connect_bd_intf_net -intf_net Vaux0_1 [get_bd_intf_ports Vaux0] [get_bd_intf_pins system_management_wiz_0/Vaux0]
  connect_bd_intf_net -intf_net Vaux2_1 [get_bd_intf_ports Vaux2] [get_bd_intf_pins system_management_wiz_0/Vaux2]
  connect_bd_intf_net -intf_net Vaux8_1 [get_bd_intf_ports Vaux8] [get_bd_intf_pins system_management_wiz_0/Vaux8]
  connect_bd_intf_net -intf_net Vp_Vn_1 [get_bd_intf_ports Vp_Vn] [get_bd_intf_pins system_management_wiz_0/Vp_Vn]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports UART] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net eth_axi_stream_gen_mon_0_tx_axis [get_bd_intf_pins eth_axi_stream_gen_mon_0/tx_axis] [get_bd_intf_pins mac_phy_ch0/s_axis_tx]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_intf_nets eth_axi_stream_gen_mon_0_tx_axis]
  connect_bd_intf_net -intf_net eth_axi_stream_gen_mon_1_tx_axis [get_bd_intf_pins eth_axi_stream_gen_mon_1/tx_axis] [get_bd_intf_pins mac_phy_ch1/s_axis_tx]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_intf_nets eth_axi_stream_gen_mon_1_tx_axis]
  connect_bd_intf_net -intf_net mac_phy_ch0_m_axis_rx [get_bd_intf_pins eth_axi_stream_gen_mon_1/rx_axis] [get_bd_intf_pins mac_phy_ch0/m_axis_rx]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_intf_nets mac_phy_ch0_m_axis_rx]
  connect_bd_intf_net -intf_net mac_phy_ch0_rx_statistics [get_bd_intf_ports rx_statistics_ch1] [get_bd_intf_pins mac_phy_ch0/rx_statistics]
  connect_bd_intf_net -intf_net mac_phy_ch0_tx_statistics [get_bd_intf_ports tx_statistics_ch1] [get_bd_intf_pins mac_phy_ch0/tx_statistics]
  connect_bd_intf_net -intf_net mac_phy_ch1_m_axis_rx [get_bd_intf_pins eth_axi_stream_gen_mon_0/rx_axis] [get_bd_intf_pins mac_phy_ch1/m_axis_rx]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_intf_nets mac_phy_ch1_m_axis_rx]
  connect_bd_intf_net -intf_net mac_phy_ch1_rx_statistics [get_bd_intf_ports rx_statistics_ch0] [get_bd_intf_pins mac_phy_ch1/rx_statistics]
  connect_bd_intf_net -intf_net mac_phy_ch1_tx_statistics [get_bd_intf_ports tx_statistics_ch0] [get_bd_intf_pins mac_phy_ch1/tx_statistics]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI] [get_bd_intf_pins microblaze_sub_system/M_AXI_DP]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI] [get_bd_intf_pins microblaze_sub_system/S_AXI_MDM]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins eth_axi_stream_gen_mon_0/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins mac_phy_ch0/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins eth_axi_stream_gen_mon_1/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI] [get_bd_intf_pins system_management_wiz_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI] [get_bd_intf_pins microblaze_sub_system/S_AXI_INTC]
  connect_bd_intf_net -intf_net refclk_diff_port_1 [get_bd_intf_ports refclk_diff_port] [get_bd_intf_pins mac_phy_ch0/refclk_diff_port]
  connect_bd_intf_net -intf_net s_axi_mac_1 [get_bd_intf_pins mac_phy_ch1/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net s_axis_pause_1 [get_bd_intf_ports s_axis_pause_ch0] [get_bd_intf_pins mac_phy_ch0/s_axis_pause]
  connect_bd_intf_net -intf_net s_axis_pause_1_1 [get_bd_intf_ports s_axis_pause_ch1] [get_bd_intf_pins mac_phy_ch1/s_axis_pause]

  # Create port connections
  connect_bd_net -net aux_reset_in_1 [get_bd_ports aux_reset_in] [get_bd_pins microblaze_sub_system/aux_reset_in]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uartlite_0/interrupt] [get_bd_pins microblaze_sub_system/In0]
  connect_bd_net -net channel_1_core_status [get_bd_ports core_status_ch1] [get_bd_pins eth_axi_stream_gen_mon_1/phy_status] [get_bd_pins mac_phy_ch1/core_status]
  connect_bd_net -net channel_1_rx_resetdone [get_bd_ports rx_resetdone_ch1] [get_bd_pins mac_phy_ch1/rx_resetdone]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets channel_1_rx_resetdone]
  connect_bd_net -net channel_1_tx_disable [get_bd_ports tx_disable_ch1] [get_bd_pins mac_phy_ch1/tx_disable]
  connect_bd_net -net channel_1_tx_resetdone [get_bd_ports tx_resetdone_ch1] [get_bd_pins mac_phy_ch1/tx_resetdone]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets channel_1_tx_resetdone]
  connect_bd_net -net channel_1_txclk322 [get_bd_ports txclk322_ch1] [get_bd_pins mac_phy_ch1/txclk322]
  connect_bd_net -net channel_1_txn [get_bd_ports txn_ch1] [get_bd_pins mac_phy_ch1/txn]
  connect_bd_net -net channel_1_txp [get_bd_ports txp_ch1] [get_bd_pins mac_phy_ch1/txp]
  connect_bd_net -net ext_reset_in_1_1 [get_bd_ports ext_reset_in] [get_bd_pins microblaze_sub_system/ext_reset_in]
  connect_bd_net -net mac_phy_ch0_areset_clk156_out [get_bd_pins mac_phy_ch0/areset_clk156_out] [get_bd_pins mac_phy_ch1/areset_clk156]
  create_bd_net mac_phy_ch0_core_clk156_out
  connect_bd_net -net [get_bd_nets mac_phy_ch0_core_clk156_out] [get_bd_ports core_clk156_out] [get_bd_pins eth_axi_stream_gen_mon_0/axis_clk] [get_bd_pins eth_axi_stream_gen_mon_1/axis_clk] [get_bd_pins mac_phy_ch0/clk156] [get_bd_pins mac_phy_ch0/core_clk156_out] [get_bd_pins mac_phy_ch1/clk156] [get_bd_pins mac_phy_ch1/dclk]
  connect_bd_net -net mac_phy_ch0_gtrxreset_out [get_bd_pins mac_phy_ch0/gtrxreset_out] [get_bd_pins mac_phy_ch1/gtrxreset]
  connect_bd_net -net mac_phy_ch0_gttxreset_out [get_bd_pins mac_phy_ch0/gttxreset_out] [get_bd_pins mac_phy_ch1/gttxreset]
  connect_bd_net -net mac_phy_ch0_qpll0lock_out [get_bd_pins mac_phy_ch0/qpll0lock_out] [get_bd_pins mac_phy_ch1/qpll0lock]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets mac_phy_ch0_qpll0lock_out]
  connect_bd_net -net mac_phy_ch0_qpll0outclk_out [get_bd_pins mac_phy_ch0/qpll0outclk_out] [get_bd_pins mac_phy_ch1/qpll0outclk]
  connect_bd_net -net mac_phy_ch0_qpll0outrefclk_out [get_bd_pins mac_phy_ch0/qpll0outrefclk_out] [get_bd_pins mac_phy_ch1/qpll0outrefclk]
  connect_bd_net -net mac_phy_ch0_reset_counter_done_out [get_bd_pins mac_phy_ch0/reset_counter_done_out] [get_bd_pins mac_phy_ch1/reset_counter_done]
  connect_bd_net -net mac_phy_ch0_resetdone [get_bd_ports resetdone_ch0] [get_bd_pins mac_phy_ch0/resetdone]
  set_property -dict [ list \
HDL_ATTRIBUTE.MARK_DEBUG {true} \
HDL_ATTRIBUTE.DEBUG_IN_BD {true} \
 ] [get_bd_nets mac_phy_ch0_resetdone]
  connect_bd_net -net mac_phy_ch0_txuserrdy_out [get_bd_pins mac_phy_ch0/txuserrdy_out] [get_bd_pins mac_phy_ch1/txuserrdy]
  connect_bd_net -net mac_phy_ch0_txusrclk2_out [get_bd_pins mac_phy_ch0/txusrclk2_out] [get_bd_pins mac_phy_ch1/txusrclk2]
  connect_bd_net -net mac_phy_ch0_txusrclk_out [get_bd_pins mac_phy_ch0/txusrclk_out] [get_bd_pins mac_phy_ch1/txusrclk]
  connect_bd_net -net microblaze_0_Clk [get_bd_ports mb_clk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins eth_axi_stream_gen_mon_0/s_axi_clk] [get_bd_pins eth_axi_stream_gen_mon_1/s_axi_clk] [get_bd_pins mac_phy_ch0/s_axi_aclk] [get_bd_pins mac_phy_ch1/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_sub_system/mb_clk] [get_bd_pins system_management_wiz_0/s_axi_aclk]
  connect_bd_net -net prtad_1 [get_bd_ports prtad_ch0] [get_bd_pins mac_phy_ch0/prtad]
  connect_bd_net -net prtad_2 [get_bd_ports prtad_ch1] [get_bd_pins mac_phy_ch1/prtad]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins mac_phy_ch0/areset] [get_bd_pins mac_phy_ch1/areset]
  connect_bd_net -net reset_n_mac_1 [get_bd_ports reset_n] [get_bd_pins eth_axi_stream_gen_mon_0/axis_reset_n] [get_bd_pins eth_axi_stream_gen_mon_1/axis_reset_n] [get_bd_pins mac_phy_ch0/rx_axis_aresetn] [get_bd_pins mac_phy_ch1/rx_axis_aresetn]
  connect_bd_net -net rst_clk_156_156M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins microblaze_sub_system/interconnect_aresetn]
  connect_bd_net -net rst_clk_156_156M_peripheral_aresetn [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins eth_axi_stream_gen_mon_0/s_axi_areset_n] [get_bd_pins eth_axi_stream_gen_mon_1/s_axi_areset_n] [get_bd_pins mac_phy_ch0/s_axi_aresetn] [get_bd_pins mac_phy_ch1/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins microblaze_sub_system/peripheral_aresetn] [get_bd_pins system_management_wiz_0/s_axi_aresetn]
  connect_bd_net -net rxn_1 [get_bd_ports rxn_ch0] [get_bd_pins mac_phy_ch0/rxn]
  connect_bd_net -net rxn_2 [get_bd_ports rxn_ch1] [get_bd_pins mac_phy_ch1/rxn]
  connect_bd_net -net rxp_1 [get_bd_ports rxp_ch0] [get_bd_pins mac_phy_ch0/rxp]
  connect_bd_net -net rxp_2 [get_bd_ports rxp_ch1] [get_bd_pins mac_phy_ch1/rxp]
  connect_bd_net -net s_axis_pause_tdata_1 [get_bd_pins mac_phy_ch0/tx_ifg_delay] [get_bd_pins mac_phy_ch1/tx_ifg_delay] [get_bd_pins xlconstant_8b0/dout]
  connect_bd_net -net s_axis_pause_tvalid_1 [get_bd_pins mac_phy_ch0/tx_fault] [get_bd_pins mac_phy_ch1/tx_fault] [get_bd_pins xlconstant_1b0/dout]
  connect_bd_net -net sim_speedup_control_1 [get_bd_ports sim_speedup_control_ch0] [get_bd_pins mac_phy_ch0/sim_speedup_control]
  connect_bd_net -net sim_speedup_control_1_1 [get_bd_ports sim_speedup_control_ch1] [get_bd_pins mac_phy_ch1/sim_speedup_control]
  connect_bd_net -net system_management_wiz_0_muxaddr_out [get_bd_ports muxaddr_out] [get_bd_pins system_management_wiz_0/muxaddr_out]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_core_status [get_bd_ports core_status_ch0] [get_bd_pins eth_axi_stream_gen_mon_0/phy_status] [get_bd_pins mac_phy_ch0/core_status]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_tx_disable [get_bd_ports tx_disable_ch0] [get_bd_pins mac_phy_ch0/tx_disable]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txn [get_bd_ports txn_ch0] [get_bd_pins mac_phy_ch0/txn]
  connect_bd_net -net ten_gig_eth_pcs_pma_ch0_txp [get_bd_ports txp_ch0] [get_bd_pins mac_phy_ch0/txp]
  connect_bd_net -net tg_config_1 [get_bd_ports tg_config_ch0] [get_bd_pins eth_axi_stream_gen_mon_0/tg_config]
  connect_bd_net -net tg_config_2 [get_bd_ports tg_config_ch1] [get_bd_pins eth_axi_stream_gen_mon_1/tg_config]
  connect_bd_net -net xlconstant_0_const [get_bd_pins mac_phy_ch0/rx_dcm_locked] [get_bd_pins mac_phy_ch1/rx_dcm_locked] [get_bd_pins microblaze_sub_system/dcm_locked] [get_bd_pins xlconstant_1b1/dout]
  connect_bd_net -net xlconstant_101_const [get_bd_pins mac_phy_ch1/pma_pmd_type] [get_bd_pins xlconstant_3b101/dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs microblaze_sub_system/microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x4AA00000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs eth_axi_stream_gen_mon_0/s_axi/reg0] SEG_eth_axi_stream_gen_mon_0_reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x4AA10000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs eth_axi_stream_gen_mon_1/s_axi/reg0] SEG_eth_axi_stream_gen_mon_1_reg0
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Instruction] [get_bd_addr_segs microblaze_sub_system/microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x7E200000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs microblaze_sub_system/mdm_1/S_AXI/Reg] SEG_mdm_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs microblaze_sub_system/microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs system_management_wiz_0/S_AXI_LITE/Reg] SEG_system_management_wiz_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x74C00000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs mac_phy_ch0/ten_gig_eth_mac_ch0/s_axi/Reg] SEG_ten_gig_eth_mac_ch0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x74C10000 [get_bd_addr_spaces microblaze_sub_system/microblaze_0/Data] [get_bd_addr_segs mac_phy_ch1/ten_gig_eth_mac_ch1/s_axi/Reg] SEG_ten_gig_eth_mac_ch0_Reg1


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


