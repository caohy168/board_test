<?xml version="1.0" encoding="UTF-8"?>
<spirit:design xmlns:xilinx="http://www.xilinx.com" xmlns:spirit="http://www.spiritconsortium.org/XMLSchema/SPIRIT/1685-2009" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <spirit:vendor>xilinx.com</spirit:vendor>
  <spirit:library>ipcache</spirit:library>
  <spirit:name>7bfc9ab3dbf36444</spirit:name>
  <spirit:version>0</spirit:version>
  <spirit:componentInstances>
    <spirit:componentInstance>
      <spirit:instanceName>mac_phy_lmb_bram_0</spirit:instanceName>
      <spirit:componentRef spirit:vendor="xilinx.com" spirit:library="ip" spirit:name="blk_mem_gen" spirit:version="8.4"/>
      <spirit:configurableElementValues>
        <spirit:configurableElementValue spirit:referenceId="BUSIFPARAM_VALUE.CLK.ACLK.FREQ_HZ">100000000</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.AXI_ID_Width">4</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.AXI_Slave_Type">Memory_Slave</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.AXI_Type">AXI4_Full</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Additional_Inputs_for_Power_Estimation">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Algorithm">Minimum_Area</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Assume_Synchronous_Clk">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Byte_Size">8</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.CTRL_ECC_ALGO">NONE</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Coe_File">no_coe_file_loaded</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Collision_Warnings">ALL</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Component_Name">mac_phy_lmb_bram_0</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Disable_Collision_Warnings">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Disable_Out_of_Range_Warnings">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.ECC">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.EN_DEEPSLEEP_PIN">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.EN_ECC_PIPE">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.EN_SAFETY_CKT">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.EN_SHUTDOWN_PIN">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.EN_SLEEP_PIN">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Enable_32bit_Address">true</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Enable_A">Use_ENA_Pin</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Enable_B">Use_ENB_Pin</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Error_Injection_Type">Single_Bit_Error_Injection</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Fill_Remaining_Memory_Locations">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Interface_Type">Native</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Load_Init_File">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.MEM_FILE">mac_phy_lmb_bram_0.mem</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Memory_Type">True_Dual_Port_RAM</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Operating_Mode_A">WRITE_FIRST</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Operating_Mode_B">WRITE_FIRST</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Output_Reset_Value_A">0</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Output_Reset_Value_B">0</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.PRIM_type_to_Implement">BRAM</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Pipeline_Stages">0</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Port_A_Clock">100</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Port_A_Enable_Rate">100</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Port_A_Write_Rate">50</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Port_B_Clock">100</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Port_B_Enable_Rate">100</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Port_B_Write_Rate">50</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Primitive">8kx2</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.RD_ADDR_CHNG_A">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.RD_ADDR_CHNG_B">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.READ_LATENCY_A">1</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.READ_LATENCY_B">1</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Read_Width_A">32</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Read_Width_B">32</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Register_PortA_Output_of_Memory_Core">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Register_PortA_Output_of_Memory_Primitives">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Register_PortB_Output_of_Memory_Core">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Register_PortB_Output_of_Memory_Primitives">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Remaining_Memory_Locations">0</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Reset_Memory_Latch_A">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Reset_Memory_Latch_B">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Reset_Priority_A">CE</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Reset_Priority_B">CE</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Reset_Type">SYNC</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Use_AXI_ID">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Use_Byte_Write_Enable">true</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Use_Error_Injection_Pins">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Use_REGCEA_Pin">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Use_REGCEB_Pin">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Use_RSTA_Pin">true</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Use_RSTB_Pin">true</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Write_Depth_A">32768</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Write_Width_A">32</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.Write_Width_B">32</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.ecctype">No_ECC</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.register_porta_input_of_softecc">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.register_portb_output_of_softecc">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.softecc">false</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PARAM_VALUE.use_bram_block">BRAM_Controller</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.ARCHITECTURE">kintexu</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.DEVICE">xcku040</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.PACKAGE">ffva1156</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.PREFHDL">VERILOG</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.SILICON_REVISION"/>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.SPEEDGRADE">-2</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.STATIC_POWER"/>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.TEMPERATURE_GRADE">E</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.USE_RDI_CUSTOMIZATION">TRUE</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="PROJECT_PARAM.USE_RDI_GENERATION">TRUE</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.IPCACHEID">7bfc9ab3dbf36444</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.IPCACHESYNTHCRC">eefd2f8b</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.IPCACHESYNTHRUNTIME">101</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.IPCONTEXT">IP_Unknown</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.IPREVISION">4</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.MANAGED">TRUE</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.OUTPUTDIR">.</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.SELECTEDSIMMODEL"/>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.SHAREDDIR">.</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.SWVERSION">2019.2</spirit:configurableElementValue>
        <spirit:configurableElementValue spirit:referenceId="RUNTIME_PARAM.SYNTHESISFLOW">GLOBAL</spirit:configurableElementValue>
      </spirit:configurableElementValues>
    </spirit:componentInstance>
  </spirit:componentInstances>
</spirit:design>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     // Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov 14 18:15:08 2019
// Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mac_phy_ten_gig_eth_mac_ch1_0_stub.v
// Design      : mac_phy_ten_gig_eth_mac_ch1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ten_gig_eth_mac_v15_1_7,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(tx_clk0, reset, tx_axis_aresetn, tx_axis_tdata, 
  tx_axis_tkeep, tx_axis_tvalid, tx_axis_tlast, tx_axis_tuser, tx_ifg_delay, tx_axis_tready, 
  tx_statistics_vector, tx_statistics_valid, pause_val, pause_req, rx_axis_aresetn, 
  rx_axis_tdata, rx_axis_tkeep, rx_axis_tvalid, rx_axis_tuser, rx_axis_tlast, 
  rx_statistics_vector, rx_statistics_valid, s_axi_aclk, s_axi_aresetn, s_axi_awaddr, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wvalid, s_axi_wready, s_axi_bresp, 
  s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, 
  s_axi_rresp, s_axi_rvalid, s_axi_rready, xgmacint, mdc, mdio_in, mdio_out, mdio_tri, 
  tx_dcm_locked, xgmii_txd, xgmii_txc, rx_clk0, rx_dcm_locked, xgmii_rxd, xgmii_rxc)
/* synthesis syn_black_box black_box_pad_pin="tx_clk0,reset,tx_axis_aresetn,tx_axis_tdata[63:0],tx_axis_tkeep[7:0],tx_axis_tvalid,tx_axis_tlast,tx_axis_tuser,tx_ifg_delay[7:0],tx_axis_tready,tx_statistics_vector[25:0],tx_statistics_valid,pause_val[15:0],pause_req,rx_axis_aresetn,rx_axis_tdata[63:0],rx_axis_tkeep[7:0],rx_axis_tvalid,rx_axis_tuser,rx_axis_tlast,rx_statistics_vector[29:0],rx_statistics_valid,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[10:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[10:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,xgmacint,mdc,mdio_in,mdio_out,mdio_tri,tx_dcm_locked,xgmii_txd[63:0],xgmii_txc[7:0],rx_clk0,rx_dcm_locked,xgmii_rxd[63:0],xgmii_rxc[7:0]" */;
  input tx_clk0;
  input reset;
  input tx_axis_aresetn;
  input [63:0]tx_axis_tdata;
  input [7:0]tx_axis_tkeep;
  input tx_axis_tvalid;
  input tx_axis_tlast;
  input tx_axis_tuser;
  input [7:0]tx_ifg_delay;
  output tx_axis_tready;
  output [25:0]tx_statistics_vector;
  output tx_statistics_valid;
  input [15:0]pause_val;
  input pause_req;
  input rx_axis_aresetn;
  output [63:0]rx_axis_tdata;
  output [7:0]rx_axis_tkeep;
  output rx_axis_tvalid;
  output rx_axis_tuser;
  output rx_axis_tlast;
  output [29:0]rx_statistics_vector;
  output rx_statistics_valid;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [10:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output xgmacint;
  output mdc;
  input mdio_in;
  output mdio_out;
  output mdio_tri;
  input tx_dcm_locked;
  output [63:0]xgmii_txd;
  output [7:0]xgmii_txc;
  input rx_clk0;
  input rx_dcm_locked;
  input [63:0]xgmii_rxd;
  input [7:0]xgmii_rxc;
endmodule
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          -- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Thu Nov 14 18:15:08 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mac_phy_ten_gig_eth_mac_ch1_0_stub.vhdl
-- Design      : mac_phy_ten_gig_eth_mac_ch1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    tx_clk0 : in STD_LOGIC;
    reset : in STD_LOGIC;
    tx_axis_aresetn : in STD_LOGIC;
    tx_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    tx_axis_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tvalid : in STD_LOGIC;
    tx_axis_tlast : in STD_LOGIC;
    tx_axis_tuser : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    tx_axis_tready : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    tx_statistics_valid : out STD_LOGIC;
    pause_val : in STD_LOGIC_VECTOR ( 15 downto 0 );
    pause_req : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    rx_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rx_axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_axis_tvalid : out STD_LOGIC;
    rx_axis_tuser : out STD_LOGIC;
    rx_axis_tlast : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 10 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    xgmacint : out STD_LOGIC;
    mdc : out STD_LOGIC;
    mdio_in : in STD_LOGIC;
    mdio_out : out STD_LOGIC;
    mdio_tri : out STD_LOGIC;
    tx_dcm_locked : in STD_LOGIC;
    xgmii_txd : out STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_txc : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_clk0 : in STD_LOGIC;
    rx_dcm_locked : in STD_LOGIC;
    xgmii_rxd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    xgmii_rxc : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tx_clk0,reset,tx_axis_aresetn,tx_axis_tdata[63:0],tx_axis_tkeep[7:0],tx_axis_tvalid,tx_axis_tlast,tx_axis_tuser,tx_ifg_delay[7:0],tx_axis_tready,tx_statistics_vector[25:0],tx_statistics_valid,pause_val[15:0],pause_req,rx_axis_aresetn,rx_axis_tdata[63:0],rx_axis_tkeep[7:0],rx_axis_tvalid,rx_axis_tuser,rx_axis_tlast,rx_statistics_vector[29:0],rx_statistics_valid,s_axi_aclk,s_axi_aresetn,s_axi_awaddr[10:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[10:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,xgmacint,mdc,mdio_in,mdio_out,mdio_tri,tx_dcm_locked,xgmii_txd[63:0],xgmii_txc[7:0],rx_clk0,rx_dcm_locked,xgmii_rxd[63:0],xgmii_rxc[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ten_gig_eth_mac_v15_1_7,Vivado 2019.2";
begin
end;
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  // Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Thu Nov 21 11:37:13 2019
// Host        : DESKTOP-I48MRRI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dbg_hub_stub.v
// Design      : dbg_hub
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a