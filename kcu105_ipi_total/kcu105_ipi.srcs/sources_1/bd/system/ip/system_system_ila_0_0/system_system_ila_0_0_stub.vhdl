-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 10:01:43 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_system_ila_0_0/system_system_ila_0_0_stub.vhdl
-- Design      : system_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_BRAM_en : in STD_LOGIC;
    SLOT_0_BRAM_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_BRAM_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_BRAM_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_BRAM_addr : in STD_LOGIC_VECTOR ( 12 downto 0 );
    SLOT_0_BRAM_clk : in STD_LOGIC;
    SLOT_0_BRAM_rst : in STD_LOGIC;
    SLOT_1_BRAM_en : in STD_LOGIC;
    SLOT_1_BRAM_dout : in STD_LOGIC;
    SLOT_1_BRAM_din : in STD_LOGIC;
    SLOT_1_BRAM_we : in STD_LOGIC;
    SLOT_1_BRAM_addr : in STD_LOGIC;
    SLOT_1_BRAM_clk : in STD_LOGIC;
    SLOT_1_BRAM_rst : in STD_LOGIC
  );

end system_system_ila_0_0;

architecture stub of system_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_BRAM_en,SLOT_0_BRAM_dout[31:0],SLOT_0_BRAM_din[31:0],SLOT_0_BRAM_we[3:0],SLOT_0_BRAM_addr[12:0],SLOT_0_BRAM_clk,SLOT_0_BRAM_rst,SLOT_1_BRAM_en,SLOT_1_BRAM_dout,SLOT_1_BRAM_din,SLOT_1_BRAM_we,SLOT_1_BRAM_addr,SLOT_1_BRAM_clk,SLOT_1_BRAM_rst";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_d5b8,Vivado 2019.2";
begin
end;
