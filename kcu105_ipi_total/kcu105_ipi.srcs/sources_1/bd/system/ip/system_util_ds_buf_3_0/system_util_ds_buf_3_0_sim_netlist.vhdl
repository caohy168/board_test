-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 09:59:33 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_util_ds_buf_3_0/system_util_ds_buf_3_0_sim_netlist.vhdl
-- Design      : system_util_ds_buf_3_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_util_ds_buf_3_0_util_ds_buf is
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
  attribute C_BUFGCE_DIV of system_util_ds_buf_3_0_util_ds_buf : entity is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of system_util_ds_buf_3_0_util_ds_buf : entity is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of system_util_ds_buf_3_0_util_ds_buf : entity is "OBUFDS";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of system_util_ds_buf_3_0_util_ds_buf : entity is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of system_util_ds_buf_3_0_util_ds_buf : entity is 17;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_util_ds_buf_3_0_util_ds_buf : entity is "util_ds_buf";
end system_util_ds_buf_3_0_util_ds_buf;

architecture STRUCTURE of system_util_ds_buf_3_0_util_ds_buf is
  signal \<const0>\ : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type : string;
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[10].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[10].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[10].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[11].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[11].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[11].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[12].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[12].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[12].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[13].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[13].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[13].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[14].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[14].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[14].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[15].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[15].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[15].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[16].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[16].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[16].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[1].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[1].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[1].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[2].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[2].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[2].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[3].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[3].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[3].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[4].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[4].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[4].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[5].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[5].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[5].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[6].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[6].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[6].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[7].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[7].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[7].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[8].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[8].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[8].OBUFDS_I\ : label is "PRIMITIVE";
  attribute CAPACITANCE of \USE_OBUFDS.GEN_OBUFDS[9].OBUFDS_I\ : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM of \USE_OBUFDS.GEN_OBUFDS[9].OBUFDS_I\ : label is "OBUFDS";
  attribute box_type of \USE_OBUFDS.GEN_OBUFDS[9].OBUFDS_I\ : label is "PRIMITIVE";
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
  IBUF_OUT(16) <= \<const0>\;
  IBUF_OUT(15) <= \<const0>\;
  IBUF_OUT(14) <= \<const0>\;
  IBUF_OUT(13) <= \<const0>\;
  IBUF_OUT(12) <= \<const0>\;
  IBUF_OUT(11) <= \<const0>\;
  IBUF_OUT(10) <= \<const0>\;
  IBUF_OUT(9) <= \<const0>\;
  IBUF_OUT(8) <= \<const0>\;
  IBUF_OUT(7) <= \<const0>\;
  IBUF_OUT(6) <= \<const0>\;
  IBUF_OUT(5) <= \<const0>\;
  IBUF_OUT(4) <= \<const0>\;
  IBUF_OUT(3) <= \<const0>\;
  IBUF_OUT(2) <= \<const0>\;
  IBUF_OUT(1) <= \<const0>\;
  IBUF_OUT(0) <= \<const0>\;
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
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\USE_OBUFDS.GEN_OBUFDS[0].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(0),
      O => OBUF_DS_P(0),
      OB => OBUF_DS_N(0)
    );
\USE_OBUFDS.GEN_OBUFDS[10].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(10),
      O => OBUF_DS_P(10),
      OB => OBUF_DS_N(10)
    );
\USE_OBUFDS.GEN_OBUFDS[11].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(11),
      O => OBUF_DS_P(11),
      OB => OBUF_DS_N(11)
    );
\USE_OBUFDS.GEN_OBUFDS[12].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(12),
      O => OBUF_DS_P(12),
      OB => OBUF_DS_N(12)
    );
\USE_OBUFDS.GEN_OBUFDS[13].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(13),
      O => OBUF_DS_P(13),
      OB => OBUF_DS_N(13)
    );
\USE_OBUFDS.GEN_OBUFDS[14].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(14),
      O => OBUF_DS_P(14),
      OB => OBUF_DS_N(14)
    );
\USE_OBUFDS.GEN_OBUFDS[15].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(15),
      O => OBUF_DS_P(15),
      OB => OBUF_DS_N(15)
    );
\USE_OBUFDS.GEN_OBUFDS[16].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(16),
      O => OBUF_DS_P(16),
      OB => OBUF_DS_N(16)
    );
\USE_OBUFDS.GEN_OBUFDS[1].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(1),
      O => OBUF_DS_P(1),
      OB => OBUF_DS_N(1)
    );
\USE_OBUFDS.GEN_OBUFDS[2].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(2),
      O => OBUF_DS_P(2),
      OB => OBUF_DS_N(2)
    );
\USE_OBUFDS.GEN_OBUFDS[3].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(3),
      O => OBUF_DS_P(3),
      OB => OBUF_DS_N(3)
    );
\USE_OBUFDS.GEN_OBUFDS[4].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(4),
      O => OBUF_DS_P(4),
      OB => OBUF_DS_N(4)
    );
\USE_OBUFDS.GEN_OBUFDS[5].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(5),
      O => OBUF_DS_P(5),
      OB => OBUF_DS_N(5)
    );
\USE_OBUFDS.GEN_OBUFDS[6].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(6),
      O => OBUF_DS_P(6),
      OB => OBUF_DS_N(6)
    );
\USE_OBUFDS.GEN_OBUFDS[7].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(7),
      O => OBUF_DS_P(7),
      OB => OBUF_DS_N(7)
    );
\USE_OBUFDS.GEN_OBUFDS[8].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(8),
      O => OBUF_DS_P(8),
      OB => OBUF_DS_N(8)
    );
\USE_OBUFDS.GEN_OBUFDS[9].OBUFDS_I\: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => OBUF_IN(9),
      O => OBUF_DS_P(9),
      OB => OBUF_DS_N(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_util_ds_buf_3_0 is
  port (
    OBUF_IN : in STD_LOGIC_VECTOR ( 16 downto 0 );
    OBUF_DS_P : out STD_LOGIC_VECTOR ( 16 downto 0 );
    OBUF_DS_N : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_util_ds_buf_3_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_util_ds_buf_3_0 : entity is "system_util_ds_buf_3_0,util_ds_buf,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_util_ds_buf_3_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_util_ds_buf_3_0 : entity is "util_ds_buf,Vivado 2019.2";
end system_util_ds_buf_3_0;

architecture STRUCTURE of system_util_ds_buf_3_0 is
  signal NLW_U0_BUFGCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFG_GT_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFG_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFHCE_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_BUFH_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IBUF_DS_ODIV2_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IBUF_OUT_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_DS_N_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_DS_P_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_IO_IO_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal NLW_U0_IOBUF_IO_O_UNCONNECTED : STD_LOGIC_VECTOR ( 16 downto 0 );
  attribute C_BUFGCE_DIV : integer;
  attribute C_BUFGCE_DIV of U0 : label is 1;
  attribute C_BUFG_GT_SYNC : integer;
  attribute C_BUFG_GT_SYNC of U0 : label is 0;
  attribute C_BUF_TYPE : string;
  attribute C_BUF_TYPE of U0 : label is "OBUFDS";
  attribute C_SIM_DEVICE : string;
  attribute C_SIM_DEVICE of U0 : label is "VERSAL_AI_CORE_ES1";
  attribute C_SIZE : integer;
  attribute C_SIZE of U0 : label is 17;
  attribute x_interface_info : string;
  attribute x_interface_info of OBUF_DS_N : signal is "xilinx.com:signal:clock:1.0 OBUF_DS_N CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of OBUF_DS_N : signal is "XIL_INTERFACENAME OBUF_DS_N, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_3_0_OBUF_DS_N, INSERT_VIP 0";
  attribute x_interface_info of OBUF_DS_P : signal is "xilinx.com:signal:clock:1.0 OBUF_DS_P CLK";
  attribute x_interface_parameter of OBUF_DS_P : signal is "XIL_INTERFACENAME OBUF_DS_P, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_util_ds_buf_3_0_OBUF_DS_P, INSERT_VIP 0";
  attribute x_interface_info of OBUF_IN : signal is "xilinx.com:signal:clock:1.0 OBUF_IN CLK";
  attribute x_interface_parameter of OBUF_IN : signal is "XIL_INTERFACENAME OBUF_IN, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
begin
U0: entity work.system_util_ds_buf_3_0_util_ds_buf
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
      IBUF_DS_N(16 downto 0) => B"00000000000000000",
      IBUF_DS_ODIV2(16 downto 0) => NLW_U0_IBUF_DS_ODIV2_UNCONNECTED(16 downto 0),
      IBUF_DS_P(16 downto 0) => B"00000000000000000",
      IBUF_OUT(16 downto 0) => NLW_U0_IBUF_OUT_UNCONNECTED(16 downto 0),
      IOBUF_DS_N(16 downto 0) => NLW_U0_IOBUF_DS_N_UNCONNECTED(16 downto 0),
      IOBUF_DS_P(16 downto 0) => NLW_U0_IOBUF_DS_P_UNCONNECTED(16 downto 0),
      IOBUF_IO_I(16 downto 0) => B"00000000000000000",
      IOBUF_IO_IO(16 downto 0) => NLW_U0_IOBUF_IO_IO_UNCONNECTED(16 downto 0),
      IOBUF_IO_O(16 downto 0) => NLW_U0_IOBUF_IO_O_UNCONNECTED(16 downto 0),
      IOBUF_IO_T(16 downto 0) => B"00000000000000000",
      OBUF_DS_N(16 downto 0) => OBUF_DS_N(16 downto 0),
      OBUF_DS_P(16 downto 0) => OBUF_DS_P(16 downto 0),
      OBUF_IN(16 downto 0) => OBUF_IN(16 downto 0)
    );
end STRUCTURE;
