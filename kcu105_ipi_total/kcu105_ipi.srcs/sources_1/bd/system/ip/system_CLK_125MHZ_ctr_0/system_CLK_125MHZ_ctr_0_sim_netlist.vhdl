-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Dec 10 09:59:32 2019
-- Host        : DESKTOP-4A374NS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/dell/Desktop/kcu105_ipi_total/kcu105_ipi.srcs/sources_1/bd/system/ip/system_CLK_125MHZ_ctr_0/system_CLK_125MHZ_ctr_0_sim_netlist.vhdl
-- Design      : system_CLK_125MHZ_ctr_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_CLK_125MHZ_ctr_0_diff_freq_counter is
  port (
    FREQ_CNT_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    DIFF_CLKIN_P : in STD_LOGIC;
    DIFF_CLKIN_N : in STD_LOGIC;
    REF_CLK_I : in STD_LOGIC;
    RST_I : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_CLK_125MHZ_ctr_0_diff_freq_counter : entity is "diff_freq_counter";
end system_CLK_125MHZ_ctr_0_diff_freq_counter;

architecture STRUCTURE of system_CLK_125MHZ_ctr_0_diff_freq_counter is
  signal DIFF_CLKIN_bufg : STD_LOGIC;
  signal DIFF_CLKIN_out : STD_LOGIC;
  signal \FREQ_CNT_O[15]_i_1_n_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \hold_clk[3]_i_1_n_0\ : STD_LOGIC;
  signal hold_clk_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \refclk_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal refclk_cnt_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \refclk_cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_10\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_11\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_12\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_13\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_14\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_15\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_8\ : STD_LOGIC;
  signal \refclk_cnt_reg[0]_i_2_n_9\ : STD_LOGIC;
  signal \refclk_cnt_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \refclk_cnt_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_2_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_1_n_0\ : STD_LOGIC;
  signal \state[2]_i_2_n_0\ : STD_LOGIC;
  signal \state[2]_i_3_n_0\ : STD_LOGIC;
  signal \state[2]_i_4_n_0\ : STD_LOGIC;
  signal \state[2]_i_5_n_0\ : STD_LOGIC;
  signal \state[2]_i_6_n_0\ : STD_LOGIC;
  signal \state[3]_i_1_n_0\ : STD_LOGIC;
  signal \state[3]_i_2_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[3]\ : STD_LOGIC;
  signal \testclk_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \testclk_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \testclk_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \testclk_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \testclk_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \testclk_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal testclk_cnt0_carry_n_0 : STD_LOGIC;
  signal testclk_cnt0_carry_n_1 : STD_LOGIC;
  signal testclk_cnt0_carry_n_2 : STD_LOGIC;
  signal testclk_cnt0_carry_n_3 : STD_LOGIC;
  signal testclk_cnt0_carry_n_4 : STD_LOGIC;
  signal testclk_cnt0_carry_n_5 : STD_LOGIC;
  signal testclk_cnt0_carry_n_6 : STD_LOGIC;
  signal testclk_cnt0_carry_n_7 : STD_LOGIC;
  signal \testclk_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal testclk_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal testclk_div4 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal testclk_div40 : STD_LOGIC;
  signal testclk_en : STD_LOGIC;
  signal tstclk_rst_dly1 : STD_LOGIC;
  signal tstclk_rst_dly2 : STD_LOGIC;
  signal \NLW_refclk_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_refclk_cnt_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_testclk_cnt0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_testclk_cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFG_inst_DIFF_CLKIN : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of BUFG_inst_DIFF_CLKIN : label is "BUFG";
  attribute BOX_TYPE of IBUFDS_inst_DIFF_CLKIN : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_inst_DIFF_CLKIN : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_inst_DIFF_CLKIN : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_inst_DIFF_CLKIN : label is "AUTO";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hold_clk[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hold_clk[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hold_clk[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[2]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \state[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \state[3]_i_2\ : label is "soft_lutpair2";
begin
BUFG_inst_DIFF_CLKIN: unisim.vcomponents.BUFGCE
    generic map(
      CE_TYPE => "ASYNC",
      SIM_DEVICE => "ULTRASCALE"
    )
        port map (
      CE => '1',
      I => DIFF_CLKIN_out,
      O => DIFF_CLKIN_bufg
    );
\FREQ_CNT_O[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => testclk_en,
      I1 => \state_reg_n_0_[0]\,
      I2 => p_0_in_0,
      O => \FREQ_CNT_O[15]_i_1_n_0\
    );
\FREQ_CNT_O_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(0),
      Q => FREQ_CNT_O(0),
      R => '0'
    );
\FREQ_CNT_O_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(10),
      Q => FREQ_CNT_O(10),
      R => '0'
    );
\FREQ_CNT_O_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(11),
      Q => FREQ_CNT_O(11),
      R => '0'
    );
\FREQ_CNT_O_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(12),
      Q => FREQ_CNT_O(12),
      R => '0'
    );
\FREQ_CNT_O_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(13),
      Q => FREQ_CNT_O(13),
      R => '0'
    );
\FREQ_CNT_O_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(14),
      Q => FREQ_CNT_O(14),
      R => '0'
    );
\FREQ_CNT_O_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(15),
      Q => FREQ_CNT_O(15),
      R => '0'
    );
\FREQ_CNT_O_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(1),
      Q => FREQ_CNT_O(1),
      R => '0'
    );
\FREQ_CNT_O_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(2),
      Q => FREQ_CNT_O(2),
      R => '0'
    );
\FREQ_CNT_O_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(3),
      Q => FREQ_CNT_O(3),
      R => '0'
    );
\FREQ_CNT_O_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(4),
      Q => FREQ_CNT_O(4),
      R => '0'
    );
\FREQ_CNT_O_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(5),
      Q => FREQ_CNT_O(5),
      R => '0'
    );
\FREQ_CNT_O_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(6),
      Q => FREQ_CNT_O(6),
      R => '0'
    );
\FREQ_CNT_O_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(7),
      Q => FREQ_CNT_O(7),
      R => '0'
    );
\FREQ_CNT_O_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(8),
      Q => FREQ_CNT_O(8),
      R => '0'
    );
\FREQ_CNT_O_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => \FREQ_CNT_O[15]_i_1_n_0\,
      D => testclk_cnt_reg(9),
      Q => FREQ_CNT_O(9),
      R => '0'
    );
IBUFDS_inst_DIFF_CLKIN: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => DIFF_CLKIN_P,
      IB => DIFF_CLKIN_N,
      O => DIFF_CLKIN_out
    );
\hold_clk[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hold_clk_reg(0),
      O => p_0_in(0)
    );
\hold_clk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hold_clk_reg(0),
      I1 => hold_clk_reg(1),
      O => p_0_in(1)
    );
\hold_clk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => hold_clk_reg(2),
      I1 => hold_clk_reg(1),
      I2 => hold_clk_reg(0),
      O => p_0_in(2)
    );
\hold_clk[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => p_0_in_0,
      O => \hold_clk[3]_i_1_n_0\
    );
\hold_clk[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => hold_clk_reg(3),
      I1 => hold_clk_reg(0),
      I2 => hold_clk_reg(1),
      I3 => hold_clk_reg(2),
      O => p_0_in(3)
    );
\hold_clk_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => p_0_in(0),
      Q => hold_clk_reg(0),
      R => \hold_clk[3]_i_1_n_0\
    );
\hold_clk_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => p_0_in(1),
      Q => hold_clk_reg(1),
      R => \hold_clk[3]_i_1_n_0\
    );
\hold_clk_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => p_0_in(2),
      Q => hold_clk_reg(2),
      R => \hold_clk[3]_i_1_n_0\
    );
\hold_clk_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => p_0_in(3),
      Q => hold_clk_reg(3),
      R => \hold_clk[3]_i_1_n_0\
    );
\refclk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => testclk_en,
      O => clear
    );
\refclk_cnt[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => refclk_cnt_reg(0),
      O => \refclk_cnt[0]_i_3_n_0\
    );
\refclk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_15\,
      Q => refclk_cnt_reg(0),
      R => clear
    );
\refclk_cnt_reg[0]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \refclk_cnt_reg[0]_i_2_n_0\,
      CO(6) => \refclk_cnt_reg[0]_i_2_n_1\,
      CO(5) => \refclk_cnt_reg[0]_i_2_n_2\,
      CO(4) => \refclk_cnt_reg[0]_i_2_n_3\,
      CO(3) => \refclk_cnt_reg[0]_i_2_n_4\,
      CO(2) => \refclk_cnt_reg[0]_i_2_n_5\,
      CO(1) => \refclk_cnt_reg[0]_i_2_n_6\,
      CO(0) => \refclk_cnt_reg[0]_i_2_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \refclk_cnt_reg[0]_i_2_n_8\,
      O(6) => \refclk_cnt_reg[0]_i_2_n_9\,
      O(5) => \refclk_cnt_reg[0]_i_2_n_10\,
      O(4) => \refclk_cnt_reg[0]_i_2_n_11\,
      O(3) => \refclk_cnt_reg[0]_i_2_n_12\,
      O(2) => \refclk_cnt_reg[0]_i_2_n_13\,
      O(1) => \refclk_cnt_reg[0]_i_2_n_14\,
      O(0) => \refclk_cnt_reg[0]_i_2_n_15\,
      S(7 downto 1) => refclk_cnt_reg(7 downto 1),
      S(0) => \refclk_cnt[0]_i_3_n_0\
    );
\refclk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_13\,
      Q => refclk_cnt_reg(10),
      R => clear
    );
\refclk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_12\,
      Q => refclk_cnt_reg(11),
      R => clear
    );
\refclk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_11\,
      Q => refclk_cnt_reg(12),
      R => clear
    );
\refclk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_10\,
      Q => refclk_cnt_reg(13),
      R => clear
    );
\refclk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_9\,
      Q => refclk_cnt_reg(14),
      R => clear
    );
\refclk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_8\,
      Q => refclk_cnt_reg(15),
      R => clear
    );
\refclk_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[16]_i_1_n_15\,
      Q => refclk_cnt_reg(16),
      R => clear
    );
\refclk_cnt_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \refclk_cnt_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 0) => \NLW_refclk_cnt_reg[16]_i_1_CO_UNCONNECTED\(7 downto 0),
      DI(7 downto 0) => B"00000000",
      O(7 downto 1) => \NLW_refclk_cnt_reg[16]_i_1_O_UNCONNECTED\(7 downto 1),
      O(0) => \refclk_cnt_reg[16]_i_1_n_15\,
      S(7 downto 1) => B"0000000",
      S(0) => refclk_cnt_reg(16)
    );
\refclk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_14\,
      Q => refclk_cnt_reg(1),
      R => clear
    );
\refclk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_13\,
      Q => refclk_cnt_reg(2),
      R => clear
    );
\refclk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_12\,
      Q => refclk_cnt_reg(3),
      R => clear
    );
\refclk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_11\,
      Q => refclk_cnt_reg(4),
      R => clear
    );
\refclk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_10\,
      Q => refclk_cnt_reg(5),
      R => clear
    );
\refclk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_9\,
      Q => refclk_cnt_reg(6),
      R => clear
    );
\refclk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[0]_i_2_n_8\,
      Q => refclk_cnt_reg(7),
      R => clear
    );
\refclk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_15\,
      Q => refclk_cnt_reg(8),
      R => clear
    );
\refclk_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \refclk_cnt_reg[0]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \refclk_cnt_reg[8]_i_1_n_0\,
      CO(6) => \refclk_cnt_reg[8]_i_1_n_1\,
      CO(5) => \refclk_cnt_reg[8]_i_1_n_2\,
      CO(4) => \refclk_cnt_reg[8]_i_1_n_3\,
      CO(3) => \refclk_cnt_reg[8]_i_1_n_4\,
      CO(2) => \refclk_cnt_reg[8]_i_1_n_5\,
      CO(1) => \refclk_cnt_reg[8]_i_1_n_6\,
      CO(0) => \refclk_cnt_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \refclk_cnt_reg[8]_i_1_n_8\,
      O(6) => \refclk_cnt_reg[8]_i_1_n_9\,
      O(5) => \refclk_cnt_reg[8]_i_1_n_10\,
      O(4) => \refclk_cnt_reg[8]_i_1_n_11\,
      O(3) => \refclk_cnt_reg[8]_i_1_n_12\,
      O(2) => \refclk_cnt_reg[8]_i_1_n_13\,
      O(1) => \refclk_cnt_reg[8]_i_1_n_14\,
      O(0) => \refclk_cnt_reg[8]_i_1_n_15\,
      S(7 downto 0) => refclk_cnt_reg(15 downto 8)
    );
\refclk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \refclk_cnt_reg[8]_i_1_n_14\,
      Q => refclk_cnt_reg(9),
      R => clear
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"50535050"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => testclk_en,
      I2 => \state_reg_n_0_[0]\,
      I3 => p_0_in_0,
      I4 => \state_reg_n_0_[3]\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA8A"
    )
        port map (
      I0 => \state[1]_i_2_n_0\,
      I1 => \state[1]_i_3_n_0\,
      I2 => \state[2]_i_4_n_0\,
      I3 => \state[2]_i_5_n_0\,
      I4 => \state[2]_i_6_n_0\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0000000AAAAAAAA"
    )
        port map (
      I0 => testclk_en,
      I1 => hold_clk_reg(3),
      I2 => hold_clk_reg(0),
      I3 => hold_clk_reg(1),
      I4 => hold_clk_reg(2),
      I5 => \state_reg_n_0_[0]\,
      O => \state[1]_i_2_n_0\
    );
\state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_cnt_reg(13),
      I1 => refclk_cnt_reg(0),
      I2 => refclk_cnt_reg(4),
      I3 => \state_reg_n_0_[0]\,
      O => \state[1]_i_3_n_0\
    );
\state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111111111F11"
    )
        port map (
      I0 => \state[2]_i_2_n_0\,
      I1 => \state[3]_i_2_n_0\,
      I2 => \state[2]_i_3_n_0\,
      I3 => \state[2]_i_4_n_0\,
      I4 => \state[2]_i_5_n_0\,
      I5 => \state[2]_i_6_n_0\,
      O => \state[2]_i_1_n_0\
    );
\state[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => testclk_en,
      I2 => p_0_in_0,
      O => \state[2]_i_2_n_0\
    );
\state[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => refclk_cnt_reg(4),
      I2 => refclk_cnt_reg(0),
      I3 => refclk_cnt_reg(13),
      I4 => testclk_en,
      O => \state[2]_i_3_n_0\
    );
\state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => refclk_cnt_reg(3),
      I1 => refclk_cnt_reg(1),
      I2 => refclk_cnt_reg(5),
      I3 => refclk_cnt_reg(7),
      I4 => refclk_cnt_reg(11),
      I5 => refclk_cnt_reg(16),
      O => \state[2]_i_4_n_0\
    );
\state[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => refclk_cnt_reg(10),
      I1 => refclk_cnt_reg(9),
      I2 => refclk_cnt_reg(15),
      I3 => refclk_cnt_reg(6),
      O => \state[2]_i_5_n_0\
    );
\state[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => refclk_cnt_reg(12),
      I1 => refclk_cnt_reg(2),
      I2 => refclk_cnt_reg(14),
      I3 => refclk_cnt_reg(8),
      O => \state[2]_i_6_n_0\
    );
\state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \state[3]_i_2_n_0\,
      I1 => p_0_in_0,
      I2 => testclk_en,
      I3 => \state_reg_n_0_[0]\,
      O => \state[3]_i_1_n_0\
    );
\state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => hold_clk_reg(3),
      I1 => hold_clk_reg(0),
      I2 => hold_clk_reg(1),
      I3 => hold_clk_reg(2),
      O => \state[3]_i_2_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => testclk_en,
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \state[2]_i_1_n_0\,
      Q => p_0_in_0,
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => REF_CLK_I,
      CE => '1',
      D => \state[3]_i_1_n_0\,
      Q => \state_reg_n_0_[3]\,
      R => '0'
    );
testclk_cnt0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => testclk_cnt_reg(0),
      CI_TOP => '0',
      CO(7) => testclk_cnt0_carry_n_0,
      CO(6) => testclk_cnt0_carry_n_1,
      CO(5) => testclk_cnt0_carry_n_2,
      CO(4) => testclk_cnt0_carry_n_3,
      CO(3) => testclk_cnt0_carry_n_4,
      CO(2) => testclk_cnt0_carry_n_5,
      CO(1) => testclk_cnt0_carry_n_6,
      CO(0) => testclk_cnt0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \p_0_in__0\(8 downto 1),
      S(7 downto 0) => testclk_cnt_reg(8 downto 1)
    );
\testclk_cnt0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => testclk_cnt0_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_testclk_cnt0_carry__0_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \testclk_cnt0_carry__0_n_2\,
      CO(4) => \testclk_cnt0_carry__0_n_3\,
      CO(3) => \testclk_cnt0_carry__0_n_4\,
      CO(2) => \testclk_cnt0_carry__0_n_5\,
      CO(1) => \testclk_cnt0_carry__0_n_6\,
      CO(0) => \testclk_cnt0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_testclk_cnt0_carry__0_O_UNCONNECTED\(7),
      O(6 downto 0) => \p_0_in__0\(15 downto 9),
      S(7) => '0',
      S(6 downto 0) => testclk_cnt_reg(15 downto 9)
    );
\testclk_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => testclk_cnt_reg(0),
      O => \p_0_in__0\(0)
    );
\testclk_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => testclk_div4(3),
      I1 => testclk_en,
      I2 => testclk_div4(2),
      I3 => testclk_div4(1),
      I4 => testclk_div4(0),
      O => \testclk_cnt[15]_i_1_n_0\
    );
\testclk_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(0),
      Q => testclk_cnt_reg(0),
      R => testclk_div40
    );
\testclk_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(10),
      Q => testclk_cnt_reg(10),
      R => testclk_div40
    );
\testclk_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(11),
      Q => testclk_cnt_reg(11),
      R => testclk_div40
    );
\testclk_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(12),
      Q => testclk_cnt_reg(12),
      R => testclk_div40
    );
\testclk_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(13),
      Q => testclk_cnt_reg(13),
      R => testclk_div40
    );
\testclk_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(14),
      Q => testclk_cnt_reg(14),
      R => testclk_div40
    );
\testclk_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(15),
      Q => testclk_cnt_reg(15),
      R => testclk_div40
    );
\testclk_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(1),
      Q => testclk_cnt_reg(1),
      R => testclk_div40
    );
\testclk_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(2),
      Q => testclk_cnt_reg(2),
      R => testclk_div40
    );
\testclk_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(3),
      Q => testclk_cnt_reg(3),
      R => testclk_div40
    );
\testclk_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(4),
      Q => testclk_cnt_reg(4),
      R => testclk_div40
    );
\testclk_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(5),
      Q => testclk_cnt_reg(5),
      R => testclk_div40
    );
\testclk_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(6),
      Q => testclk_cnt_reg(6),
      R => testclk_div40
    );
\testclk_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(7),
      Q => testclk_cnt_reg(7),
      R => testclk_div40
    );
\testclk_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(8),
      Q => testclk_cnt_reg(8),
      R => testclk_div40
    );
\testclk_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => \testclk_cnt[15]_i_1_n_0\,
      D => \p_0_in__0\(9),
      Q => testclk_cnt_reg(9),
      R => testclk_div40
    );
\testclk_div4[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tstclk_rst_dly2,
      I1 => RST_I,
      O => testclk_div40
    );
\testclk_div4_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => '1',
      D => testclk_div4(3),
      Q => testclk_div4(0),
      S => testclk_div40
    );
\testclk_div4_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => '1',
      D => testclk_div4(0),
      Q => testclk_div4(1),
      R => testclk_div40
    );
\testclk_div4_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => '1',
      D => testclk_div4(1),
      Q => testclk_div4(2),
      R => testclk_div40
    );
\testclk_div4_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => DIFF_CLKIN_bufg,
      CE => '1',
      D => testclk_div4(2),
      Q => testclk_div4(3),
      R => testclk_div40
    );
tstclk_rst_dly1_reg: unisim.vcomponents.FDRE
     port map (
      C => DIFF_CLKIN_bufg,
      CE => '1',
      D => \state_reg_n_0_[0]\,
      Q => tstclk_rst_dly1,
      R => '0'
    );
tstclk_rst_dly2_reg: unisim.vcomponents.FDRE
     port map (
      C => DIFF_CLKIN_bufg,
      CE => '1',
      D => tstclk_rst_dly1,
      Q => tstclk_rst_dly2,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_CLK_125MHZ_ctr_0 is
  port (
    FREQ_CNT_O : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RST_I : in STD_LOGIC;
    REF_CLK_I : in STD_LOGIC;
    DIFF_CLKIN_P : in STD_LOGIC;
    DIFF_CLKIN_N : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_CLK_125MHZ_ctr_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_CLK_125MHZ_ctr_0 : entity is "system_CLK_125MHZ_ctr_0,diff_freq_counter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_CLK_125MHZ_ctr_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_CLK_125MHZ_ctr_0 : entity is "diff_freq_counter,Vivado 2019.2";
end system_CLK_125MHZ_ctr_0;

architecture STRUCTURE of system_CLK_125MHZ_ctr_0 is
begin
inst: entity work.system_CLK_125MHZ_ctr_0_diff_freq_counter
     port map (
      DIFF_CLKIN_N => DIFF_CLKIN_N,
      DIFF_CLKIN_P => DIFF_CLKIN_P,
      FREQ_CNT_O(15 downto 0) => FREQ_CNT_O(15 downto 0),
      REF_CLK_I => REF_CLK_I,
      RST_I => RST_I
    );
end STRUCTURE;
