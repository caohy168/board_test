
################################################################
# This is a generated script based on design: system
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
# source system_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
   set_property BOARD_PART xilinx.com:kcu105:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name system

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
xilinx.com:ip:axi_gpio:2.0\
xilinx.com:ip:axi_bram_ctrl:4.0\
xilinx.com:ip:blk_mem_gen:8.4\
xilinx.com:ip:axi_ethernet:7.1\
xilinx.com:ip:axi_dma:7.1\
xilinx.com:ip:axi_iic:2.0\
xilinx.com:ip:axi_quad_spi:3.2\
xilinx.com:ip:axi_timer:2.0\
xilinx.com:ip:axi_uart16550:2.0\
xilinx.com:ip:ddr4:2.2\
xilinx.com:ip:mdm:3.2\
xilinx.com:ip:microblaze:10.0\
xilinx.com:ip:axi_intc:4.1\
xilinx.com:ip:xlconcat:2.1\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:smartconnect:1.0\
xilinx.com:ip:system_management_wiz:1.3\
xilinx.com:ip:util_ds_buf:2.1\
xilinx.com:ip:xdma:4.0\
xilinx.com:ip:diff_freq_counter:1.0\
xilinx.com:ip:freq_counter:1.0\
xilinx.com:ip:gt_freq_counter:1.0\
xilinx.com:ip:clk_wiz:5.4\
xilinx.com:ip:axis_subset_converter:1.1\
xilinx.com:user:top_oddr_0:1.0\
xilinx.com:ip:v_axi4s_vid_out:4.0\
xilinx.com:ip:v_tc:6.1\
xilinx.com:ip:v_tpg:7.0\
xilinx.com:ip:xlconstant:1.1\
xilinx.com:ip:lmb_bram_if_cntlr:4.0\
xilinx.com:ip:lmb_v10:3.0\
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
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -from 0 -to 0 -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
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
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: colorbar_tpg_hier_0
proc create_hier_cell_colorbar_tpg_hier_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_colorbar_tpg_hier_0() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi_CTRL
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_io_out

  # Create pins
  create_bd_pin -dir I -type clk clk_in1
  create_bd_pin -dir O -type clk clk_out1
  create_bd_pin -dir O -from 0 -to 0 -type rst interconnect_aresetn
  create_bd_pin -dir I -from 0 -to 0 -type rst reset
  create_bd_pin -dir O vid_clk_148_5MHz_out

  # Create instance: axis_subset_converter_0, and set properties
  set axis_subset_converter_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_subset_converter:1.1 axis_subset_converter_0 ]
  set_property -dict [ list \
   CONFIG.M_TDATA_NUM_BYTES {2} \
   CONFIG.S_TDATA_NUM_BYTES {3} \
   CONFIG.TDATA_REMAP {tdata[15:0]} \
   CONFIG.TDEST_REMAP {tdest[0:0]} \
   CONFIG.TID_REMAP {tid[0:0]} \
   CONFIG.TKEEP_REMAP {tkeep[1:0]} \
   CONFIG.TLAST_REMAP {tlast[0]} \
   CONFIG.TSTRB_REMAP {tstrb[1:0]} \
   CONFIG.TUSER_REMAP {tuser[0:0]} \
 ] $axis_subset_converter_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {217.614} \
   CONFIG.CLKOUT1_PHASE_ERROR {245.344} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {148.5} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {37.125} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.250} \
   CONFIG.MMCM_DIVCLK_DIVIDE {4} \
   CONFIG.RESET_TYPE {ACTIVE_HIGH} \
 ] $clk_wiz_1

  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RESET_HIGH {0} \
 ] $proc_sys_reset_0

  # Create instance: top_oddr_0_0, and set properties
  set top_oddr_0_0 [ create_bd_cell -type ip -vlnv xilinx.com:user:top_oddr_0:1.0 top_oddr_0_0 ]

  # Create instance: v_axi4s_vid_out_0, and set properties
  set v_axi4s_vid_out_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_axi4s_vid_out:4.0 v_axi4s_vid_out_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_WIDTH {10} \
   CONFIG.C_HAS_ASYNC_CLK {1} \
   CONFIG.C_S_AXIS_VIDEO_FORMAT {0} \
   CONFIG.C_VTG_MASTER_SLAVE {0} \
 ] $v_axi4s_vid_out_0

  # Create instance: v_tc_0, and set properties
  set v_tc_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tc:6.1 v_tc_0 ]
  set_property -dict [ list \
   CONFIG.GEN_F0_VBLANK_HEND {1920} \
   CONFIG.GEN_F0_VBLANK_HSTART {1920} \
   CONFIG.GEN_F0_VFRAME_SIZE {1125} \
   CONFIG.GEN_F0_VSYNC_HEND {1920} \
   CONFIG.GEN_F0_VSYNC_HSTART {1920} \
   CONFIG.GEN_F0_VSYNC_VEND {1088} \
   CONFIG.GEN_F0_VSYNC_VSTART {1083} \
   CONFIG.GEN_F1_VBLANK_HEND {1920} \
   CONFIG.GEN_F1_VBLANK_HSTART {1920} \
   CONFIG.GEN_F1_VFRAME_SIZE {1125} \
   CONFIG.GEN_F1_VSYNC_HEND {1920} \
   CONFIG.GEN_F1_VSYNC_HSTART {1920} \
   CONFIG.GEN_F1_VSYNC_VEND {1088} \
   CONFIG.GEN_F1_VSYNC_VSTART {1083} \
   CONFIG.GEN_HACTIVE_SIZE {1920} \
   CONFIG.GEN_HFRAME_SIZE {2200} \
   CONFIG.GEN_HSYNC_END {2052} \
   CONFIG.GEN_HSYNC_START {2008} \
   CONFIG.GEN_VACTIVE_SIZE {1080} \
   CONFIG.HAS_AXI4_LITE {false} \
   CONFIG.HAS_INTC_IF {false} \
   CONFIG.VIDEO_MODE {1080p} \
   CONFIG.enable_detection {false} \
   CONFIG.enable_generation {true} \
   CONFIG.max_clocks_per_line {4096} \
   CONFIG.max_lines_per_frame {4096} \
 ] $v_tc_0

  # Create instance: v_tpg_0, and set properties
  set v_tpg_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:v_tpg:7.0 v_tpg_0 ]
  set_property -dict [ list \
   CONFIG.MAX_COLS {3840} \
 ] $v_tpg_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins vid_io_out] [get_bd_intf_pins v_axi4s_vid_out_0/vid_io_out]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s_axi_CTRL] [get_bd_intf_pins v_tpg_0/s_axi_CTRL]
  connect_bd_intf_net -intf_net axis_subset_converter_0_M_AXIS [get_bd_intf_pins axis_subset_converter_0/M_AXIS] [get_bd_intf_pins v_axi4s_vid_out_0/video_in]
  connect_bd_intf_net -intf_net v_tc_0_vtiming_out [get_bd_intf_pins v_axi4s_vid_out_0/vtiming_in] [get_bd_intf_pins v_tc_0/vtiming_out]
  connect_bd_intf_net -intf_net v_tpg_0_m_axis_video [get_bd_intf_pins axis_subset_converter_0/S_AXIS] [get_bd_intf_pins v_tpg_0/m_axis_video]

  # Create port connections
  connect_bd_net -net clk_in1_1 [get_bd_pins clk_in1] [get_bd_pins clk_wiz_1/clk_in1]
  connect_bd_net -net clk_wiz_1_clk_out1 [get_bd_pins clk_out1] [get_bd_pins axis_subset_converter_0/aclk] [get_bd_pins clk_wiz_1/clk_out1] [get_bd_pins proc_sys_reset_0/slowest_sync_clk] [get_bd_pins top_oddr_0_0/CLK] [get_bd_pins v_axi4s_vid_out_0/aclk] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_clk] [get_bd_pins v_tc_0/clk] [get_bd_pins v_tpg_0/ap_clk]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins proc_sys_reset_0/dcm_locked] [get_bd_pins proc_sys_reset_0/ext_reset_in]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins interconnect_aresetn] [get_bd_pins proc_sys_reset_0/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn1 [get_bd_pins axis_subset_converter_0/aresetn] [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins v_axi4s_vid_out_0/aresetn] [get_bd_pins v_tc_0/resetn] [get_bd_pins v_tpg_0/ap_rst_n]
  connect_bd_net -net reset_1 [get_bd_pins reset] [get_bd_pins clk_wiz_1/reset]
  connect_bd_net -net top_oddr_0_0_Q [get_bd_pins vid_clk_148_5MHz_out] [get_bd_pins top_oddr_0_0/Q]
  connect_bd_net -net v_axi4s_vid_out_0_vtg_ce [get_bd_pins v_axi4s_vid_out_0/vtg_ce] [get_bd_pins v_tc_0/gen_clken]
  connect_bd_net -net xlconstant_0_const [get_bd_pins top_oddr_0_0/D1] [get_bd_pins top_oddr_0_0/SR] [get_bd_pins v_axi4s_vid_out_0/fid] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_reset] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_const [get_bd_pins top_oddr_0_0/D2] [get_bd_pins v_axi4s_vid_out_0/aclken] [get_bd_pins v_axi4s_vid_out_0/vid_io_out_ce] [get_bd_pins v_tc_0/clken] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: CLOCK_COUNTER
proc create_hier_cell_CLOCK_COUNTER { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_CLOCK_COUNTER() - Empty argument(s)!"}
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
  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 S00_AXI

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 -type rst ARESETN
  create_bd_pin -dir I CLKIN
  create_bd_pin -dir I CLK_125MHZ_N
  create_bd_pin -dir I CLK_125MHZ_P
  create_bd_pin -dir I EMCCLK
  create_bd_pin -dir I FMC_HPC_CLK0_N
  create_bd_pin -dir I FMC_HPC_CLK0_P
  create_bd_pin -dir I FMC_HPC_CLK1_N
  create_bd_pin -dir I FMC_HPC_CLK1_P
  create_bd_pin -dir I FMC_HPC_GBTCLK0_N
  create_bd_pin -dir I FMC_HPC_GBTCLK0_P
  create_bd_pin -dir I FMC_HPC_GBTCLK1_N
  create_bd_pin -dir I FMC_HPC_GBTCLK1_P
  create_bd_pin -dir I FMC_LPC_CLK0_N
  create_bd_pin -dir I FMC_LPC_CLK0_P
  create_bd_pin -dir I FMC_LPC_CLK1_N
  create_bd_pin -dir I FMC_LPC_CLK1_P
  create_bd_pin -dir I FMC_LPC_GBTCLK0_N
  create_bd_pin -dir I FMC_LPC_GBTCLK0_P
  create_bd_pin -dir I MGT_SI570_CLOCK_N
  create_bd_pin -dir I MGT_SI570_CLOCK_P
  create_bd_pin -dir O -from 0 -to 0 REC_CLOCK_N
  create_bd_pin -dir O -from 0 -to 0 REC_CLOCK_P
  create_bd_pin -dir I REF_CLK_I
  create_bd_pin -dir I -from 0 -to 0 RST_I
  create_bd_pin -dir I SI5328_OUT_N
  create_bd_pin -dir I SI5328_OUT_P
  create_bd_pin -dir I SMA_MGT_REFCLK_N
  create_bd_pin -dir I SMA_MGT_REFCLK_P
  create_bd_pin -dir I USER_SI570_CLOCK_N
  create_bd_pin -dir I USER_SI570_CLOCK_P
  create_bd_pin -dir O -from 0 -to 0 USER_SMA_CLOCK_N
  create_bd_pin -dir O -from 0 -to 0 USER_SMA_CLOCK_P
  create_bd_pin -dir I -type clk s_axi_aclk
  create_bd_pin -dir I -from 0 -to 0 -type rst s_axi_aresetn

  # Create instance: CLK_125MHZ_ctr, and set properties
  set CLK_125MHZ_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:diff_freq_counter:1.0 CLK_125MHZ_ctr ]

  # Create instance: CLK_125MHZ_gpio, and set properties
  set CLK_125MHZ_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 CLK_125MHZ_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $CLK_125MHZ_gpio

  # Create instance: EMCCLK_ctr, and set properties
  set EMCCLK_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:freq_counter:1.0 EMCCLK_ctr ]

  # Create instance: EMCCLK_gpio, and set properties
  set EMCCLK_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 EMCCLK_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $EMCCLK_gpio

  # Create instance: FMC_HPC_CLK0_ctr, and set properties
  set FMC_HPC_CLK0_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:diff_freq_counter:1.0 FMC_HPC_CLK0_ctr ]

  # Create instance: FMC_HPC_CLK0_gpio, and set properties
  set FMC_HPC_CLK0_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 FMC_HPC_CLK0_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $FMC_HPC_CLK0_gpio

  # Create instance: FMC_HPC_CLK1_ctr, and set properties
  set FMC_HPC_CLK1_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:diff_freq_counter:1.0 FMC_HPC_CLK1_ctr ]

  # Create instance: FMC_HPC_CLK1_gpio, and set properties
  set FMC_HPC_CLK1_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 FMC_HPC_CLK1_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $FMC_HPC_CLK1_gpio

  # Create instance: FMC_HPC_GBTCLK0_ctr, and set properties
  set FMC_HPC_GBTCLK0_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:gt_freq_counter:1.0 FMC_HPC_GBTCLK0_ctr ]

  # Create instance: FMC_HPC_GBTCLK0_gpio, and set properties
  set FMC_HPC_GBTCLK0_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 FMC_HPC_GBTCLK0_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $FMC_HPC_GBTCLK0_gpio

  # Create instance: FMC_HPC_GBTCLK1_ctr, and set properties
  set FMC_HPC_GBTCLK1_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:gt_freq_counter:1.0 FMC_HPC_GBTCLK1_ctr ]

  # Create instance: FMC_HPC_GBTCLK1_gpio, and set properties
  set FMC_HPC_GBTCLK1_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 FMC_HPC_GBTCLK1_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $FMC_HPC_GBTCLK1_gpio

  # Create instance: FMC_LPC_CLK0_ctr, and set properties
  set FMC_LPC_CLK0_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:diff_freq_counter:1.0 FMC_LPC_CLK0_ctr ]

  # Create instance: FMC_LPC_CLK0_gpio, and set properties
  set FMC_LPC_CLK0_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 FMC_LPC_CLK0_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $FMC_LPC_CLK0_gpio

  # Create instance: FMC_LPC_CLK1_ctr, and set properties
  set FMC_LPC_CLK1_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:diff_freq_counter:1.0 FMC_LPC_CLK1_ctr ]

  # Create instance: FMC_LPC_CLK1_gpio, and set properties
  set FMC_LPC_CLK1_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 FMC_LPC_CLK1_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $FMC_LPC_CLK1_gpio

  # Create instance: FMC_LPC_GBTCLK0_ctr2, and set properties
  set FMC_LPC_GBTCLK0_ctr2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gt_freq_counter:1.0 FMC_LPC_GBTCLK0_ctr2 ]

  # Create instance: FMC_LPC_GBTCLK0_gpio, and set properties
  set FMC_LPC_GBTCLK0_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 FMC_LPC_GBTCLK0_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $FMC_LPC_GBTCLK0_gpio

  # Create instance: MGT_SI570_CLOCK_ctr, and set properties
  set MGT_SI570_CLOCK_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:gt_freq_counter:1.0 MGT_SI570_CLOCK_ctr ]

  # Create instance: MGT_SI570_CLOCK_gpio, and set properties
  set MGT_SI570_CLOCK_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 MGT_SI570_CLOCK_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $MGT_SI570_CLOCK_gpio

  # Create instance: REC_CLOCK_OUT, and set properties
  set REC_CLOCK_OUT [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 REC_CLOCK_OUT ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $REC_CLOCK_OUT

  # Create instance: SI5328_OUT_ctr, and set properties
  set SI5328_OUT_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:gt_freq_counter:1.0 SI5328_OUT_ctr ]

  # Create instance: SI5328_OUT_gpio, and set properties
  set SI5328_OUT_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SI5328_OUT_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $SI5328_OUT_gpio

  # Create instance: SMA_MGT_REFCLK_ctr1, and set properties
  set SMA_MGT_REFCLK_ctr1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:gt_freq_counter:1.0 SMA_MGT_REFCLK_ctr1 ]

  # Create instance: SMA_MGT_REFCLK_gpio, and set properties
  set SMA_MGT_REFCLK_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SMA_MGT_REFCLK_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $SMA_MGT_REFCLK_gpio

  # Create instance: SYSCLK300_ctr, and set properties
  set SYSCLK300_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:freq_counter:1.0 SYSCLK300_ctr ]

  # Create instance: SYSCLK300_gpio, and set properties
  set SYSCLK300_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SYSCLK300_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $SYSCLK300_gpio

  # Create instance: USER_SI570_CLOCK_ctr, and set properties
  set USER_SI570_CLOCK_ctr [ create_bd_cell -type ip -vlnv xilinx.com:ip:diff_freq_counter:1.0 USER_SI570_CLOCK_ctr ]

  # Create instance: USER_SI570_CLOCK_gpio, and set properties
  set USER_SI570_CLOCK_gpio [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 USER_SI570_CLOCK_gpio ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {16} \
 ] $USER_SI570_CLOCK_gpio

  # Create instance: USER_SMA_CLOCK_OUT, and set properties
  set USER_SMA_CLOCK_OUT [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 USER_SMA_CLOCK_OUT ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $USER_SMA_CLOCK_OUT

  # Create instance: axi_interconnect_0, and set properties
  set axi_interconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_interconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {14} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_interconnect_0

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {197.719} \
   CONFIG.CLKOUT1_PHASE_ERROR {233.132} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {156.25} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {40.625} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {6.500} \
   CONFIG.MMCM_DIVCLK_DIVIDE {4} \
   CONFIG.RESET_PORT {reset} \
   CONFIG.RESET_TYPE {ACTIVE_HIGH} \
   CONFIG.USE_LOCKED {false} \
 ] $clk_wiz_0

  # Create interface connections
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins S00_AXI] [get_bd_intf_pins axi_interconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M00_AXI [get_bd_intf_pins USER_SI570_CLOCK_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M01_AXI [get_bd_intf_pins SI5328_OUT_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins FMC_LPC_CLK1_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M02_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M03_AXI [get_bd_intf_pins FMC_LPC_CLK0_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M03_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M04_AXI [get_bd_intf_pins SYSCLK300_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M04_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M05_AXI [get_bd_intf_pins FMC_HPC_CLK1_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M05_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M06_AXI [get_bd_intf_pins FMC_HPC_CLK0_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M06_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M07_AXI [get_bd_intf_pins SMA_MGT_REFCLK_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M07_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M08_AXI [get_bd_intf_pins MGT_SI570_CLOCK_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M08_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M09_AXI [get_bd_intf_pins FMC_LPC_GBTCLK0_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M09_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M10_AXI [get_bd_intf_pins CLK_125MHZ_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M10_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M11_AXI [get_bd_intf_pins FMC_HPC_GBTCLK0_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M11_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M12_AXI [get_bd_intf_pins FMC_HPC_GBTCLK1_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M12_AXI]
  connect_bd_intf_net -intf_net axi_interconnect_0_M13_AXI [get_bd_intf_pins EMCCLK_gpio/S_AXI] [get_bd_intf_pins axi_interconnect_0/M13_AXI]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins ARESETN] [get_bd_pins axi_interconnect_0/ARESETN]
  connect_bd_net -net CLKIN_1 [get_bd_pins CLKIN] [get_bd_pins SYSCLK300_ctr/CLKIN]
  connect_bd_net -net CLK_125MHZ_FREQ_CNT_O [get_bd_pins CLK_125MHZ_ctr/FREQ_CNT_O] [get_bd_pins CLK_125MHZ_gpio/gpio_io_i]
  connect_bd_net -net CPU_RESET_1 [get_bd_pins RST_I] [get_bd_pins CLK_125MHZ_ctr/RST_I] [get_bd_pins EMCCLK_ctr/RST_I] [get_bd_pins FMC_HPC_CLK0_ctr/RST_I] [get_bd_pins FMC_HPC_CLK1_ctr/RST_I] [get_bd_pins FMC_HPC_GBTCLK0_ctr/RST_I] [get_bd_pins FMC_HPC_GBTCLK1_ctr/RST_I] [get_bd_pins FMC_LPC_CLK0_ctr/RST_I] [get_bd_pins FMC_LPC_CLK1_ctr/RST_I] [get_bd_pins FMC_LPC_GBTCLK0_ctr2/RST_I] [get_bd_pins MGT_SI570_CLOCK_ctr/RST_I] [get_bd_pins SI5328_OUT_ctr/RST_I] [get_bd_pins SMA_MGT_REFCLK_ctr1/RST_I] [get_bd_pins SYSCLK300_ctr/RST_I] [get_bd_pins USER_SI570_CLOCK_ctr/RST_I] [get_bd_pins clk_wiz_0/reset]
  connect_bd_net -net DIFF_CLKIN_N_1 [get_bd_pins CLK_125MHZ_N] [get_bd_pins CLK_125MHZ_ctr/DIFF_CLKIN_N]
  connect_bd_net -net DIFF_CLKIN_N_2 [get_bd_pins USER_SI570_CLOCK_N] [get_bd_pins USER_SI570_CLOCK_ctr/DIFF_CLKIN_N]
  connect_bd_net -net DIFF_CLKIN_N_3 [get_bd_pins FMC_HPC_CLK0_N] [get_bd_pins FMC_HPC_CLK0_ctr/DIFF_CLKIN_N]
  connect_bd_net -net DIFF_CLKIN_N_4 [get_bd_pins FMC_HPC_CLK1_N] [get_bd_pins FMC_HPC_CLK1_ctr/DIFF_CLKIN_N]
  connect_bd_net -net DIFF_CLKIN_N_5 [get_bd_pins FMC_LPC_CLK0_N] [get_bd_pins FMC_LPC_CLK0_ctr/DIFF_CLKIN_N]
  connect_bd_net -net DIFF_CLKIN_N_6 [get_bd_pins FMC_LPC_CLK1_N] [get_bd_pins FMC_LPC_CLK1_ctr/DIFF_CLKIN_N]
  connect_bd_net -net DIFF_CLKIN_P_1 [get_bd_pins CLK_125MHZ_P] [get_bd_pins CLK_125MHZ_ctr/DIFF_CLKIN_P]
  connect_bd_net -net DIFF_CLKIN_P_2 [get_bd_pins USER_SI570_CLOCK_P] [get_bd_pins USER_SI570_CLOCK_ctr/DIFF_CLKIN_P]
  connect_bd_net -net DIFF_CLKIN_P_3 [get_bd_pins FMC_HPC_CLK0_P] [get_bd_pins FMC_HPC_CLK0_ctr/DIFF_CLKIN_P]
  connect_bd_net -net DIFF_CLKIN_P_4 [get_bd_pins FMC_HPC_CLK1_P] [get_bd_pins FMC_HPC_CLK1_ctr/DIFF_CLKIN_P]
  connect_bd_net -net DIFF_CLKIN_P_5 [get_bd_pins FMC_LPC_CLK0_P] [get_bd_pins FMC_LPC_CLK0_ctr/DIFF_CLKIN_P]
  connect_bd_net -net DIFF_CLKIN_P_6 [get_bd_pins FMC_LPC_CLK1_P] [get_bd_pins FMC_LPC_CLK1_ctr/DIFF_CLKIN_P]
  connect_bd_net -net DIFF_MGTE3_N_2 [get_bd_pins FMC_LPC_GBTCLK0_N] [get_bd_pins FMC_LPC_GBTCLK0_ctr2/DIFF_MGTE3_N]
  connect_bd_net -net DIFF_MGTE3_N_3 [get_bd_pins FMC_HPC_GBTCLK0_N] [get_bd_pins FMC_HPC_GBTCLK0_ctr/DIFF_MGTE3_N]
  connect_bd_net -net DIFF_MGTE3_N_4 [get_bd_pins FMC_HPC_GBTCLK1_N] [get_bd_pins FMC_HPC_GBTCLK1_ctr/DIFF_MGTE3_N]
  connect_bd_net -net DIFF_MGTE3_N_5 [get_bd_pins SMA_MGT_REFCLK_N] [get_bd_pins SMA_MGT_REFCLK_ctr1/DIFF_MGTE3_N]
  connect_bd_net -net DIFF_MGTE3_N_6 [get_bd_pins MGT_SI570_CLOCK_N] [get_bd_pins MGT_SI570_CLOCK_ctr/DIFF_MGTE3_N]
  connect_bd_net -net DIFF_MGTE3_N_7 [get_bd_pins SI5328_OUT_N] [get_bd_pins SI5328_OUT_ctr/DIFF_MGTE3_N]
  connect_bd_net -net DIFF_MGTE3_P_2 [get_bd_pins FMC_LPC_GBTCLK0_P] [get_bd_pins FMC_LPC_GBTCLK0_ctr2/DIFF_MGTE3_P]
  connect_bd_net -net DIFF_MGTE3_P_3 [get_bd_pins FMC_HPC_GBTCLK0_P] [get_bd_pins FMC_HPC_GBTCLK0_ctr/DIFF_MGTE3_P]
  connect_bd_net -net DIFF_MGTE3_P_4 [get_bd_pins FMC_HPC_GBTCLK1_P] [get_bd_pins FMC_HPC_GBTCLK1_ctr/DIFF_MGTE3_P]
  connect_bd_net -net DIFF_MGTE3_P_5 [get_bd_pins SMA_MGT_REFCLK_P] [get_bd_pins SMA_MGT_REFCLK_ctr1/DIFF_MGTE3_P]
  connect_bd_net -net DIFF_MGTE3_P_6 [get_bd_pins MGT_SI570_CLOCK_P] [get_bd_pins MGT_SI570_CLOCK_ctr/DIFF_MGTE3_P]
  connect_bd_net -net DIFF_MGTE3_P_7 [get_bd_pins SI5328_OUT_P] [get_bd_pins SI5328_OUT_ctr/DIFF_MGTE3_P]
  connect_bd_net -net EMCCLK_1 [get_bd_pins EMCCLK] [get_bd_pins EMCCLK_ctr/CLKIN]
  connect_bd_net -net EMCCLK_ctr_FREQ_CNT_O [get_bd_pins EMCCLK_ctr/FREQ_CNT_O] [get_bd_pins EMCCLK_gpio/gpio_io_i]
  connect_bd_net -net FMC_HPC_CLK0_ctr_FREQ_CNT_O [get_bd_pins FMC_HPC_CLK0_ctr/FREQ_CNT_O] [get_bd_pins FMC_HPC_CLK0_gpio/gpio_io_i]
  connect_bd_net -net FMC_HPC_CLK1_ctr_FREQ_CNT_O [get_bd_pins FMC_HPC_CLK1_ctr/FREQ_CNT_O] [get_bd_pins FMC_HPC_CLK1_gpio/gpio_io_i]
  connect_bd_net -net FMC_HPC_GBTCLK0_ctr_FREQ_CNT_O [get_bd_pins FMC_HPC_GBTCLK0_ctr/FREQ_CNT_O] [get_bd_pins FMC_HPC_GBTCLK0_gpio/gpio_io_i]
  connect_bd_net -net FMC_HPC_GBTCLK1_ctr_FREQ_CNT_O [get_bd_pins FMC_HPC_GBTCLK1_ctr/FREQ_CNT_O] [get_bd_pins FMC_HPC_GBTCLK1_gpio/gpio_io_i]
  connect_bd_net -net FMC_LPC_CLK0_ctr_FREQ_CNT_O [get_bd_pins FMC_LPC_CLK0_ctr/FREQ_CNT_O] [get_bd_pins FMC_LPC_CLK0_gpio/gpio_io_i]
  connect_bd_net -net FMC_LPC_CLK1_ctr_FREQ_CNT_O [get_bd_pins FMC_LPC_CLK1_ctr/FREQ_CNT_O] [get_bd_pins FMC_LPC_CLK1_gpio/gpio_io_i]
  connect_bd_net -net FMC_LPC_GBTCLK0_ctr2_FREQ_CNT_O [get_bd_pins FMC_LPC_GBTCLK0_ctr2/FREQ_CNT_O] [get_bd_pins FMC_LPC_GBTCLK0_gpio/gpio_io_i]
  connect_bd_net -net MGT_SI570_CLOCK_ctr_FREQ_CNT_O [get_bd_pins MGT_SI570_CLOCK_ctr/FREQ_CNT_O] [get_bd_pins MGT_SI570_CLOCK_gpio/gpio_io_i]
  connect_bd_net -net SI5328_OUT_ctr_FREQ_CNT_O [get_bd_pins SI5328_OUT_ctr/FREQ_CNT_O] [get_bd_pins SI5328_OUT_gpio/gpio_io_i]
  connect_bd_net -net SMA_MGT_REFCLK_ctr1_FREQ_CNT_O [get_bd_pins SMA_MGT_REFCLK_ctr1/FREQ_CNT_O] [get_bd_pins SMA_MGT_REFCLK_gpio/gpio_io_i]
  connect_bd_net -net SYSCLK300_FREQ_CNT_O [get_bd_pins SYSCLK300_ctr/FREQ_CNT_O] [get_bd_pins SYSCLK300_gpio/gpio_io_i]
  connect_bd_net -net USER_SI570_CLOCK_ctr_FREQ_CNT_O [get_bd_pins USER_SI570_CLOCK_ctr/FREQ_CNT_O] [get_bd_pins USER_SI570_CLOCK_gpio/gpio_io_i]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins REC_CLOCK_OUT/OBUF_IN] [get_bd_pins USER_SMA_CLOCK_OUT/OBUF_IN] [get_bd_pins clk_wiz_0/clk_out1]
  connect_bd_net -net clk_wiz_0_clk_out2 [get_bd_pins REF_CLK_I] [get_bd_pins CLK_125MHZ_ctr/REF_CLK_I] [get_bd_pins EMCCLK_ctr/REF_CLK_I] [get_bd_pins FMC_HPC_CLK0_ctr/REF_CLK_I] [get_bd_pins FMC_HPC_CLK1_ctr/REF_CLK_I] [get_bd_pins FMC_HPC_GBTCLK0_ctr/REF_CLK_I] [get_bd_pins FMC_HPC_GBTCLK1_ctr/REF_CLK_I] [get_bd_pins FMC_LPC_CLK0_ctr/REF_CLK_I] [get_bd_pins FMC_LPC_CLK1_ctr/REF_CLK_I] [get_bd_pins FMC_LPC_GBTCLK0_ctr2/REF_CLK_I] [get_bd_pins MGT_SI570_CLOCK_ctr/REF_CLK_I] [get_bd_pins SI5328_OUT_ctr/REF_CLK_I] [get_bd_pins SMA_MGT_REFCLK_ctr1/REF_CLK_I] [get_bd_pins SYSCLK300_ctr/REF_CLK_I] [get_bd_pins USER_SI570_CLOCK_ctr/REF_CLK_I] [get_bd_pins clk_wiz_0/clk_in1]
  connect_bd_net -net s_axi_aclk_1 [get_bd_pins s_axi_aclk] [get_bd_pins CLK_125MHZ_gpio/s_axi_aclk] [get_bd_pins EMCCLK_gpio/s_axi_aclk] [get_bd_pins FMC_HPC_CLK0_gpio/s_axi_aclk] [get_bd_pins FMC_HPC_CLK1_gpio/s_axi_aclk] [get_bd_pins FMC_HPC_GBTCLK0_gpio/s_axi_aclk] [get_bd_pins FMC_HPC_GBTCLK1_gpio/s_axi_aclk] [get_bd_pins FMC_LPC_CLK0_gpio/s_axi_aclk] [get_bd_pins FMC_LPC_CLK1_gpio/s_axi_aclk] [get_bd_pins FMC_LPC_GBTCLK0_gpio/s_axi_aclk] [get_bd_pins MGT_SI570_CLOCK_gpio/s_axi_aclk] [get_bd_pins SI5328_OUT_gpio/s_axi_aclk] [get_bd_pins SMA_MGT_REFCLK_gpio/s_axi_aclk] [get_bd_pins SYSCLK300_gpio/s_axi_aclk] [get_bd_pins USER_SI570_CLOCK_gpio/s_axi_aclk] [get_bd_pins axi_interconnect_0/ACLK] [get_bd_pins axi_interconnect_0/M00_ACLK] [get_bd_pins axi_interconnect_0/M01_ACLK] [get_bd_pins axi_interconnect_0/M02_ACLK] [get_bd_pins axi_interconnect_0/M03_ACLK] [get_bd_pins axi_interconnect_0/M04_ACLK] [get_bd_pins axi_interconnect_0/M05_ACLK] [get_bd_pins axi_interconnect_0/M06_ACLK] [get_bd_pins axi_interconnect_0/M07_ACLK] [get_bd_pins axi_interconnect_0/M08_ACLK] [get_bd_pins axi_interconnect_0/M09_ACLK] [get_bd_pins axi_interconnect_0/M10_ACLK] [get_bd_pins axi_interconnect_0/M11_ACLK] [get_bd_pins axi_interconnect_0/M12_ACLK] [get_bd_pins axi_interconnect_0/M13_ACLK] [get_bd_pins axi_interconnect_0/S00_ACLK]
  connect_bd_net -net s_axi_aresetn_1 [get_bd_pins s_axi_aresetn] [get_bd_pins CLK_125MHZ_gpio/s_axi_aresetn] [get_bd_pins EMCCLK_gpio/s_axi_aresetn] [get_bd_pins FMC_HPC_CLK0_gpio/s_axi_aresetn] [get_bd_pins FMC_HPC_CLK1_gpio/s_axi_aresetn] [get_bd_pins FMC_HPC_GBTCLK0_gpio/s_axi_aresetn] [get_bd_pins FMC_HPC_GBTCLK1_gpio/s_axi_aresetn] [get_bd_pins FMC_LPC_CLK0_gpio/s_axi_aresetn] [get_bd_pins FMC_LPC_CLK1_gpio/s_axi_aresetn] [get_bd_pins FMC_LPC_GBTCLK0_gpio/s_axi_aresetn] [get_bd_pins MGT_SI570_CLOCK_gpio/s_axi_aresetn] [get_bd_pins SI5328_OUT_gpio/s_axi_aresetn] [get_bd_pins SMA_MGT_REFCLK_gpio/s_axi_aresetn] [get_bd_pins SYSCLK300_gpio/s_axi_aresetn] [get_bd_pins USER_SI570_CLOCK_gpio/s_axi_aresetn] [get_bd_pins axi_interconnect_0/M00_ARESETN] [get_bd_pins axi_interconnect_0/M01_ARESETN] [get_bd_pins axi_interconnect_0/M02_ARESETN] [get_bd_pins axi_interconnect_0/M03_ARESETN] [get_bd_pins axi_interconnect_0/M04_ARESETN] [get_bd_pins axi_interconnect_0/M05_ARESETN] [get_bd_pins axi_interconnect_0/M06_ARESETN] [get_bd_pins axi_interconnect_0/M07_ARESETN] [get_bd_pins axi_interconnect_0/M08_ARESETN] [get_bd_pins axi_interconnect_0/M09_ARESETN] [get_bd_pins axi_interconnect_0/M10_ARESETN] [get_bd_pins axi_interconnect_0/M11_ARESETN] [get_bd_pins axi_interconnect_0/M12_ARESETN] [get_bd_pins axi_interconnect_0/M13_ARESETN] [get_bd_pins axi_interconnect_0/S00_ARESETN]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_N [get_bd_pins REC_CLOCK_N] [get_bd_pins REC_CLOCK_OUT/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_0_OBUF_DS_P [get_bd_pins REC_CLOCK_P] [get_bd_pins REC_CLOCK_OUT/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_N [get_bd_pins USER_SMA_CLOCK_N] [get_bd_pins USER_SMA_CLOCK_OUT/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_P [get_bd_pins USER_SMA_CLOCK_P] [get_bd_pins USER_SMA_CLOCK_OUT/OBUF_DS_P]

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
  set PMOD_IN [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PMOD_IN ]
  set PMOD_OUT [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 PMOD_OUT ]
  set SI570_CLK_SEL [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SI570_CLK_SEL ]
  set USER_SMA_GPIO_IN [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 USER_SMA_GPIO_IN ]
  set USER_SMA_GPIO_OUT [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 USER_SMA_GPIO_OUT ]
  set Vaux0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux0 ]
  set Vaux2 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux2 ]
  set Vaux8 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vaux8 ]
  set Vp_Vn [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_analog_io_rtl:1.0 Vp_Vn ]
  set ddr4_sdram [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:ddr4_rtl:1.0 ddr4_sdram ]
  set default_sysclk_300 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_sysclk_300 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $default_sysclk_300
  set dip_switches_4bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 dip_switches_4bits ]
  set iic_main [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:iic_rtl:1.0 iic_main ]
  set led_8bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 led_8bits ]
  set mdio_mdc [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:mdio_rtl:1.0 mdio_mdc ]
  set pci_express_x8 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:pcie_7x_mgt_rtl:1.0 pci_express_x8 ]
  set pcie_refclk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 pcie_refclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {100000000} \
   ] $pcie_refclk
  set push_buttons_5bits [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 push_buttons_5bits ]
  set qspi1 [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:spi_rtl:1.0 qspi1 ]
  set rotary_switch [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 rotary_switch ]
  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]
  set sgmii_lvds [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:sgmii_rtl:1.0 sgmii_lvds ]
  set sgmii_phyclk [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sgmii_phyclk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {625000000} \
   ] $sgmii_phyclk
  set vid_io_out [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:vid_io_rtl:1.0 vid_io_out ]

  # Create ports
  set CLK_125MHZ_N [ create_bd_port -dir I CLK_125MHZ_N ]
  set CLK_125MHZ_P [ create_bd_port -dir I CLK_125MHZ_P ]
  set EMCCLK [ create_bd_port -dir I EMCCLK ]
  set FMC_HPC_CLK0_N [ create_bd_port -dir I FMC_HPC_CLK0_N ]
  set FMC_HPC_CLK0_P [ create_bd_port -dir I FMC_HPC_CLK0_P ]
  set FMC_HPC_CLK1_N [ create_bd_port -dir I FMC_HPC_CLK1_N ]
  set FMC_HPC_CLK1_P [ create_bd_port -dir I FMC_HPC_CLK1_P ]
  set FMC_HPC_GBTCLK0_N [ create_bd_port -dir I FMC_HPC_GBTCLK0_N ]
  set FMC_HPC_GBTCLK0_P [ create_bd_port -dir I FMC_HPC_GBTCLK0_P ]
  set FMC_HPC_GBTCLK1_N [ create_bd_port -dir I FMC_HPC_GBTCLK1_N ]
  set FMC_HPC_GBTCLK1_P [ create_bd_port -dir I FMC_HPC_GBTCLK1_P ]
  set FMC_LPC_CLK0_N [ create_bd_port -dir I FMC_LPC_CLK0_N ]
  set FMC_LPC_CLK0_P [ create_bd_port -dir I FMC_LPC_CLK0_P ]
  set FMC_LPC_CLK1_N [ create_bd_port -dir I FMC_LPC_CLK1_N ]
  set FMC_LPC_CLK1_P [ create_bd_port -dir I FMC_LPC_CLK1_P ]
  set FMC_LPC_GBTCLK0_N [ create_bd_port -dir I FMC_LPC_GBTCLK0_N ]
  set FMC_LPC_GBTCLK0_P [ create_bd_port -dir I FMC_LPC_GBTCLK0_P ]
  set GPIO_DIFF_IN_HPC_LA_N [ create_bd_port -dir I -from 16 -to 0 GPIO_DIFF_IN_HPC_LA_N ]
  set GPIO_DIFF_IN_HPC_LA_P [ create_bd_port -dir I -from 16 -to 0 GPIO_DIFF_IN_HPC_LA_P ]
  set GPIO_DIFF_IN_LPC_LA_N [ create_bd_port -dir I -from 16 -to 0 GPIO_DIFF_IN_LPC_LA_N ]
  set GPIO_DIFF_IN_LPC_LA_P [ create_bd_port -dir I -from 16 -to 0 GPIO_DIFF_IN_LPC_LA_P ]
  set GPIO_DIFF_OUT_HPC_LA_N [ create_bd_port -dir O -from 16 -to 0 GPIO_DIFF_OUT_HPC_LA_N ]
  set GPIO_DIFF_OUT_HPC_LA_P [ create_bd_port -dir O -from 16 -to 0 GPIO_DIFF_OUT_HPC_LA_P ]
  set GPIO_DIFF_OUT_LPC_LA_N [ create_bd_port -dir O -from 16 -to 0 GPIO_DIFF_OUT_LPC_LA_N ]
  set GPIO_DIFF_OUT_LPC_LA_P [ create_bd_port -dir O -from 16 -to 0 GPIO_DIFF_OUT_LPC_LA_P ]
  set MGT_SI570_CLOCK_N [ create_bd_port -dir I MGT_SI570_CLOCK_N ]
  set MGT_SI570_CLOCK_P [ create_bd_port -dir I MGT_SI570_CLOCK_P ]
  set REC_CLOCK_N [ create_bd_port -dir O -from 0 -to 0 REC_CLOCK_N ]
  set REC_CLOCK_P [ create_bd_port -dir O -from 0 -to 0 REC_CLOCK_P ]
  set SI5328_OUT_N [ create_bd_port -dir I SI5328_OUT_N ]
  set SI5328_OUT_P [ create_bd_port -dir I SI5328_OUT_P ]
  set SMA_MGT_REFCLK_N [ create_bd_port -dir I SMA_MGT_REFCLK_N ]
  set SMA_MGT_REFCLK_P [ create_bd_port -dir I SMA_MGT_REFCLK_P ]
  set USER_SI570_CLOCK_N [ create_bd_port -dir I USER_SI570_CLOCK_N ]
  set USER_SI570_CLOCK_P [ create_bd_port -dir I USER_SI570_CLOCK_P ]
  set USER_SMA_CLOCK_N [ create_bd_port -dir O -from 0 -to 0 USER_SMA_CLOCK_N ]
  set USER_SMA_CLOCK_P [ create_bd_port -dir O -from 0 -to 0 USER_SMA_CLOCK_P ]
  set i2c_sclk [ create_bd_port -dir IO i2c_sclk ]
  set i2c_sda [ create_bd_port -dir IO i2c_sda ]
  set iic_mux_reset_b [ create_bd_port -dir O -from 1 -to 0 iic_mux_reset_b ]
  set pcie_perstn [ create_bd_port -dir I -type rst pcie_perstn ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $pcie_perstn
  set phy_reset_out [ create_bd_port -dir O -from 0 -to 0 -type rst phy_reset_out ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset
  set vid_clk_148_5MHz_out [ create_bd_port -dir O vid_clk_148_5MHz_out ]

  # Create instance: CLOCK_COUNTER
  create_hier_cell_CLOCK_COUNTER [current_bd_instance .] CLOCK_COUNTER

  # Create instance: GPIO_IN_HPC_LA_BUS, and set properties
  set GPIO_IN_HPC_LA_BUS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 GPIO_IN_HPC_LA_BUS ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {17} \
   CONFIG.C_IS_DUAL {0} \
 ] $GPIO_IN_HPC_LA_BUS

  # Create instance: GPIO_IN_LPC_LA_BUS, and set properties
  set GPIO_IN_LPC_LA_BUS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 GPIO_IN_LPC_LA_BUS ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {17} \
   CONFIG.C_IS_DUAL {0} \
 ] $GPIO_IN_LPC_LA_BUS

  # Create instance: GPIO_OUT_HPC_LA_BUS, and set properties
  set GPIO_OUT_HPC_LA_BUS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 GPIO_OUT_HPC_LA_BUS ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {17} \
   CONFIG.C_IS_DUAL {0} \
 ] $GPIO_OUT_HPC_LA_BUS

  # Create instance: GPIO_OUT_LPC_LA_BUS, and set properties
  set GPIO_OUT_LPC_LA_BUS [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 GPIO_OUT_LPC_LA_BUS ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {17} \
   CONFIG.C_IS_DUAL {0} \
 ] $GPIO_OUT_LPC_LA_BUS

  # Create instance: PMOD_IN, and set properties
  set PMOD_IN [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 PMOD_IN ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $PMOD_IN

  # Create instance: PMOD_OUT, and set properties
  set PMOD_OUT [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 PMOD_OUT ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
 ] $PMOD_OUT

  # Create instance: SI570_CLK_SEL1, and set properties
  set SI570_CLK_SEL1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 SI570_CLK_SEL1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $SI570_CLK_SEL1

  # Create instance: USER_SMA_GPIO_IN1, and set properties
  set USER_SMA_GPIO_IN1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 USER_SMA_GPIO_IN1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $USER_SMA_GPIO_IN1

  # Create instance: USER_SMA_GPIO_OUT1, and set properties
  set USER_SMA_GPIO_OUT1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 USER_SMA_GPIO_OUT1 ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {1} \
 ] $USER_SMA_GPIO_OUT1

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.0 axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.C_SELECT_XPM {0} \
 ] $axi_bram_ctrl_0

  # Create instance: axi_bram_ctrl_0_bram, and set properties
  set axi_bram_ctrl_0_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 axi_bram_ctrl_0_bram ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $axi_bram_ctrl_0_bram

  # Create instance: axi_ethernet_0, and set properties
  set axi_ethernet_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_ethernet:7.1 axi_ethernet_0 ]
  set_property -dict [ list \
   CONFIG.DIFFCLK_BOARD_INTERFACE {sgmii_phyclk} \
   CONFIG.ENABLE_LVDS {true} \
   CONFIG.ETHERNET_BOARD_INTERFACE {sgmii_lvds} \
   CONFIG.MDIO_BOARD_INTERFACE {mdio_mdc} \
   CONFIG.PHYRST_BOARD_INTERFACE {phy_reset_out} \
   CONFIG.PHY_TYPE {SGMII} \
   CONFIG.lvdsclkrate {625} \
 ] $axi_ethernet_0

  # Create instance: axi_ethernet_0_dma, and set properties
  set axi_ethernet_0_dma [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_dma:7.1 axi_ethernet_0_dma ]
  set_property -dict [ list \
   CONFIG.c_include_mm2s_dre {1} \
   CONFIG.c_include_s2mm_dre {1} \
   CONFIG.c_sg_length_width {16} \
   CONFIG.c_sg_use_stsapp_length {1} \
 ] $axi_ethernet_0_dma

  # Create instance: axi_iic_0, and set properties
  set axi_iic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_iic:2.0 axi_iic_0 ]
  set_property -dict [ list \
   CONFIG.C_DEFAULT_VALUE {0xFF} \
   CONFIG.C_GPO_WIDTH {2} \
   CONFIG.C_SCL_INERTIAL_DELAY {50} \
   CONFIG.C_SDA_INERTIAL_DELAY {50} \
   CONFIG.IIC_BOARD_INTERFACE {iic_main} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_iic_0

  # Create instance: axi_mem_intercon, and set properties
  set axi_mem_intercon [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 axi_mem_intercon ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {7} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $axi_mem_intercon

  # Create instance: axi_quad_spi_0, and set properties
  set axi_quad_spi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_quad_spi:3.2 axi_quad_spi_0 ]
  set_property -dict [ list \
   CONFIG.C_SCK_RATIO {2} \
   CONFIG.C_SPI_MEMORY {2} \
   CONFIG.C_SPI_MODE {2} \
 ] $axi_quad_spi_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uart16550_0, and set properties
  set axi_uart16550_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uart16550:2.0 axi_uart16550_0 ]
  set_property -dict [ list \
   CONFIG.UART_BOARD_INTERFACE {rs232_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uart16550_0

  # Create instance: colorbar_tpg_hier_0
  create_hier_cell_colorbar_tpg_hier_0 [current_bd_instance .] colorbar_tpg_hier_0

  # Create instance: ddr4_0, and set properties
  set ddr4_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ddr4:2.2 ddr4_0 ]
  set_property -dict [ list \
   CONFIG.ADDN_UI_CLKOUT1_FREQ_HZ {100} \
   CONFIG.C0.BANK_GROUP_WIDTH {1} \
   CONFIG.C0.DDR4_AxiAddressWidth {31} \
   CONFIG.C0.DDR4_AxiDataWidth {512} \
   CONFIG.C0.DDR4_CLKFBOUT_MULT {4} \
   CONFIG.C0.DDR4_DataWidth {64} \
   CONFIG.C0.DDR4_InputClockPeriod {3332} \
   CONFIG.C0.DDR4_MemoryPart {EDY4016AABG-DR-F} \
   CONFIG.C0_CLOCK_BOARD_INTERFACE {default_sysclk_300} \
   CONFIG.C0_DDR4_BOARD_INTERFACE {ddr4_sdram} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
 ] $ddr4_0

  # Create instance: dip_switches_4bits, and set properties
  set dip_switches_4bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 dip_switches_4bits ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {4} \
   CONFIG.GPIO_BOARD_INTERFACE {dip_switches_4bits} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $dip_switches_4bits

  # Create instance: led_8bits, and set properties
  set led_8bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 led_8bits ]
  set_property -dict [ list \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.C_GPIO_WIDTH {8} \
   CONFIG.GPIO_BOARD_INTERFACE {led_8bits} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $led_8bits

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]
  set_property -dict [ list \
   CONFIG.C_USE_UART {1} \
 ] $mdm_1

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_ADDR_TAG_BITS {18} \
   CONFIG.C_CACHE_BYTE_SIZE {8192} \
   CONFIG.C_DCACHE_ADDR_TAG {18} \
   CONFIG.C_DCACHE_BYTE_SIZE {8192} \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
   CONFIG.C_USE_DCACHE {1} \
   CONFIG.C_USE_ICACHE {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {24} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory [current_bd_instance .] microblaze_0_local_memory

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]
  set_property -dict [ list \
   CONFIG.NUM_PORTS {9} \
 ] $microblaze_0_xlconcat

  # Create instance: push_buttons_5bits, and set properties
  set push_buttons_5bits [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 push_buttons_5bits ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {5} \
   CONFIG.GPIO_BOARD_INTERFACE {push_buttons_5bits} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $push_buttons_5bits

  # Create instance: rotary_switch, and set properties
  set rotary_switch [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 rotary_switch ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {3} \
   CONFIG.GPIO_BOARD_INTERFACE {rotary_switch} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rotary_switch

  # Create instance: rst_ddr4_0_100M, and set properties
  set rst_ddr4_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_100M ]

  # Create instance: rst_ddr4_0_300M, and set properties
  set rst_ddr4_0_300M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_ddr4_0_300M ]

  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: system_management_wiz_0, and set properties
  set system_management_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:system_management_wiz:1.3 system_management_wiz_0 ]
  set_property -dict [ list \
   CONFIG.ADC_OFFSET_CALIBRATION {false} \
   CONFIG.ANALOG_BANK_SELECTION {66} \
   CONFIG.CHANNEL_ENABLE_VAUXP0_VAUXN0 {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP2_VAUXN2 {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP8_VAUXN8 {true} \
   CONFIG.CHANNEL_ENABLE_VUSER0 {true} \
   CONFIG.CHANNEL_ENABLE_VUSER1 {true} \
   CONFIG.CHANNEL_ENABLE_VUSER2 {true} \
   CONFIG.CHANNEL_ENABLE_VUSER3 {true} \
   CONFIG.COMMON_N_SOURCE {Vaux8} \
   CONFIG.ENABLE_I2C {true} \
   CONFIG.ENABLE_RESET {false} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.USER_SUPPLY0_ALARM {false} \
   CONFIG.USER_SUPPLY0_BANK {44} \
   CONFIG.USER_SUPPLY1_BANK {48} \
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
 ] $system_management_wiz_0

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDSGTE} \
   CONFIG.DIFF_CLK_IN_BOARD_INTERFACE {pcie_refclk} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $util_ds_buf_0

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
   CONFIG.C_SIZE {17} \
 ] $util_ds_buf_1

  # Create instance: util_ds_buf_2, and set properties
  set util_ds_buf_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_2 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {17} \
 ] $util_ds_buf_2

  # Create instance: util_ds_buf_3, and set properties
  set util_ds_buf_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_3 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
   CONFIG.C_SIZE {17} \
 ] $util_ds_buf_3

  # Create instance: util_ds_buf_4, and set properties
  set util_ds_buf_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_4 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {IBUFDS} \
   CONFIG.C_SIZE {17} \
 ] $util_ds_buf_4

  # Create instance: xdma_0, and set properties
  set xdma_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xdma:4.0 xdma_0 ]
  set_property -dict [ list \
   CONFIG.PCIE_BOARD_INTERFACE {pci_express_x8} \
   CONFIG.SYS_RST_N_BOARD_INTERFACE {pcie_perstn} \
   CONFIG.axi_data_width {256_bit} \
   CONFIG.axilite_master_en {true} \
   CONFIG.axisten_freq {250} \
   CONFIG.barlite2 {0} \
   CONFIG.coreclk_freq {500} \
   CONFIG.en_ext_ch_gt_drp {false} \
   CONFIG.pf0_device_id {8038} \
   CONFIG.pf0_msix_cap_pba_bir {BAR_1} \
   CONFIG.pf0_msix_cap_table_bir {BAR_1} \
   CONFIG.pl_link_cap_max_link_speed {8.0_GT/s} \
   CONFIG.pl_link_cap_max_link_width {X8} \
   CONFIG.plltype {QPLL1} \
 ] $xdma_0

  # Create interface connections
  connect_bd_intf_net -intf_net PMOD_IN_GPIO [get_bd_intf_ports PMOD_IN] [get_bd_intf_pins PMOD_IN/GPIO]
  connect_bd_intf_net -intf_net PMOD_OUT_GPIO [get_bd_intf_ports PMOD_OUT] [get_bd_intf_pins PMOD_OUT/GPIO]
  connect_bd_intf_net -intf_net S00_AXI_1 [get_bd_intf_pins CLOCK_COUNTER/S00_AXI] [get_bd_intf_pins smartconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net SI570_CLK_SEL1_GPIO [get_bd_intf_ports SI570_CLK_SEL] [get_bd_intf_pins SI570_CLK_SEL1/GPIO]
  connect_bd_intf_net -intf_net USER_SMA_GPIO_IN_GPIO [get_bd_intf_ports USER_SMA_GPIO_IN] [get_bd_intf_pins USER_SMA_GPIO_IN1/GPIO]
  connect_bd_intf_net -intf_net USER_SMA_GPIO_OUT_GPIO [get_bd_intf_ports USER_SMA_GPIO_OUT] [get_bd_intf_pins USER_SMA_GPIO_OUT1/GPIO]
  connect_bd_intf_net -intf_net Vaux0_1 [get_bd_intf_ports Vaux0] [get_bd_intf_pins system_management_wiz_0/Vaux0]
  connect_bd_intf_net -intf_net Vaux2_1 [get_bd_intf_ports Vaux2] [get_bd_intf_pins system_management_wiz_0/Vaux2]
  connect_bd_intf_net -intf_net Vaux8_1 [get_bd_intf_ports Vaux8] [get_bd_intf_pins system_management_wiz_0/Vaux8]
  connect_bd_intf_net -intf_net Vp_Vn_1 [get_bd_intf_ports Vp_Vn] [get_bd_intf_pins system_management_wiz_0/Vp_Vn]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTB [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTB] [get_bd_intf_pins axi_bram_ctrl_0_bram/BRAM_PORTB]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXIS_CNTRL [get_bd_intf_pins axi_ethernet_0/s_axis_txc] [get_bd_intf_pins axi_ethernet_0_dma/M_AXIS_CNTRL]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXIS_MM2S [get_bd_intf_pins axi_ethernet_0/s_axis_txd] [get_bd_intf_pins axi_ethernet_0_dma/M_AXIS_MM2S]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXI_MM2S [get_bd_intf_pins axi_ethernet_0_dma/M_AXI_MM2S] [get_bd_intf_pins axi_mem_intercon/S03_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXI_S2MM [get_bd_intf_pins axi_ethernet_0_dma/M_AXI_S2MM] [get_bd_intf_pins axi_mem_intercon/S04_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_0_dma_M_AXI_SG [get_bd_intf_pins axi_ethernet_0_dma/M_AXI_SG] [get_bd_intf_pins axi_mem_intercon/S02_AXI]
  connect_bd_intf_net -intf_net axi_ethernet_0_m_axis_rxd [get_bd_intf_pins axi_ethernet_0/m_axis_rxd] [get_bd_intf_pins axi_ethernet_0_dma/S_AXIS_S2MM]
  connect_bd_intf_net -intf_net axi_ethernet_0_m_axis_rxs [get_bd_intf_pins axi_ethernet_0/m_axis_rxs] [get_bd_intf_pins axi_ethernet_0_dma/S_AXIS_STS]
  connect_bd_intf_net -intf_net axi_ethernet_0_mdio [get_bd_intf_ports mdio_mdc] [get_bd_intf_pins axi_ethernet_0/mdio]
  connect_bd_intf_net -intf_net axi_ethernet_0_sgmii [get_bd_intf_ports sgmii_lvds] [get_bd_intf_pins axi_ethernet_0/sgmii]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO [get_bd_intf_ports dip_switches_4bits] [get_bd_intf_pins dip_switches_4bits/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO1 [get_bd_intf_ports led_8bits] [get_bd_intf_pins led_8bits/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports push_buttons_5bits] [get_bd_intf_pins push_buttons_5bits/GPIO]
  connect_bd_intf_net -intf_net axi_gpio_1_GPIO [get_bd_intf_ports rotary_switch] [get_bd_intf_pins rotary_switch/GPIO]
  connect_bd_intf_net -intf_net axi_iic_0_IIC [get_bd_intf_ports iic_main] [get_bd_intf_pins axi_iic_0/IIC]
  connect_bd_intf_net -intf_net axi_mem_intercon_M00_AXI [get_bd_intf_pins axi_bram_ctrl_0/S_AXI] [get_bd_intf_pins axi_mem_intercon/M00_AXI]
  connect_bd_intf_net -intf_net axi_mem_intercon_M01_AXI [get_bd_intf_pins axi_mem_intercon/M01_AXI] [get_bd_intf_pins ddr4_0/C0_DDR4_S_AXI]
  connect_bd_intf_net -intf_net axi_quad_spi_0_SPI_0 [get_bd_intf_ports qspi1] [get_bd_intf_pins axi_quad_spi_0/SPI_0]
  connect_bd_intf_net -intf_net axi_uart16550_0_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins axi_uart16550_0/UART]
  connect_bd_intf_net -intf_net colorbar_tpg_hier_0_vid_io_out [get_bd_intf_ports vid_io_out] [get_bd_intf_pins colorbar_tpg_hier_0/vid_io_out]
  connect_bd_intf_net -intf_net ddr4_0_C0_DDR4 [get_bd_intf_ports ddr4_sdram] [get_bd_intf_pins ddr4_0/C0_DDR4]
  connect_bd_intf_net -intf_net default_sysclk_300_1 [get_bd_intf_ports default_sysclk_300] [get_bd_intf_pins ddr4_0/C0_SYS_CLK]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DC [get_bd_intf_pins axi_mem_intercon/S00_AXI] [get_bd_intf_pins microblaze_0/M_AXI_DC]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_DP [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins smartconnect_0/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_M_AXI_IC [get_bd_intf_pins axi_mem_intercon/S01_AXI] [get_bd_intf_pins microblaze_0/M_AXI_IC]
  connect_bd_intf_net -intf_net microblaze_0_axi_intc_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins GPIO_IN_HPC_LA_BUS/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins GPIO_IN_LPC_LA_BUS/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M03_AXI [get_bd_intf_pins GPIO_OUT_HPC_LA_BUS/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M04_AXI [get_bd_intf_pins GPIO_OUT_LPC_LA_BUS/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M04_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M05_AXI [get_bd_intf_pins axi_iic_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M05_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M06_AXI [get_bd_intf_pins axi_quad_spi_0/AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M06_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M07_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M07_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M08_AXI [get_bd_intf_pins axi_uart16550_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M08_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M09_AXI [get_bd_intf_pins axi_ethernet_0/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M09_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M10_AXI [get_bd_intf_pins axi_ethernet_0_dma/S_AXI_LITE] [get_bd_intf_pins microblaze_0_axi_periph/M10_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M11_AXI [get_bd_intf_pins mdm_1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M11_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M12_AXI [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M12_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M13_AXI [get_bd_intf_pins SI570_CLK_SEL1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M13_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M14_AXI [get_bd_intf_pins USER_SMA_GPIO_OUT1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M14_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M15_AXI [get_bd_intf_pins USER_SMA_GPIO_IN1/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M15_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M16_AXI [get_bd_intf_pins PMOD_OUT/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M16_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M17_AXI [get_bd_intf_pins PMOD_IN/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M17_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M18_AXI [get_bd_intf_pins microblaze_0_axi_periph/M18_AXI] [get_bd_intf_pins system_management_wiz_0/S_AXI_LITE]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M19_AXI [get_bd_intf_pins dip_switches_4bits/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M19_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M20_AXI [get_bd_intf_pins microblaze_0_axi_periph/M20_AXI] [get_bd_intf_pins rotary_switch/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M21_AXI [get_bd_intf_pins microblaze_0_axi_periph/M21_AXI] [get_bd_intf_pins push_buttons_5bits/S_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M22_AXI [get_bd_intf_pins led_8bits/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M22_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M23_AXI [get_bd_intf_pins colorbar_tpg_hier_0/s_axi_CTRL] [get_bd_intf_pins microblaze_0_axi_periph/M23_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net pcie_refclk_1 [get_bd_intf_ports pcie_refclk] [get_bd_intf_pins util_ds_buf_0/CLK_IN_D]
  connect_bd_intf_net -intf_net sgmii_phyclk_1 [get_bd_intf_ports sgmii_phyclk] [get_bd_intf_pins axi_ethernet_0/lvds_clk]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net xdma_0_M_AXI [get_bd_intf_pins axi_mem_intercon/S05_AXI] [get_bd_intf_pins xdma_0/M_AXI]
  connect_bd_intf_net -intf_net xdma_0_M_AXI_LITE [get_bd_intf_pins axi_mem_intercon/S06_AXI] [get_bd_intf_pins xdma_0/M_AXI_LITE]
  connect_bd_intf_net -intf_net xdma_0_pcie_mgt [get_bd_intf_ports pci_express_x8] [get_bd_intf_pins xdma_0/pcie_mgt]

  # Create port connections
  connect_bd_net -net CLOCK_COUNTER_OBUF_DS_N [get_bd_ports REC_CLOCK_N] [get_bd_pins CLOCK_COUNTER/REC_CLOCK_N]
  connect_bd_net -net CLOCK_COUNTER_OBUF_DS_N1 [get_bd_ports USER_SMA_CLOCK_N] [get_bd_pins CLOCK_COUNTER/USER_SMA_CLOCK_N]
  connect_bd_net -net CLOCK_COUNTER_OBUF_DS_P [get_bd_ports REC_CLOCK_P] [get_bd_pins CLOCK_COUNTER/REC_CLOCK_P]
  connect_bd_net -net CLOCK_COUNTER_OBUF_DS_P1 [get_bd_ports USER_SMA_CLOCK_P] [get_bd_pins CLOCK_COUNTER/USER_SMA_CLOCK_P]
  connect_bd_net -net DIFF_CLKIN_N_1 [get_bd_ports CLK_125MHZ_N] [get_bd_pins CLOCK_COUNTER/CLK_125MHZ_N]
  connect_bd_net -net DIFF_CLKIN_N_1_1 [get_bd_ports FMC_LPC_CLK0_N] [get_bd_pins CLOCK_COUNTER/FMC_LPC_CLK0_N]
  connect_bd_net -net DIFF_CLKIN_N_2 [get_bd_ports USER_SI570_CLOCK_N] [get_bd_pins CLOCK_COUNTER/USER_SI570_CLOCK_N]
  connect_bd_net -net DIFF_CLKIN_N_2_1 [get_bd_ports FMC_LPC_CLK1_N] [get_bd_pins CLOCK_COUNTER/FMC_LPC_CLK1_N]
  connect_bd_net -net DIFF_CLKIN_N_3 [get_bd_ports FMC_HPC_CLK0_N] [get_bd_pins CLOCK_COUNTER/FMC_HPC_CLK0_N]
  connect_bd_net -net DIFF_CLKIN_N_4 [get_bd_ports FMC_HPC_CLK1_N] [get_bd_pins CLOCK_COUNTER/FMC_HPC_CLK1_N]
  connect_bd_net -net DIFF_CLKIN_P_1 [get_bd_ports CLK_125MHZ_P] [get_bd_pins CLOCK_COUNTER/CLK_125MHZ_P]
  connect_bd_net -net DIFF_CLKIN_P_1_1 [get_bd_ports FMC_LPC_CLK0_P] [get_bd_pins CLOCK_COUNTER/FMC_LPC_CLK0_P]
  connect_bd_net -net DIFF_CLKIN_P_2 [get_bd_ports USER_SI570_CLOCK_P] [get_bd_pins CLOCK_COUNTER/USER_SI570_CLOCK_P]
  connect_bd_net -net DIFF_CLKIN_P_2_1 [get_bd_ports FMC_LPC_CLK1_P] [get_bd_pins CLOCK_COUNTER/FMC_LPC_CLK1_P]
  connect_bd_net -net DIFF_CLKIN_P_3 [get_bd_ports FMC_HPC_CLK0_P] [get_bd_pins CLOCK_COUNTER/FMC_HPC_CLK0_P]
  connect_bd_net -net DIFF_CLKIN_P_4 [get_bd_ports FMC_HPC_CLK1_P] [get_bd_pins CLOCK_COUNTER/FMC_HPC_CLK1_P]
  connect_bd_net -net DIFF_MGTE3_N_2 [get_bd_ports FMC_HPC_GBTCLK0_N] [get_bd_pins CLOCK_COUNTER/FMC_HPC_GBTCLK0_N]
  connect_bd_net -net DIFF_MGTE3_N_3 [get_bd_ports FMC_HPC_GBTCLK1_N] [get_bd_pins CLOCK_COUNTER/FMC_HPC_GBTCLK1_N]
  connect_bd_net -net DIFF_MGTE3_N_4 [get_bd_ports FMC_LPC_GBTCLK0_N] [get_bd_pins CLOCK_COUNTER/FMC_LPC_GBTCLK0_N]
  connect_bd_net -net DIFF_MGTE3_N_5 [get_bd_ports MGT_SI570_CLOCK_N] [get_bd_pins CLOCK_COUNTER/MGT_SI570_CLOCK_N]
  connect_bd_net -net DIFF_MGTE3_N_6 [get_bd_ports SI5328_OUT_N] [get_bd_pins CLOCK_COUNTER/SI5328_OUT_N]
  connect_bd_net -net DIFF_MGTE3_N_7 [get_bd_ports SMA_MGT_REFCLK_N] [get_bd_pins CLOCK_COUNTER/SMA_MGT_REFCLK_N]
  connect_bd_net -net DIFF_MGTE3_P_2 [get_bd_ports FMC_HPC_GBTCLK0_P] [get_bd_pins CLOCK_COUNTER/FMC_HPC_GBTCLK0_P]
  connect_bd_net -net DIFF_MGTE3_P_3 [get_bd_ports FMC_HPC_GBTCLK1_P] [get_bd_pins CLOCK_COUNTER/FMC_HPC_GBTCLK1_P]
  connect_bd_net -net DIFF_MGTE3_P_4 [get_bd_ports FMC_LPC_GBTCLK0_P] [get_bd_pins CLOCK_COUNTER/FMC_LPC_GBTCLK0_P]
  connect_bd_net -net DIFF_MGTE3_P_5 [get_bd_ports MGT_SI570_CLOCK_P] [get_bd_pins CLOCK_COUNTER/MGT_SI570_CLOCK_P]
  connect_bd_net -net DIFF_MGTE3_P_6 [get_bd_ports SI5328_OUT_P] [get_bd_pins CLOCK_COUNTER/SI5328_OUT_P]
  connect_bd_net -net DIFF_MGTE3_P_7 [get_bd_ports SMA_MGT_REFCLK_P] [get_bd_pins CLOCK_COUNTER/SMA_MGT_REFCLK_P]
  connect_bd_net -net EMCCLK_1 [get_bd_ports EMCCLK] [get_bd_pins CLOCK_COUNTER/EMCCLK]
  connect_bd_net -net GPIO_OUT_HPC_LA_BUS1_gpio_io_o [get_bd_pins GPIO_OUT_LPC_LA_BUS/gpio_io_o] [get_bd_pins util_ds_buf_3/OBUF_IN]
  connect_bd_net -net GPIO_OUT_HPC_LA_BUS_gpio_io_o [get_bd_pins GPIO_OUT_HPC_LA_BUS/gpio_io_o] [get_bd_pins util_ds_buf_1/OBUF_IN]
  connect_bd_net -net IBUF_DS_N_1 [get_bd_ports GPIO_DIFF_IN_LPC_LA_N] [get_bd_pins util_ds_buf_2/IBUF_DS_N]
  connect_bd_net -net IBUF_DS_N_2 [get_bd_ports GPIO_DIFF_IN_HPC_LA_N] [get_bd_pins util_ds_buf_4/IBUF_DS_N]
  connect_bd_net -net IBUF_DS_P_1 [get_bd_ports GPIO_DIFF_IN_HPC_LA_P] [get_bd_pins util_ds_buf_4/IBUF_DS_P]
  connect_bd_net -net IBUF_DS_P_1_1 [get_bd_ports GPIO_DIFF_IN_LPC_LA_P] [get_bd_pins util_ds_buf_2/IBUF_DS_P]
  connect_bd_net -net M23_ACLK_1 [get_bd_pins colorbar_tpg_hier_0/clk_out1] [get_bd_pins microblaze_0_axi_periph/M23_ACLK]
  connect_bd_net -net M23_ARESETN_1 [get_bd_pins colorbar_tpg_hier_0/interconnect_aresetn] [get_bd_pins microblaze_0_axi_periph/M23_ARESETN]
  connect_bd_net -net Net [get_bd_ports i2c_sda] [get_bd_pins system_management_wiz_0/i2c_sda]
  connect_bd_net -net Net1 [get_bd_ports i2c_sclk] [get_bd_pins system_management_wiz_0/i2c_sclk]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_cntrl_reset_out_n [get_bd_pins axi_ethernet_0/axi_txc_arstn] [get_bd_pins axi_ethernet_0_dma/mm2s_cntrl_reset_out_n]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_introut [get_bd_pins axi_ethernet_0_dma/mm2s_introut] [get_bd_pins microblaze_0_xlconcat/In5]
  connect_bd_net -net axi_ethernet_0_dma_mm2s_prmry_reset_out_n [get_bd_pins axi_ethernet_0/axi_txd_arstn] [get_bd_pins axi_ethernet_0_dma/mm2s_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_introut [get_bd_pins axi_ethernet_0_dma/s2mm_introut] [get_bd_pins microblaze_0_xlconcat/In6]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_prmry_reset_out_n [get_bd_pins axi_ethernet_0/axi_rxd_arstn] [get_bd_pins axi_ethernet_0_dma/s2mm_prmry_reset_out_n]
  connect_bd_net -net axi_ethernet_0_dma_s2mm_sts_reset_out_n [get_bd_pins axi_ethernet_0/axi_rxs_arstn] [get_bd_pins axi_ethernet_0_dma/s2mm_sts_reset_out_n]
  connect_bd_net -net axi_ethernet_0_interrupt [get_bd_pins axi_ethernet_0/interrupt] [get_bd_pins microblaze_0_xlconcat/In4]
  connect_bd_net -net axi_ethernet_0_phy_rst_n [get_bd_ports phy_reset_out] [get_bd_pins axi_ethernet_0/phy_rst_n]
  connect_bd_net -net axi_iic_0_gpo [get_bd_ports iic_mux_reset_b] [get_bd_pins axi_iic_0/gpo]
  connect_bd_net -net axi_iic_0_iic2intc_irpt [get_bd_pins axi_iic_0/iic2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net axi_quad_spi_0_ip2intc_irpt [get_bd_pins axi_quad_spi_0/ip2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In1]
  connect_bd_net -net axi_timer_0_interrupt [get_bd_pins axi_timer_0/interrupt] [get_bd_pins microblaze_0_xlconcat/In3]
  connect_bd_net -net axi_uart16550_0_ip2intc_irpt [get_bd_pins axi_uart16550_0/ip2intc_irpt] [get_bd_pins microblaze_0_xlconcat/In2]
  connect_bd_net -net colorbar_tpg_hier_0_Q [get_bd_ports vid_clk_148_5MHz_out] [get_bd_pins colorbar_tpg_hier_0/vid_clk_148_5MHz_out]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk [get_bd_pins axi_mem_intercon/M01_ACLK] [get_bd_pins ddr4_0/c0_ddr4_ui_clk] [get_bd_pins rst_ddr4_0_300M/slowest_sync_clk]
  connect_bd_net -net ddr4_0_c0_ddr4_ui_clk_sync_rst [get_bd_pins ddr4_0/c0_ddr4_ui_clk_sync_rst] [get_bd_pins rst_ddr4_0_100M/ext_reset_in] [get_bd_pins rst_ddr4_0_300M/ext_reset_in]
  connect_bd_net -net mdm_1_Interrupt [get_bd_pins mdm_1/Interrupt] [get_bd_pins microblaze_0_xlconcat/In7]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_ddr4_0_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins CLOCK_COUNTER/CLKIN] [get_bd_pins CLOCK_COUNTER/REF_CLK_I] [get_bd_pins CLOCK_COUNTER/s_axi_aclk] [get_bd_pins GPIO_IN_HPC_LA_BUS/s_axi_aclk] [get_bd_pins GPIO_IN_LPC_LA_BUS/s_axi_aclk] [get_bd_pins GPIO_OUT_HPC_LA_BUS/s_axi_aclk] [get_bd_pins GPIO_OUT_LPC_LA_BUS/s_axi_aclk] [get_bd_pins PMOD_IN/s_axi_aclk] [get_bd_pins PMOD_OUT/s_axi_aclk] [get_bd_pins SI570_CLK_SEL1/s_axi_aclk] [get_bd_pins USER_SMA_GPIO_IN1/s_axi_aclk] [get_bd_pins USER_SMA_GPIO_OUT1/s_axi_aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axi_ethernet_0/axis_clk] [get_bd_pins axi_ethernet_0/s_axi_lite_clk] [get_bd_pins axi_ethernet_0_dma/m_axi_mm2s_aclk] [get_bd_pins axi_ethernet_0_dma/m_axi_s2mm_aclk] [get_bd_pins axi_ethernet_0_dma/m_axi_sg_aclk] [get_bd_pins axi_ethernet_0_dma/s_axi_lite_aclk] [get_bd_pins axi_iic_0/s_axi_aclk] [get_bd_pins axi_mem_intercon/ACLK] [get_bd_pins axi_mem_intercon/M00_ACLK] [get_bd_pins axi_mem_intercon/S00_ACLK] [get_bd_pins axi_mem_intercon/S01_ACLK] [get_bd_pins axi_mem_intercon/S02_ACLK] [get_bd_pins axi_mem_intercon/S03_ACLK] [get_bd_pins axi_mem_intercon/S04_ACLK] [get_bd_pins axi_quad_spi_0/ext_spi_clk] [get_bd_pins axi_quad_spi_0/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uart16550_0/s_axi_aclk] [get_bd_pins colorbar_tpg_hier_0/clk_in1] [get_bd_pins ddr4_0/addn_ui_clkout1] [get_bd_pins dip_switches_4bits/s_axi_aclk] [get_bd_pins led_8bits/s_axi_aclk] [get_bd_pins mdm_1/S_AXI_ACLK] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/M05_ACLK] [get_bd_pins microblaze_0_axi_periph/M06_ACLK] [get_bd_pins microblaze_0_axi_periph/M07_ACLK] [get_bd_pins microblaze_0_axi_periph/M08_ACLK] [get_bd_pins microblaze_0_axi_periph/M09_ACLK] [get_bd_pins microblaze_0_axi_periph/M10_ACLK] [get_bd_pins microblaze_0_axi_periph/M11_ACLK] [get_bd_pins microblaze_0_axi_periph/M12_ACLK] [get_bd_pins microblaze_0_axi_periph/M13_ACLK] [get_bd_pins microblaze_0_axi_periph/M14_ACLK] [get_bd_pins microblaze_0_axi_periph/M15_ACLK] [get_bd_pins microblaze_0_axi_periph/M16_ACLK] [get_bd_pins microblaze_0_axi_periph/M17_ACLK] [get_bd_pins microblaze_0_axi_periph/M18_ACLK] [get_bd_pins microblaze_0_axi_periph/M19_ACLK] [get_bd_pins microblaze_0_axi_periph/M20_ACLK] [get_bd_pins microblaze_0_axi_periph/M21_ACLK] [get_bd_pins microblaze_0_axi_periph/M22_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins push_buttons_5bits/s_axi_aclk] [get_bd_pins rotary_switch/s_axi_aclk] [get_bd_pins rst_ddr4_0_100M/slowest_sync_clk] [get_bd_pins smartconnect_0/aclk] [get_bd_pins system_management_wiz_0/s_axi_aclk]
  connect_bd_net -net microblaze_0_intr [get_bd_pins microblaze_0_axi_intc/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net pcie_perstn_1 [get_bd_ports pcie_perstn] [get_bd_pins xdma_0/sys_rst_n]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins ddr4_0/sys_rst]
  connect_bd_net -net rst_ddr4_0_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_ddr4_0_100M/bus_struct_reset]
  connect_bd_net -net rst_ddr4_0_100M_interconnect_aresetn [get_bd_pins axi_mem_intercon/ARESETN] [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_ddr4_0_100M/interconnect_aresetn]
  connect_bd_net -net rst_ddr4_0_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_ddr4_0_100M/mb_reset]
  connect_bd_net -net rst_ddr4_0_100M_peripheral_aresetn [get_bd_pins CLOCK_COUNTER/ARESETN] [get_bd_pins CLOCK_COUNTER/s_axi_aresetn] [get_bd_pins GPIO_IN_HPC_LA_BUS/s_axi_aresetn] [get_bd_pins GPIO_IN_LPC_LA_BUS/s_axi_aresetn] [get_bd_pins GPIO_OUT_HPC_LA_BUS/s_axi_aresetn] [get_bd_pins GPIO_OUT_LPC_LA_BUS/s_axi_aresetn] [get_bd_pins PMOD_IN/s_axi_aresetn] [get_bd_pins PMOD_OUT/s_axi_aresetn] [get_bd_pins SI570_CLK_SEL1/s_axi_aresetn] [get_bd_pins USER_SMA_GPIO_IN1/s_axi_aresetn] [get_bd_pins USER_SMA_GPIO_OUT1/s_axi_aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axi_ethernet_0/s_axi_lite_resetn] [get_bd_pins axi_ethernet_0_dma/axi_resetn] [get_bd_pins axi_iic_0/s_axi_aresetn] [get_bd_pins axi_mem_intercon/M00_ARESETN] [get_bd_pins axi_mem_intercon/S00_ARESETN] [get_bd_pins axi_mem_intercon/S01_ARESETN] [get_bd_pins axi_mem_intercon/S02_ARESETN] [get_bd_pins axi_mem_intercon/S03_ARESETN] [get_bd_pins axi_mem_intercon/S04_ARESETN] [get_bd_pins axi_quad_spi_0/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uart16550_0/s_axi_aresetn] [get_bd_pins dip_switches_4bits/s_axi_aresetn] [get_bd_pins led_8bits/s_axi_aresetn] [get_bd_pins mdm_1/S_AXI_ARESETN] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/M05_ARESETN] [get_bd_pins microblaze_0_axi_periph/M06_ARESETN] [get_bd_pins microblaze_0_axi_periph/M07_ARESETN] [get_bd_pins microblaze_0_axi_periph/M08_ARESETN] [get_bd_pins microblaze_0_axi_periph/M09_ARESETN] [get_bd_pins microblaze_0_axi_periph/M10_ARESETN] [get_bd_pins microblaze_0_axi_periph/M11_ARESETN] [get_bd_pins microblaze_0_axi_periph/M12_ARESETN] [get_bd_pins microblaze_0_axi_periph/M13_ARESETN] [get_bd_pins microblaze_0_axi_periph/M14_ARESETN] [get_bd_pins microblaze_0_axi_periph/M15_ARESETN] [get_bd_pins microblaze_0_axi_periph/M16_ARESETN] [get_bd_pins microblaze_0_axi_periph/M17_ARESETN] [get_bd_pins microblaze_0_axi_periph/M18_ARESETN] [get_bd_pins microblaze_0_axi_periph/M19_ARESETN] [get_bd_pins microblaze_0_axi_periph/M20_ARESETN] [get_bd_pins microblaze_0_axi_periph/M21_ARESETN] [get_bd_pins microblaze_0_axi_periph/M22_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins push_buttons_5bits/s_axi_aresetn] [get_bd_pins rotary_switch/s_axi_aresetn] [get_bd_pins rst_ddr4_0_100M/peripheral_aresetn] [get_bd_pins smartconnect_0/aresetn] [get_bd_pins system_management_wiz_0/s_axi_aresetn]
  connect_bd_net -net rst_ddr4_0_100M_peripheral_reset [get_bd_pins CLOCK_COUNTER/RST_I] [get_bd_pins colorbar_tpg_hier_0/reset] [get_bd_pins rst_ddr4_0_100M/peripheral_reset]
  connect_bd_net -net rst_ddr4_0_300M_peripheral_aresetn [get_bd_pins axi_mem_intercon/M01_ARESETN] [get_bd_pins ddr4_0/c0_ddr4_aresetn] [get_bd_pins rst_ddr4_0_300M/peripheral_aresetn]
  connect_bd_net -net system_management_wiz_0_ip2intc_irpt [get_bd_pins microblaze_0_xlconcat/In8] [get_bd_pins system_management_wiz_0/ip2intc_irpt]
  connect_bd_net -net util_ds_buf_0_IBUF_DS_ODIV2 [get_bd_pins util_ds_buf_0/IBUF_DS_ODIV2] [get_bd_pins xdma_0/sys_clk]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins util_ds_buf_0/IBUF_OUT] [get_bd_pins xdma_0/sys_clk_gt]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_N [get_bd_ports GPIO_DIFF_OUT_HPC_LA_N] [get_bd_pins util_ds_buf_1/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_P [get_bd_ports GPIO_DIFF_OUT_HPC_LA_P] [get_bd_pins util_ds_buf_1/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_2_IBUF_OUT [get_bd_pins GPIO_IN_LPC_LA_BUS/gpio_io_i] [get_bd_pins util_ds_buf_2/IBUF_OUT]
  connect_bd_net -net util_ds_buf_3_OBUF_DS_N [get_bd_ports GPIO_DIFF_OUT_LPC_LA_N] [get_bd_pins util_ds_buf_3/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_3_OBUF_DS_P [get_bd_ports GPIO_DIFF_OUT_LPC_LA_P] [get_bd_pins util_ds_buf_3/OBUF_DS_P]
  connect_bd_net -net util_ds_buf_4_IBUF_OUT [get_bd_pins GPIO_IN_HPC_LA_BUS/gpio_io_i] [get_bd_pins util_ds_buf_4/IBUF_OUT]
  connect_bd_net -net xdma_0_axi_aclk [get_bd_pins axi_mem_intercon/S05_ACLK] [get_bd_pins axi_mem_intercon/S06_ACLK] [get_bd_pins xdma_0/axi_aclk]
  connect_bd_net -net xdma_0_axi_aresetn [get_bd_pins axi_mem_intercon/S05_ARESETN] [get_bd_pins axi_mem_intercon/S06_ARESETN] [get_bd_pins xdma_0/axi_aresetn]

  # Create address segments
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces axi_ethernet_0_dma/Data_SG] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces axi_ethernet_0_dma/Data_MM2S] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces axi_ethernet_0_dma/Data_S2MM] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ethernet_0_dma/Data_SG] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ethernet_0_dma/Data_MM2S] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces axi_ethernet_0_dma/Data_S2MM] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x40090000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/CLK_125MHZ_gpio/S_AXI/Reg] SEG_CLK_125MHZ_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400A0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/EMCCLK_gpio/S_AXI/Reg] SEG_EMCCLK_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400B0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/FMC_HPC_CLK0_gpio/S_AXI/Reg] SEG_FMC_HPC_CLK0_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400C0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/FMC_HPC_CLK1_gpio/S_AXI/Reg] SEG_FMC_HPC_CLK1_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400D0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/FMC_HPC_GBTCLK0_gpio/S_AXI/Reg] SEG_FMC_HPC_GBTCLK0_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400E0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/FMC_HPC_GBTCLK1_gpio/S_AXI/Reg] SEG_FMC_HPC_GBTCLK1_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x400F0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/FMC_LPC_CLK0_gpio/S_AXI/Reg] SEG_FMC_LPC_CLK0_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40100000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/FMC_LPC_CLK1_gpio/S_AXI/Reg] SEG_FMC_LPC_CLK1_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40110000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/FMC_LPC_GBTCLK0_gpio/S_AXI/Reg] SEG_FMC_LPC_GBTCLK0_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs GPIO_IN_HPC_LA_BUS/S_AXI/Reg] SEG_GPIO_IN_HPC_LA_BUS_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40010000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs GPIO_IN_LPC_LA_BUS/S_AXI/Reg] SEG_GPIO_IN_LPC_LA_BUS_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40020000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs GPIO_OUT_HPC_LA_BUS/S_AXI/Reg] SEG_GPIO_OUT_HPC_LA_BUS_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40030000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs GPIO_OUT_LPC_LA_BUS/S_AXI/Reg] SEG_GPIO_OUT_LPC_LA_BUS_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40120000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/MGT_SI570_CLOCK_gpio/S_AXI/Reg] SEG_MGT_SI570_CLOCK_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40080000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs PMOD_IN/S_AXI/Reg] SEG_PMOD_IN_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40070000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs PMOD_OUT/S_AXI/Reg] SEG_PMOD_OUT_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40130000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/SI5328_OUT_gpio/S_AXI/Reg] SEG_SI5328_OUT_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40040000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs SI570_CLK_SEL1/S_AXI/Reg] SEG_SI570_CLK_SEL1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40140000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/SMA_MGT_REFCLK_gpio/S_AXI/Reg] SEG_SMA_MGT_REFCLK_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40150000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/SYSCLK300_gpio/S_AXI/Reg] SEG_SYSCLK300_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40160000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs CLOCK_COUNTER/USER_SI570_CLOCK_gpio/S_AXI/Reg] SEG_USER_SI570_CLOCK_gpio_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40060000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs USER_SMA_GPIO_IN1/S_AXI/Reg] SEG_USER_SMA_GPIO_IN1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40050000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs USER_SMA_GPIO_OUT1/S_AXI/Reg] SEG_USER_SMA_GPIO_OUT1_Reg
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00040000 -offset 0x40C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_ethernet_0/s_axi/Reg0] SEG_axi_ethernet_0_Reg0
  create_bd_addr_seg -range 0x00010000 -offset 0x41E00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_ethernet_0_dma/S_AXI_LITE/Reg] SEG_axi_ethernet_0_dma_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40800000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_iic_0/S_AXI/Reg] SEG_axi_iic_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_quad_spi_0/AXI_LITE/Reg] SEG_axi_quad_spi_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A10000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs axi_uart16550_0/S_AXI/Reg] SEG_axi_uart16550_0_Reg
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x00010000 -offset 0x40170000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs dip_switches_4bits/S_AXI/Reg] SEG_dip_switches_4bits_Reg
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00020000 -offset 0x00000000 [get_bd_addr_spaces microblaze_0/Instruction] [get_bd_addr_segs microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x40180000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs led_8bits/S_AXI/Reg] SEG_led_8bits_Reg
  create_bd_addr_seg -range 0x00001000 -offset 0x41400000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs mdm_1/S_AXI/Reg] SEG_mdm_1_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40190000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs push_buttons_5bits/S_AXI/Reg] SEG_push_buttons_5bits_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x401A0000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs rotary_switch/S_AXI/Reg] SEG_rotary_switch_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A20000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs system_management_wiz_0/S_AXI_LITE/Reg] SEG_system_management_wiz_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x44A30000 [get_bd_addr_spaces microblaze_0/Data] [get_bd_addr_segs colorbar_tpg_hier_0/v_tpg_0/s_axi_CTRL/Reg] SEG_v_tpg_0_Reg
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces xdma_0/M_AXI] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x00100000 -offset 0xC0000000 [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] SEG_axi_bram_ctrl_0_Mem0
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces xdma_0/M_AXI] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK
  create_bd_addr_seg -range 0x40000000 -offset 0x80000000 [get_bd_addr_spaces xdma_0/M_AXI_LITE] [get_bd_addr_segs ddr4_0/C0_DDR4_MEMORY_MAP/C0_DDR4_ADDRESS_BLOCK] SEG_ddr4_0_C0_DDR4_ADDRESS_BLOCK


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


