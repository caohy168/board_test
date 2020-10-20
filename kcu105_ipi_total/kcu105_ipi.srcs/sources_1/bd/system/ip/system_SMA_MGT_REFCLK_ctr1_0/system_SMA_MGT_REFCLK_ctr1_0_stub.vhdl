-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 09:59:32 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_SMA_MGT_REFCLK_ctr1_0 -prefix
--               system_SMA_MGT_REFCLK_ctr1_0_ system_FMC_HPC_GBTCLK0_ctr_0_stub.vhdl
-- Design      : system_FMC_HPC_GBTCLK0_ctr_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_SMA_MGT_REFCLK_ctr1_0 is
  Port ( 
    FREQ_CNT_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RST_I : in STD_LOGIC;
    REF_CLK_I : in STD_LOGIC;
    DIFF_MGTE3_P : in STD_LOGIC;
    DIFF_MGTE3_N : in STD_LOGIC
  );

end system_SMA_MGT_REFCLK_ctr1_0;

architecture stub of system_SMA_MGT_REFCLK_ctr1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "FREQ_CNT_O[15:0],RST_I,REF_CLK_I,DIFF_MGTE3_P,DIFF_MGTE3_N";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gt_freq_counter,Vivado 2019.2";
begin
end;
