-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
-- Date        : Wed May 20 01:52:43 2020
-- Host        : ubuntu running 64-bit Ubuntu 18.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/caohy/tpu_kcu105/tpu.srcs/sources_1/ip/rs_encoder/rs_encoder_stub.vhdl
-- Design      : rs_encoder
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rs_encoder is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_input_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_input_tvalid : in STD_LOGIC;
    s_axis_input_tready : out STD_LOGIC;
    s_axis_input_tlast : in STD_LOGIC;
    m_axis_output_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_output_tvalid : out STD_LOGIC;
    m_axis_output_tready : in STD_LOGIC;
    m_axis_output_tlast : out STD_LOGIC;
    event_s_input_tlast_missing : out STD_LOGIC;
    event_s_input_tlast_unexpected : out STD_LOGIC
  );

end rs_encoder;

architecture stub of rs_encoder is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_input_tdata[7:0],s_axis_input_tvalid,s_axis_input_tready,s_axis_input_tlast,m_axis_output_tdata[7:0],m_axis_output_tvalid,m_axis_output_tready,m_axis_output_tlast,event_s_input_tlast_missing,event_s_input_tlast_unexpected";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "rs_encoder_v9_0_16,Vivado 2019.2";
begin
end;
