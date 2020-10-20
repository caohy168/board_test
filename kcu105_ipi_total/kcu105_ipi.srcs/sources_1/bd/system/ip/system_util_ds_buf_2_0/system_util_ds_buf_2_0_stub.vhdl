-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 09:59:33 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_util_ds_buf_2_0 -prefix
--               system_util_ds_buf_2_0_ system_util_ds_buf_4_0_stub.vhdl
-- Design      : system_util_ds_buf_4_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_util_ds_buf_2_0 is
  Port ( 
    IBUF_DS_P : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_DS_N : in STD_LOGIC_VECTOR ( 16 downto 0 );
    IBUF_OUT : out STD_LOGIC_VECTOR ( 16 downto 0 )
  );

end system_util_ds_buf_2_0;

architecture stub of system_util_ds_buf_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "IBUF_DS_P[16:0],IBUF_DS_N[16:0],IBUF_OUT[16:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "util_ds_buf,Vivado 2019.2";
begin
end;
