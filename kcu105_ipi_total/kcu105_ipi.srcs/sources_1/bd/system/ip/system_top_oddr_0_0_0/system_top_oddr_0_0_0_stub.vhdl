-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 09:59:33 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_top_oddr_0_0_0/system_top_oddr_0_0_0_stub.vhdl
-- Design      : system_top_oddr_0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_top_oddr_0_0_0 is
  Port ( 
    Q : out STD_LOGIC;
    CLK : in STD_LOGIC;
    D1 : in STD_LOGIC;
    D2 : in STD_LOGIC;
    SR : in STD_LOGIC
  );

end system_top_oddr_0_0_0;

architecture stub of system_top_oddr_0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Q,CLK,D1,D2,SR";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "design_1_top_oddr_0_0,Vivado 2019.2";
begin
end;
