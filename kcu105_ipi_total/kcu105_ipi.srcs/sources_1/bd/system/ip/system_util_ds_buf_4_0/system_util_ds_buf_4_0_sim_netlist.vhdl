-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 09:59:33 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_util_ds_buf_4_0/system_util_ds_buf_4_0_sim_netlist.vhdl
-- Design      : system_util_ds_buf_4_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_util_ds_buf_4_0_util_ds_buf is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_DS_ODIV2 : out STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_DS_CEB : in STD_LOGIC_VECTOR ( 16 downto 0 );
    OBUF_IN : in STD_LOGIC_VECTOR ( 16 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 16 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 16 downto 0 );
    IOBUF_DS_P : inout STD_LOGIC_VECTOR ( 16 downto 0 );
    IOBUF_DS_N : inout STD_LOGIC_VECTOR ( 16 downto 0 );
    IOBUF_IO_T : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IOBUF_IO_I : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IOBUF_IO_O : out STD_LOGIC_VECTOR ( 16 downto 0 );
    IOBUF_IO_IO : inout STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_I : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_O : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFGCE_I : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFGCE_CE : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFGCE_O : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFGCE_CLR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFH_I : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFH_O : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFHCE_I : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFHCE_CE : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFHCE_O : out STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_GT_I : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_GT_CE : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_GT_CEMASK : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_GT_CLR : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_GT_CLRMASK : in STD_LOGIC_VECTOR ( 16 downto 0 );
    BUFG_GT_DIV : in STD_LOGIC_VECTOR ( 50 downto 0 );
    BUFG_GT_O : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of system_util_ds_buf_4_0_util_ds_buf : entity is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of system_util_ds_buf_4_0_util_ds_buf : entity is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of system_util_ds_buf_4_0_util_ds_buf : entity is "IBUFDS";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of system_util_ds_buf_4_0_util_ds_buf : entity is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of system_util_ds_buf_4_0_util_ds_buf : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_util_ds_buf_4_0_util_ds_buf : entity is "util_ds_buf";
end system_util_ds_buf_4_0_util_ds_buf;

architecture STRUCTURE of system_util_ds_buf_4_0_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I\ : label is "AUTO";
  attribute box_type : string;
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[10].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[10].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[10].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[10].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[11].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[11].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[11].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[11].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[12].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[12].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[12].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[12].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[13].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[13].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[13].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[13].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[14].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[14].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[14].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[14].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[15].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[15].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[15].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[15].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[16].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[16].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[16].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[16].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[1].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[1].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[1].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[1].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[2].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[2].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[2].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[2].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[3].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[3].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[3].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[3].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[4].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[4].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[4].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[4].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[5].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[5].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[5].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[5].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[6].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[6].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[6].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[6].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[7].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[7].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[7].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[7].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[8].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[8].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[8].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[8].IBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_IBUFDS.GEN_IBUFDS[9].IBUFDS_I\ : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[9].IBUFDS_I\ : label is "0";
  attribute IFD_DELAY_VALUE of \USE_IBUFDS.GEN_IBUFDS[9].IBUFDS_I\ : label is "AUTO";
  attribute box_type of \USE_IBUFDS.GEN_IBUFDS[9].IBUFDS_I\ : label is "PRIMITIVE";
begin
  BUFGCE_O(16) <= \<const0>\;
  BUFGCE_O(15) <= \<const0>\;
  BUFGCE_O(14) <= \<const0>\;
  BUFGCE_O(13) <= \<const0>\;
  BUFGCE_O(12) <= \<const0>\;
  BUFGCE_O(11) <= \<const0>\;
  BUFGCE_O(10) <= \<const0>\;
  BUFGCE_O(9) <= \<const0>\;
  BUFGCE_O(8) <= \<const0>\;
  BUFGCE_O(7) <= \<const0>\;
  BUFGCE_O(6) <= \<const0>\;
  BUFGCE_O(5) <= \<const0>\;
  BUFGCE_O(4) <= \<const0>\;
  BUFGCE_O(3) <= \<const0>\;
  BUFGCE_O(2) <= \<const0>\;
  BUFGCE_O(1) <= \<const0>\;
  BUFGCE_O(0) <= \<const0>\;
  BUFG_GT_O(16) <= \<const0>\;
  BUFG_GT_O(15) <= \<const0>\;
  BUFG_GT_O(14) <= \<const0>\;
  BUFG_GT_O(13) <= \<const0>\;
  BUFG_GT_O(12) <= \<const0>\;
  BUFG_GT_O(11) <= \<const0>\;
  BUFG_GT_O(10) <= \<const0>\;
  BUFG_GT_O(9) <= \<const0>\;
  BUFG_GT_O(8) <= \<const0>\;
  BUFG_GT_O(7) <= \<const0>\;
  BUFG_GT_O(6) <= \<const0>\;
  BUFG_GT_O(5) <= \<const0>\;
  BUFG_GT_O(4) <= \<const0>\;
  BUFG_GT_O(3) <= \<const0>\;
  BUFG_GT_O(2) <= \<const0>\;
  BUFG_GT_O(1) <= \<const0>\;
  BUFG_GT_O(0) <= \<const0>\;
  BUFG_O(16) <= \<const0>\;
  BUFG_O(15) <= \<const0>\;
  BUFG_O(14) <= \<const0>\;
  BUFG_O(13) <= \<const0>\;
  BUFG_O(12) <= \<const0>\;
  BUFG_O(11) <= \<const0>\;
  BUFG_O(10) <= \<const0>\;
  BUFG_O(9) <= \<const0>\;
  BUFG_O(8) <= \<const0>\;
  BUFG_O(7) <= \<const0>\;
  BUFG_O(6) <= \<const0>\;
  BUFG_O(5) <= \<const0>\;
  BUFG_O(4) <= \<const0>\;
  BUFG_O(3) <= \<const0>\;
  BUFG_O(2) <= \<const0>\;
  BUFG_O(1) <= \<const0>\;
  BUFG_O(0) <= \<const0>\;
  BUFHCE_O(16) <= \<const0>\;
  BUFHCE_O(15) <= \<const0>\;
  BUFHCE_O(14) <= \<const0>\;
  BUFHCE_O(13) <= \<const0>\;
  BUFHCE_O(12) <= \<const0>\;
  BUFHCE_O(11) <= \<const0>\;
  BUFHCE_O(10) <= \<const0>\;
  BUFHCE_O(9) <= \<const0>\;
  BUFHCE_O(8) <= \<const0>\;
  BUFHCE_O(7) <= \<const0>\;
  BUFHCE_O(6) <= \<const0>\;
  BUFHCE_O(5) <= \<const0>\;
  BUFHCE_O(4) <= \<const0>\;
  BUFHCE_O(3) <= \<const0>\;
  BUFHCE_O(2) <= \<const0>\;
  BUFHCE_O(1) <= \<const0>\;
  BUFHCE_O(0) <= \<const0>\;
  BUFH_O(16) <= \<const0>\;
  BUFH_O(15) <= \<const0>\;
  BUFH_O(14) <= \<const0>\;
  BUFH_O(13) <= \<const0>\;
  BUFH_O(12) <= \<const0>\;
  BUFH_O(11) <= \<const0>\;
  BUFH_O(10) <= \<const0>\;
  BUFH_O(9) <= \<const0>\;
  BUFH_O(8) <= \<const0>\;
  BUFH_O(7) <= \<const0>\;
  BUFH_O(6) <= \<const0>\;
  BUFH_O(5) <= \<const0>\;
  BUFH_O(4) <= \<const0>\;
  BUFH_O(3) <= \<const0>\;
  BUFH_O(2) <= \<const0>\;
  BUFH_O(1) <= \<const0>\;
  BUFH_O(0) <= \<const0>\;
  IBUF_DS_ODIV2(16) <= \<const0>\;
  IBUF_DS_ODIV2(15) <= \<const0>\;
  IBUF_DS_ODIV2(14) <= \<const0>\;
  IBUF_DS_ODIV2(13) <= \<const0>\;
  IBUF_DS_ODIV2(12) <= \<const0>\;
  IBUF_DS_ODIV2(11) <= \<const0>\;
  IBUF_DS_ODIV2(10) <= \<const0>\;
  IBUF_DS_ODIV2(9) <= \<const0>\;
  IBUF_DS_ODIV2(8) <= \<const0>\;
  IBUF_DS_ODIV2(7) <= \<const0>\;
  IBUF_DS_ODIV2(6) <= \<const0>\;
  IBUF_DS_ODIV2(5) <= \<const0>\;
  IBUF_DS_ODIV2(4) <= \<const0>\;
  IBUF_DS_ODIV2(3) <= \<const0>\;
  IBUF_DS_ODIV2(2) <= \<const0>\;
  IBUF_DS_ODIV2(1) <= \<const0>\;
  IBUF_DS_ODIV2(0) <= \<const0>\;
  IOBUF_DS_N(16) <= \<const0>\;
  IOBUF_DS_N(15) <= \<const0>\;
  IOBUF_DS_N(14) <= \<const0>\;
  IOBUF_DS_N(13) <= \<const0>\;
  IOBUF_DS_N(12) <= \<const0>\;
  IOBUF_DS_N(11) <= \<const0>\;
  IOBUF_DS_N(10) <= \<const0>\;
  IOBUF_DS_N(9) <= \<const0>\;
  IOBUF_DS_N(8) <= \<const0>\;
  IOBUF_DS_N(7) <= \<const0>\;
  IOBUF_DS_N(6) <= \<const0>\;
  IOBUF_DS_N(5) <= \<const0>\;
  IOBUF_DS_N(4) <= \<const0>\;
  IOBUF_DS_N(3) <= \<const0>\;
  IOBUF_DS_N(2) <= \<const0>\;
  IOBUF_DS_N(1) <= \<const0>\;
  IOBUF_DS_N(0) <= \<const0>\;
  IOBUF_DS_P(16) <= \<const0>\;
  IOBUF_DS_P(15) <= \<const0>\;
  IOBUF_DS_P(14) <= \<const0>\;
  IOBUF_DS_P(13) <= \<const0>\;
  IOBUF_DS_P(12) <= \<const0>\;
  IOBUF_DS_P(11) <= \<const0>\;
  IOBUF_DS_P(10) <= \<const0>\;
  IOBUF_DS_P(9) <= \<const0>\;
  IOBUF_DS_P(8) <= \<const0>\;
  IOBUF_DS_P(7) <= \<const0>\;
  IOBUF_DS_P(6) <= \<const0>\;
  IOBUF_DS_P(5) <= \<const0>\;
  IOBUF_DS_P(4) <= \<const0>\;
  IOBUF_DS_P(3) <= \<const0>\;
  IOBUF_DS_P(2) <= \<const0>\;
  IOBUF_DS_P(1) <= \<const0>\;
  IOBUF_DS_P(0) <= \<const0>\;
  IOBUF_IO_O(16) <= \<const0>\;
  IOBUF_IO_O(15) <= \<const0>\;
  IOBUF_IO_O(14) <= \<const0>\;
  IOBUF_IO_O(13) <= \<const0>\;
  IOBUF_IO_O(12) <= \<const0>\;
  IOBUF_IO_O(11) <= \<const0>\;
  IOBUF_IO_O(10) <= \<const0>\;
  IOBUF_IO_O(9) <= \<const0>\;
  IOBUF_IO_O(8) <= \<const0>\;
  IOBUF_IO_O(7) <= \<const0>\;
  IOBUF_IO_O(6) <= \<const0>\;
  IOBUF_IO_O(5) <= \<const0>\;
  IOBUF_IO_O(4) <= \<const0>\;
  IOBUF_IO_O(3) <= \<const0>\;
  IOBUF_IO_O(2) <= \<const0>\;
  IOBUF_IO_O(1) <= \<const0>\;
  IOBUF_IO_O(0) <= \<const0>\;
  OBUF_DS_N(16) <= \<const0>\;
  OBUF_DS_N(15) <= \<const0>\;
  OBUF_DS_N(14) <= \<const0>\;
  OBUF_DS_N(13) <= \<const0>\;
  OBUF_DS_N(12) <= \<const0>\;
  OBUF_DS_N(11) <= \<const0>\;
  OBUF_DS_N(10) <= \<const0>\;
  OBUF_DS_N(9) <= \<const0>\;
  OBUF_DS_N(8) <= \<const0>\;
  OBUF_DS_N(7) <= \<const0>\;
  OBUF_DS_N(6) <= \<const0>\;
  OBUF_DS_N(5) <= \<const0>\;
  OBUF_DS_N(4) <= \<const0>\;
  OBUF_DS_N(3) <= \<const0>\;
  OBUF_DS_N(2) <= \<const0>\;
  OBUF_DS_N(1) <= \<const0>\;
  OBUF_DS_N(0) <= \<const0>\;
  OBUF_DS_P(16) <= \<const0>\;
  OBUF_DS_P(15) <= \<const0>\;
  OBUF_DS_P(14) <= \<const0>\;
  OBUF_DS_P(13) <= \<const0>\;
  OBUF_DS_P(12) <= \<const0>\;
  OBUF_DS_P(11) <= \<const0>\;
  OBUF_DS_P(10) <= \<const0>\;
  OBUF_DS_P(9) <= \<const0>\;
  OBUF_DS_P(8) <= \<const0>\;
  OBUF_DS_P(7) <= \<const0>\;
  OBUF_DS_P(6) <= \<const0>\;
  OBUF_DS_P(5) <= \<const0>\;
  OBUF_DS_P(4) <= \<const0>\;
  OBUF_DS_P(3) <= \<const0>\;
  OBUF_DS_P(2) <= \<const0>\;
  OBUF_DS_P(1) <= \<const0>\;
  OBUF_DS_P(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_IBUFDS.GEN_IBUFDS[0].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(0),
      IB => IBUF_DS_N(0),
      O => IBUF_OUT(0)
    );
\USE_IBUFDS.GEN_IBUFDS[10].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(10),
      IB => IBUF_DS_N(10),
      O => IBUF_OUT(10)
    );
\USE_IBUFDS.GEN_IBUFDS[11].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(11),
      IB => IBUF_DS_N(11),
      O => IBUF_OUT(11)
    );
\USE_IBUFDS.GEN_IBUFDS[12].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(12),
      IB => IBUF_DS_N(12),
      O => IBUF_OUT(12)
    );
\USE_IBUFDS.GEN_IBUFDS[13].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(13),
      IB => IBUF_DS_N(13),
      O => IBUF_OUT(13)
    );
\USE_IBUFDS.GEN_IBUFDS[14].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(14),
      IB => IBUF_DS_N(14),
      O => IBUF_OUT(14)
    );
\USE_IBUFDS.GEN_IBUFDS[15].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(15),
      IB => IBUF_DS_N(15),
      O => IBUF_OUT(15)
    );
\USE_IBUFDS.GEN_IBUFDS[16].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(16),
      IB => IBUF_DS_N(16),
      O => IBUF_OUT(16)
    );
\USE_IBUFDS.GEN_IBUFDS[1].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(1),
      IB => IBUF_DS_N(1),
      O => IBUF_OUT(1)
    );
\USE_IBUFDS.GEN_IBUFDS[2].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(2),
      IB => IBUF_DS_N(2),
      O => IBUF_OUT(2)
    );
\USE_IBUFDS.GEN_IBUFDS[3].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(3),
      IB => IBUF_DS_N(3),
      O => IBUF_OUT(3)
    );
\USE_IBUFDS.GEN_IBUFDS[4].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(4),
      IB => IBUF_DS_N(4),
      O => IBUF_OUT(4)
    );
\USE_IBUFDS.GEN_IBUFDS[5].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(5),
      IB => IBUF_DS_N(5),
      O => IBUF_OUT(5)
    );
\USE_IBUFDS.GEN_IBUFDS[6].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(6),
      IB => IBUF_DS_N(6),
      O => IBUF_OUT(6)
    );
\USE_IBUFDS.GEN_IBUFDS[7].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(7),
      IB => IBUF_DS_N(7),
      O => IBUF_OUT(7)
    );
\USE_IBUFDS.GEN_IBUFDS[8].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(8),
      IB => IBUF_DS_N(8),
      O => IBUF_OUT(8)
    );
\USE_IBUFDS.GEN_IBUFDS[9].IBUFDS_I\: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => IBUF_DS_P(9),
      IB => IBUF_DS_N(9),
      O => IBUF_OUT(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_util_ds_buf_4_0 is
  port (
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_util_ds_buf_4_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_util_ds_buf_4_0 : entity is "system_util_ds_buf_4_0,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_util_ds_buf_4_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_util_ds_buf_4_0 : entity is "util_ds_buf,Vivado 2019.2";
end system_util_ds_buf_4_0;

architecture STRUCTURE of system_util_ds_buf_4_0 is
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFG_GT_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFG_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFH_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_IO_IO_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_IO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_OBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_OBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of U0 : label is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of U0 : label is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "IBUFDS";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of U0 : label is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 17;
  attribute x_interface_info : string;
  attribute x_interface_info of IBUF_DS_N : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_N";
  attribute x_interface_info of IBUF_DS_P : signal is "xilinx.com:interface:diff_clock:1.0 CLK_IN_D CLK_P";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of IBUF_DS_P : signal is "XIL_INTERFACENAME CLK_IN_D, BOARD.ASSOCIATED_PARAM DIFF_CLK_IN_BOARD_INTERFACE, CAN_DEBUG false, FREQ_HZ 100000000";
  attribute x_interface_info of IBUF_OUT : signal is "xilinx.com:signal:clock:1.0 IBUF_OUT CLK";
  attribute x_interface_parameter of IBUF_OUT : signal is "XIL_INTERFACENAME IBUF_OUT, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_4_0_IBUF_OUT, INSERT_VIP 0";
begin
U0: entity work.system_util_ds_buf_4_0_util_ds_buf
     port map (
      BUFGCE_CE(16 downto 0) => B"00000000000000000",
      BUFGCE_CLR(16 downto 0) => B"00000000000000000",
      BUFGCE_I(16 downto 0) => B"00000000000000000",
      BUFGCE_O(16 downto 0) => NLW_U0_BUFGCE_O_UNCONNECTED(16 downto 0),
      BUFG_GT_CE(16 downto 0) => B"00000000000000000",
      BUFG_GT_CEMASK(16 downto 0) => B"00000000000000000",
      BUFG_GT_CLR(16 downto 0) => B"00000000000000000",
      BUFG_GT_CLRMASK(16 downto 0) => B"00000000000000000",
      BUFG_GT_DIV(50 downto 0) => B"000000000000000000000000000000000000000000000000000",
      BUFG_GT_I(16 downto 0) => B"00000000000000000",
      BUFG_GT_O(16 downto 0) => NLW_U0_BUFG_GT_O_UNCONNECTED(16 downto 0),
      BUFG_I(16 downto 0) => B"00000000000000000",
      BUFG_O(16 downto 0) => NLW_U0_BUFG_O_UNCONNECTED(16 downto 0),
      BUFHCE_CE(16 downto 0) => B"00000000000000000",
      BUFHCE_I(16 downto 0) => B"00000000000000000",
      BUFHCE_O(16 downto 0) => NLW_U0_BUFHCE_O_UNCONNECTED(16 downto 0),
      BUFH_I(16 downto 0) => B"00000000000000000",
      BUFH_O(16 downto 0) => NLW_U0_BUFH_O_UNCONNECTED(16 downto 0),
      IBUF_DS_CEB(16 downto 0) => B"00000000000000000",
      IBUF_DS_N(16 downto 0) => IBUF_DS_N(16 downto 0),
      IBUF_DS_ODIV2(16 downto 0) => NLW_U0_IBUF_DS_ODIV2_UNCONNECTED(16 downto 0),
      IBUF_DS_P(16 downto 0) => IBUF_DS_P(16 downto 0),
      IBUF_OUT(16 downto 0) => IBUF_OUT(16 downto 0),
      IOBUF_DS_N(16 downto 0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(16 downto 0),
      IOBUF_DS_P(16 downto 0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(16 downto 0),
      IOBUF_IO_I(16 downto 0) => B"00000000000000000",
      IOBUF_IO_IO(16 downto 0) => NLW_U0_IOBUF_IO_IO_UNCONNECTED(16 downto 0),
      IOBUF_IO_O(16 downto 0) => NLW_U0_IOBUF_IO_O_UNCONNECTED(16 downto 0),
      IOBUF_IO_T(16 downto 0) => B"00000000000000000",
      OBUF_DS_N(16 downto 0) => NLW_U0_OBUF_DS_N_UNCONNECTED(16 downto 0),
      OBUF_DS_P(16 downto 0) => NLW_U0_OBUF_DS_P_UNCONNECTED(16 downto 0),
      OBUF_IN(16 downto 0) => B"00000000000000000"
    );
end STRUCTURE;
