-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 09:59:32 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_top_oddr_0_0_0_sim_netlist.vhdl
-- Design      : system_top_oddr_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_oddr is
  port (
    Q : out STD_LOGIC;
    CLK : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    SR : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_oddr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_oddr is
  signal NLW_ODDR_INST_CLK_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_INST_T_OUT_UNCONNECTED : STD_LOGIC;
  signal NLW_ODDR_INST_D_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of ODDR_INST : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of ODDR_INST : label is "ODDRE1";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of ODDR_INST : label is "C:CLKDIV SR:RST Q:OQ D1:D[0] D2:D[4]";
begin
ODDR_INST: unisim.vcomponents.OSERDESE3
    generic map(
      INIT => '0',
      IS_CLKDIV_INVERTED => '0',
      ODDR_MODE => "TRUE",
      OSERDES_T_BYPASS => "TRUE"
    )
        port map (
      CLK => NLW_ODDR_INST_CLK_UNCONNECTED,
      CLKDIV => CLK,
      D(7 downto 5) => NLW_ODDR_INST_D_UNCONNECTED(7 downto 5),
      D(4) => D2,
      D(3 downto 1) => NLW_ODDR_INST_D_UNCONNECTED(3 downto 1),
      D(0) => D1,
      OQ => Q,
      RST => SR,
      T => '0',
      T_OUT => NLW_ODDR_INST_T_OUT_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_top_oddr_0_0 is
  port (
    Q : out STD_LOGIC;
    CLK : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    SR : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_top_oddr_0_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_top_oddr_0_0 is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_top_oddr
     port map (
      CLK => CLK,
      D1 => D1,
      D2 => D2,
      Q => Q,
      SR => SR
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    Q : out STD_LOGIC;
    CLK : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    SR : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_top_oddr_0_0_0,design_1_top_oddr_0_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_top_oddr_0_0,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_CORE_INFO of inst : label is "top_oddr,Vivado 2014.1.0";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_design_1_top_oddr_0_0
     port map (
      CLK => CLK,
      D1 => D1,
      D2 => D2,
      Q => Q,
      SR => SR
    );
end STRUCTURE;
