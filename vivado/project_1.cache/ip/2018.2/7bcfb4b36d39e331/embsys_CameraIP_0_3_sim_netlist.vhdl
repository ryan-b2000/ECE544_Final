-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Jun  3 10:02:41 2019
-- Host        : DESKTOP-976N9II running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ embsys_CameraIP_0_3_sim_netlist.vhdl
-- Design      : embsys_CameraIP_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_capture is
  port (
    capture_we : out STD_LOGIC;
    capture_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    OV7670_PCLK : in STD_LOGIC;
    sysreset_n_0 : in STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    OV7670_HREF : in STD_LOGIC;
    OV7670_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_capture;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_capture is
  signal \address[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \address[10]_i_1_n_0\ : STD_LOGIC;
  signal \address[11]_i_1_n_0\ : STD_LOGIC;
  signal \address[12]_i_1_n_0\ : STD_LOGIC;
  signal \address[13]_i_1_n_0\ : STD_LOGIC;
  signal \address[14]_i_1_n_0\ : STD_LOGIC;
  signal \address[15]_i_1_n_0\ : STD_LOGIC;
  signal \address[16]_i_1_n_0\ : STD_LOGIC;
  signal \address[17]_i_1_n_0\ : STD_LOGIC;
  signal \address[18]_i_1_n_0\ : STD_LOGIC;
  signal \address[1]_i_1_n_0\ : STD_LOGIC;
  signal \address[2]_i_1_n_0\ : STD_LOGIC;
  signal \address[3]_i_1_n_0\ : STD_LOGIC;
  signal \address[4]_i_1_n_0\ : STD_LOGIC;
  signal \address[5]_i_1_n_0\ : STD_LOGIC;
  signal \address[6]_i_1_n_0\ : STD_LOGIC;
  signal \address[7]_i_1_n_0\ : STD_LOGIC;
  signal \address[8]_i_1_n_0\ : STD_LOGIC;
  signal \address[9]_i_1_n_0\ : STD_LOGIC;
  signal \address_next[0]_i_1_n_0\ : STD_LOGIC;
  signal \address_next[0]_i_3_n_0\ : STD_LOGIC;
  signal \address_next[0]_i_4_n_0\ : STD_LOGIC;
  signal \address_next[0]_i_5_n_0\ : STD_LOGIC;
  signal \address_next[0]_i_6_n_0\ : STD_LOGIC;
  signal \address_next[0]_i_7_n_0\ : STD_LOGIC;
  signal \address_next[12]_i_2_n_0\ : STD_LOGIC;
  signal \address_next[12]_i_3_n_0\ : STD_LOGIC;
  signal \address_next[12]_i_4_n_0\ : STD_LOGIC;
  signal \address_next[12]_i_5_n_0\ : STD_LOGIC;
  signal \address_next[16]_i_2_n_0\ : STD_LOGIC;
  signal \address_next[16]_i_3_n_0\ : STD_LOGIC;
  signal \address_next[16]_i_4_n_0\ : STD_LOGIC;
  signal \address_next[4]_i_2_n_0\ : STD_LOGIC;
  signal \address_next[4]_i_3_n_0\ : STD_LOGIC;
  signal \address_next[4]_i_4_n_0\ : STD_LOGIC;
  signal \address_next[4]_i_5_n_0\ : STD_LOGIC;
  signal \address_next[8]_i_2_n_0\ : STD_LOGIC;
  signal \address_next[8]_i_3_n_0\ : STD_LOGIC;
  signal \address_next[8]_i_4_n_0\ : STD_LOGIC;
  signal \address_next[8]_i_5_n_0\ : STD_LOGIC;
  signal address_next_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \address_next_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \address_next_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \address_next_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \address_next_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \address_next_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \address_next_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \address_next_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \address_next_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \address_next_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \address_next_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \address_next_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \address_next_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \address_next_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \address_next_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \address_next_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \address_next_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal d_latch : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal d_latch_0 : STD_LOGIC;
  signal \dout[11]_i_1_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \wr_hold[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_hold[1]_i_1_n_0\ : STD_LOGIC;
  signal \wr_hold_reg_n_0_[0]\ : STD_LOGIC;
  signal \NLW_address_next_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address_next_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \address[11]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \address[12]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \address[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \address[14]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \address[15]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \address[16]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \address[17]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \address[18]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \address[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \address[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \address[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \address[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \address[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \address[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \address[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \address[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \address[9]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wr_hold[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wr_hold[1]_i_1\ : label is "soft_lutpair0";
begin
\address[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(0),
      I1 => OV7670_VSYNC,
      O => \address[0]_i_1__0_n_0\
    );
\address[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(10),
      I1 => OV7670_VSYNC,
      O => \address[10]_i_1_n_0\
    );
\address[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(11),
      I1 => OV7670_VSYNC,
      O => \address[11]_i_1_n_0\
    );
\address[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(12),
      I1 => OV7670_VSYNC,
      O => \address[12]_i_1_n_0\
    );
\address[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(13),
      I1 => OV7670_VSYNC,
      O => \address[13]_i_1_n_0\
    );
\address[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(14),
      I1 => OV7670_VSYNC,
      O => \address[14]_i_1_n_0\
    );
\address[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(15),
      I1 => OV7670_VSYNC,
      O => \address[15]_i_1_n_0\
    );
\address[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(16),
      I1 => OV7670_VSYNC,
      O => \address[16]_i_1_n_0\
    );
\address[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(17),
      I1 => OV7670_VSYNC,
      O => \address[17]_i_1_n_0\
    );
\address[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(18),
      I1 => OV7670_VSYNC,
      O => \address[18]_i_1_n_0\
    );
\address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(1),
      I1 => OV7670_VSYNC,
      O => \address[1]_i_1_n_0\
    );
\address[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(2),
      I1 => OV7670_VSYNC,
      O => \address[2]_i_1_n_0\
    );
\address[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(3),
      I1 => OV7670_VSYNC,
      O => \address[3]_i_1_n_0\
    );
\address[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(4),
      I1 => OV7670_VSYNC,
      O => \address[4]_i_1_n_0\
    );
\address[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(5),
      I1 => OV7670_VSYNC,
      O => \address[5]_i_1_n_0\
    );
\address[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(6),
      I1 => OV7670_VSYNC,
      O => \address[6]_i_1_n_0\
    );
\address[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(7),
      I1 => OV7670_VSYNC,
      O => \address[7]_i_1_n_0\
    );
\address[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(8),
      I1 => OV7670_VSYNC,
      O => \address[8]_i_1_n_0\
    );
\address[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(9),
      I1 => OV7670_VSYNC,
      O => \address[9]_i_1_n_0\
    );
\address_next[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => OV7670_VSYNC,
      I1 => p_0_in,
      O => \address_next[0]_i_1_n_0\
    );
\address_next[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => OV7670_VSYNC,
      O => \address_next[0]_i_3_n_0\
    );
\address_next[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(3),
      I1 => OV7670_VSYNC,
      O => \address_next[0]_i_4_n_0\
    );
\address_next[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(2),
      I1 => OV7670_VSYNC,
      O => \address_next[0]_i_5_n_0\
    );
\address_next[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(1),
      I1 => OV7670_VSYNC,
      O => \address_next[0]_i_6_n_0\
    );
\address_next[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => address_next_reg(0),
      I1 => OV7670_VSYNC,
      O => \address_next[0]_i_7_n_0\
    );
\address_next[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(15),
      I1 => OV7670_VSYNC,
      O => \address_next[12]_i_2_n_0\
    );
\address_next[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(14),
      I1 => OV7670_VSYNC,
      O => \address_next[12]_i_3_n_0\
    );
\address_next[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(13),
      I1 => OV7670_VSYNC,
      O => \address_next[12]_i_4_n_0\
    );
\address_next[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(12),
      I1 => OV7670_VSYNC,
      O => \address_next[12]_i_5_n_0\
    );
\address_next[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(18),
      I1 => OV7670_VSYNC,
      O => \address_next[16]_i_2_n_0\
    );
\address_next[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(17),
      I1 => OV7670_VSYNC,
      O => \address_next[16]_i_3_n_0\
    );
\address_next[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(16),
      I1 => OV7670_VSYNC,
      O => \address_next[16]_i_4_n_0\
    );
\address_next[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(7),
      I1 => OV7670_VSYNC,
      O => \address_next[4]_i_2_n_0\
    );
\address_next[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(6),
      I1 => OV7670_VSYNC,
      O => \address_next[4]_i_3_n_0\
    );
\address_next[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(5),
      I1 => OV7670_VSYNC,
      O => \address_next[4]_i_4_n_0\
    );
\address_next[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(4),
      I1 => OV7670_VSYNC,
      O => \address_next[4]_i_5_n_0\
    );
\address_next[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(11),
      I1 => OV7670_VSYNC,
      O => \address_next[8]_i_2_n_0\
    );
\address_next[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(10),
      I1 => OV7670_VSYNC,
      O => \address_next[8]_i_3_n_0\
    );
\address_next[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(9),
      I1 => OV7670_VSYNC,
      O => \address_next[8]_i_4_n_0\
    );
\address_next[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => address_next_reg(8),
      I1 => OV7670_VSYNC,
      O => \address_next[8]_i_5_n_0\
    );
\address_next_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[0]_i_2_n_7\,
      Q => address_next_reg(0)
    );
\address_next_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_next_reg[0]_i_2_n_0\,
      CO(2) => \address_next_reg[0]_i_2_n_1\,
      CO(1) => \address_next_reg[0]_i_2_n_2\,
      CO(0) => \address_next_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \address_next[0]_i_3_n_0\,
      O(3) => \address_next_reg[0]_i_2_n_4\,
      O(2) => \address_next_reg[0]_i_2_n_5\,
      O(1) => \address_next_reg[0]_i_2_n_6\,
      O(0) => \address_next_reg[0]_i_2_n_7\,
      S(3) => \address_next[0]_i_4_n_0\,
      S(2) => \address_next[0]_i_5_n_0\,
      S(1) => \address_next[0]_i_6_n_0\,
      S(0) => \address_next[0]_i_7_n_0\
    );
\address_next_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[8]_i_1_n_5\,
      Q => address_next_reg(10)
    );
\address_next_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[8]_i_1_n_4\,
      Q => address_next_reg(11)
    );
\address_next_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[12]_i_1_n_7\,
      Q => address_next_reg(12)
    );
\address_next_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_next_reg[8]_i_1_n_0\,
      CO(3) => \address_next_reg[12]_i_1_n_0\,
      CO(2) => \address_next_reg[12]_i_1_n_1\,
      CO(1) => \address_next_reg[12]_i_1_n_2\,
      CO(0) => \address_next_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_next_reg[12]_i_1_n_4\,
      O(2) => \address_next_reg[12]_i_1_n_5\,
      O(1) => \address_next_reg[12]_i_1_n_6\,
      O(0) => \address_next_reg[12]_i_1_n_7\,
      S(3) => \address_next[12]_i_2_n_0\,
      S(2) => \address_next[12]_i_3_n_0\,
      S(1) => \address_next[12]_i_4_n_0\,
      S(0) => \address_next[12]_i_5_n_0\
    );
\address_next_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[12]_i_1_n_6\,
      Q => address_next_reg(13)
    );
\address_next_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[12]_i_1_n_5\,
      Q => address_next_reg(14)
    );
\address_next_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[12]_i_1_n_4\,
      Q => address_next_reg(15)
    );
\address_next_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[16]_i_1_n_7\,
      Q => address_next_reg(16)
    );
\address_next_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_next_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_address_next_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address_next_reg[16]_i_1_n_2\,
      CO(0) => \address_next_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_address_next_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \address_next_reg[16]_i_1_n_5\,
      O(1) => \address_next_reg[16]_i_1_n_6\,
      O(0) => \address_next_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2) => \address_next[16]_i_2_n_0\,
      S(1) => \address_next[16]_i_3_n_0\,
      S(0) => \address_next[16]_i_4_n_0\
    );
\address_next_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[16]_i_1_n_6\,
      Q => address_next_reg(17)
    );
\address_next_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[16]_i_1_n_5\,
      Q => address_next_reg(18)
    );
\address_next_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[0]_i_2_n_6\,
      Q => address_next_reg(1)
    );
\address_next_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[0]_i_2_n_5\,
      Q => address_next_reg(2)
    );
\address_next_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[0]_i_2_n_4\,
      Q => address_next_reg(3)
    );
\address_next_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[4]_i_1_n_7\,
      Q => address_next_reg(4)
    );
\address_next_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_next_reg[0]_i_2_n_0\,
      CO(3) => \address_next_reg[4]_i_1_n_0\,
      CO(2) => \address_next_reg[4]_i_1_n_1\,
      CO(1) => \address_next_reg[4]_i_1_n_2\,
      CO(0) => \address_next_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_next_reg[4]_i_1_n_4\,
      O(2) => \address_next_reg[4]_i_1_n_5\,
      O(1) => \address_next_reg[4]_i_1_n_6\,
      O(0) => \address_next_reg[4]_i_1_n_7\,
      S(3) => \address_next[4]_i_2_n_0\,
      S(2) => \address_next[4]_i_3_n_0\,
      S(1) => \address_next[4]_i_4_n_0\,
      S(0) => \address_next[4]_i_5_n_0\
    );
\address_next_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[4]_i_1_n_6\,
      Q => address_next_reg(5)
    );
\address_next_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[4]_i_1_n_5\,
      Q => address_next_reg(6)
    );
\address_next_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[4]_i_1_n_4\,
      Q => address_next_reg(7)
    );
\address_next_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[8]_i_1_n_7\,
      Q => address_next_reg(8)
    );
\address_next_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_next_reg[4]_i_1_n_0\,
      CO(3) => \address_next_reg[8]_i_1_n_0\,
      CO(2) => \address_next_reg[8]_i_1_n_1\,
      CO(1) => \address_next_reg[8]_i_1_n_2\,
      CO(0) => \address_next_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_next_reg[8]_i_1_n_4\,
      O(2) => \address_next_reg[8]_i_1_n_5\,
      O(1) => \address_next_reg[8]_i_1_n_6\,
      O(0) => \address_next_reg[8]_i_1_n_7\,
      S(3) => \address_next[8]_i_2_n_0\,
      S(2) => \address_next[8]_i_3_n_0\,
      S(1) => \address_next[8]_i_4_n_0\,
      S(0) => \address_next[8]_i_5_n_0\
    );
\address_next_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => \address_next[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_next_reg[8]_i_1_n_6\,
      Q => address_next_reg(9)
    );
\address_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[0]_i_1__0_n_0\,
      Q => capture_addr(0)
    );
\address_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[10]_i_1_n_0\,
      Q => capture_addr(10)
    );
\address_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[11]_i_1_n_0\,
      Q => capture_addr(11)
    );
\address_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[12]_i_1_n_0\,
      Q => capture_addr(12)
    );
\address_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[13]_i_1_n_0\,
      Q => capture_addr(13)
    );
\address_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[14]_i_1_n_0\,
      Q => capture_addr(14)
    );
\address_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[15]_i_1_n_0\,
      Q => capture_addr(15)
    );
\address_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[16]_i_1_n_0\,
      Q => capture_addr(16)
    );
\address_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[17]_i_1_n_0\,
      Q => capture_addr(17)
    );
\address_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[18]_i_1_n_0\,
      Q => capture_addr(18)
    );
\address_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[1]_i_1_n_0\,
      Q => capture_addr(1)
    );
\address_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[2]_i_1_n_0\,
      Q => capture_addr(2)
    );
\address_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[3]_i_1_n_0\,
      Q => capture_addr(3)
    );
\address_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[4]_i_1_n_0\,
      Q => capture_addr(4)
    );
\address_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[5]_i_1_n_0\,
      Q => capture_addr(5)
    );
\address_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[6]_i_1_n_0\,
      Q => capture_addr(6)
    );
\address_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[7]_i_1_n_0\,
      Q => capture_addr(7)
    );
\address_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[8]_i_1_n_0\,
      Q => capture_addr(8)
    );
\address_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \address[9]_i_1_n_0\,
      Q => capture_addr(9)
    );
\d_latch[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => OV7670_VSYNC,
      O => d_latch_0
    );
\d_latch_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(0),
      Q => d_latch(0)
    );
\d_latch_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => d_latch(2),
      Q => d_latch(10)
    );
\d_latch_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => d_latch(4),
      Q => d_latch(12)
    );
\d_latch_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => d_latch(5),
      Q => d_latch(13)
    );
\d_latch_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => d_latch(6),
      Q => d_latch(14)
    );
\d_latch_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => d_latch(7),
      Q => d_latch(15)
    );
\d_latch_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(1),
      Q => d_latch(1)
    );
\d_latch_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(2),
      Q => d_latch(2)
    );
\d_latch_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(3),
      Q => d_latch(3)
    );
\d_latch_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(4),
      Q => d_latch(4)
    );
\d_latch_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(5),
      Q => d_latch(5)
    );
\d_latch_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(6),
      Q => d_latch(6)
    );
\d_latch_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => OV7670_DATA(7),
      Q => d_latch(7)
    );
\d_latch_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => d_latch(0),
      Q => d_latch(8)
    );
\d_latch_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => d_latch_0,
      CLR => sysreset_n_0,
      D => d_latch(1),
      Q => d_latch(9)
    );
\dout[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sysreset_n,
      I1 => OV7670_VSYNC,
      O => \dout[11]_i_1_n_0\
    );
\dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(1),
      Q => capture_data(0),
      R => '0'
    );
\dout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(14),
      Q => capture_data(10),
      R => '0'
    );
\dout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(15),
      Q => capture_data(11),
      R => '0'
    );
\dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(2),
      Q => capture_data(1),
      R => '0'
    );
\dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(3),
      Q => capture_data(2),
      R => '0'
    );
\dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(4),
      Q => capture_data(3),
      R => '0'
    );
\dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(7),
      Q => capture_data(4),
      R => '0'
    );
\dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(8),
      Q => capture_data(5),
      R => '0'
    );
\dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(9),
      Q => capture_data(6),
      R => '0'
    );
\dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(10),
      Q => capture_data(7),
      R => '0'
    );
\dout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(12),
      Q => capture_data(8),
      R => '0'
    );
\dout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => d_latch(13),
      Q => capture_data(9),
      R => '0'
    );
we_reg: unisim.vcomponents.FDRE
     port map (
      C => OV7670_PCLK,
      CE => \dout[11]_i_1_n_0\,
      D => p_0_in,
      Q => capture_we,
      R => '0'
    );
\wr_hold[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \wr_hold_reg_n_0_[0]\,
      I1 => OV7670_HREF,
      I2 => OV7670_VSYNC,
      O => \wr_hold[0]_i_1_n_0\
    );
\wr_hold[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \wr_hold_reg_n_0_[0]\,
      I1 => OV7670_VSYNC,
      O => \wr_hold[1]_i_1_n_0\
    );
\wr_hold_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \wr_hold[0]_i_1_n_0\,
      Q => \wr_hold_reg_n_0_[0]\
    );
\wr_hold_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => OV7670_PCLK,
      CE => '1',
      CLR => sysreset_n_0,
      D => \wr_hold[1]_i_1_n_0\,
      Q => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_sender is
  port (
    OV7670_SIOC : out STD_LOGIC;
    \busy_sr_reg[0]_0\ : out STD_LOGIC;
    \busy_sr_reg[0]_1\ : out STD_LOGIC;
    \busy_sr_reg[0]_2\ : out STD_LOGIC;
    \busy_sr_reg[0]_3\ : out STD_LOGIC;
    OV7670_SIOD : out STD_LOGIC;
    \divider_reg[1]_0\ : out STD_LOGIC;
    clk50 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sysreset_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_sender;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_sender is
  signal \^ov7670_sioc\ : STD_LOGIC;
  signal OV7670_SIOD_INST_0_i_1_n_0 : STD_LOGIC;
  signal busy_sr0 : STD_LOGIC;
  signal \busy_sr[31]_i_3_n_0\ : STD_LOGIC;
  signal \busy_sr[31]_i_4_n_0\ : STD_LOGIC;
  signal \busy_sr[31]_i_5_n_0\ : STD_LOGIC;
  signal \^busy_sr_reg[0]_0\ : STD_LOGIC;
  signal \^busy_sr_reg[0]_1\ : STD_LOGIC;
  signal \^busy_sr_reg[0]_2\ : STD_LOGIC;
  signal \^busy_sr_reg[0]_3\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[0]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \busy_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal data_sr : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \data_sr[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[12]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[13]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[14]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[15]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[16]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[17]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[18]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[19]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[20]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[21]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[22]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[23]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[24]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[25]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[26]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[27]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[28]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[29]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[30]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[31]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[10]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[11]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[12]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[13]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[14]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[15]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[16]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[17]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[18]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[19]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[20]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[21]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[22]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[23]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[24]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[25]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[26]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[27]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[28]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[29]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[30]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[7]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[8]\ : STD_LOGIC;
  signal \data_sr_reg_n_0_[9]\ : STD_LOGIC;
  signal \divider[7]_i_1_n_0\ : STD_LOGIC;
  signal \^divider_reg[1]_0\ : STD_LOGIC;
  signal \divider_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_1_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal sioc_i_1_n_0 : STD_LOGIC;
  signal sioc_i_2_n_0 : STD_LOGIC;
  signal sioc_i_3_n_0 : STD_LOGIC;
  signal sioc_i_4_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \busy_sr[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \busy_sr[11]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \busy_sr[12]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \busy_sr[13]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \busy_sr[14]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \busy_sr[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \busy_sr[16]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \busy_sr[17]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \busy_sr[18]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \busy_sr[19]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \busy_sr[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \busy_sr[21]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \busy_sr[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \busy_sr[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \busy_sr[24]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \busy_sr[25]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \busy_sr[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \busy_sr[27]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \busy_sr[28]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \busy_sr[29]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \busy_sr[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \busy_sr[30]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \busy_sr[31]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \busy_sr[31]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \busy_sr[31]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \busy_sr[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \busy_sr[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \busy_sr[5]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \busy_sr[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \busy_sr[7]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \busy_sr[8]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \busy_sr[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \data_sr[10]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_sr[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_sr[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_sr[13]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_sr[14]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_sr[15]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \data_sr[16]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \data_sr[17]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_sr[18]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_sr[19]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_sr[20]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \data_sr[21]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \data_sr[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \data_sr[23]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \data_sr[24]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_sr[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_sr[26]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_sr[27]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \data_sr[28]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_sr[29]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_sr[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \data_sr[30]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_sr[31]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \data_sr[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \data_sr[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \data_sr[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \data_sr[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \data_sr[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \data_sr[8]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \data_sr[9]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \divider[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \divider[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \divider[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \divider[7]_i_2\ : label is "soft_lutpair12";
begin
  OV7670_SIOC <= \^ov7670_sioc\;
  \busy_sr_reg[0]_0\ <= \^busy_sr_reg[0]_0\;
  \busy_sr_reg[0]_1\ <= \^busy_sr_reg[0]_1\;
  \busy_sr_reg[0]_2\ <= \^busy_sr_reg[0]_2\;
  \busy_sr_reg[0]_3\ <= \^busy_sr_reg[0]_3\;
  \divider_reg[1]_0\ <= \^divider_reg[1]_0\;
OV7670_SIOD_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data_sr(31),
      I1 => OV7670_SIOD_INST_0_i_1_n_0,
      O => OV7670_SIOD
    );
OV7670_SIOD_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0BBB0BB0000B0BB"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[28]\,
      I1 => \busy_sr_reg_n_0_[29]\,
      I2 => p_1_in_0(0),
      I3 => p_1_in_0(1),
      I4 => \busy_sr_reg_n_0_[11]\,
      I5 => \busy_sr_reg_n_0_[10]\,
      O => OV7670_SIOD_INST_0_i_1_n_0
    );
\address[18]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sysreset_n,
      O => \^divider_reg[1]_0\
    );
\busy_sr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \^busy_sr_reg[0]_3\,
      I1 => \^busy_sr_reg[0]_2\,
      I2 => \^busy_sr_reg[0]_1\,
      I3 => \^busy_sr_reg[0]_0\,
      I4 => p_2_in,
      O => p_1_in(0)
    );
\busy_sr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[9]\,
      I2 => p_1_in(0),
      O => p_1_in(10)
    );
\busy_sr[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[10]\,
      I2 => p_1_in(0),
      O => p_1_in(11)
    );
\busy_sr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[11]\,
      I2 => p_1_in(0),
      O => p_1_in(12)
    );
\busy_sr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[12]\,
      I2 => p_1_in(0),
      O => p_1_in(13)
    );
\busy_sr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[13]\,
      I2 => p_1_in(0),
      O => p_1_in(14)
    );
\busy_sr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[14]\,
      I2 => p_1_in(0),
      O => p_1_in(15)
    );
\busy_sr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[15]\,
      I2 => p_1_in(0),
      O => p_1_in(16)
    );
\busy_sr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[16]\,
      I2 => p_1_in(0),
      O => p_1_in(17)
    );
\busy_sr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[17]\,
      I2 => p_1_in(0),
      O => p_1_in(18)
    );
\busy_sr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[18]\,
      I2 => p_1_in(0),
      O => p_1_in(19)
    );
\busy_sr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[0]\,
      I2 => p_1_in(0),
      O => p_1_in(1)
    );
\busy_sr[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => p_1_in_0(0),
      I2 => p_1_in(0),
      O => p_1_in(20)
    );
\busy_sr[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => p_1_in_0(1),
      I2 => p_1_in(0),
      O => p_1_in(21)
    );
\busy_sr[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[21]\,
      I2 => p_1_in(0),
      O => p_1_in(22)
    );
\busy_sr[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[22]\,
      I2 => p_1_in(0),
      O => p_1_in(23)
    );
\busy_sr[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[23]\,
      I2 => p_1_in(0),
      O => p_1_in(24)
    );
\busy_sr[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[24]\,
      I2 => p_1_in(0),
      O => p_1_in(25)
    );
\busy_sr[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[25]\,
      I2 => p_1_in(0),
      O => p_1_in(26)
    );
\busy_sr[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[26]\,
      I2 => p_1_in(0),
      O => p_1_in(27)
    );
\busy_sr[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[27]\,
      I2 => p_1_in(0),
      O => p_1_in(28)
    );
\busy_sr[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[28]\,
      I2 => p_1_in(0),
      O => p_1_in(29)
    );
\busy_sr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[1]\,
      I2 => p_1_in(0),
      O => p_1_in(2)
    );
\busy_sr[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[29]\,
      I2 => p_1_in(0),
      O => p_1_in(30)
    );
\busy_sr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
        port map (
      I0 => \busy_sr[31]_i_3_n_0\,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => p_2_in,
      I4 => \busy_sr[31]_i_4_n_0\,
      I5 => p_1_in(0),
      O => busy_sr0
    );
\busy_sr[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[30]\,
      I2 => p_1_in(0),
      O => p_1_in(31)
    );
\busy_sr[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \divider_reg__0\(4),
      I1 => \divider_reg__0\(2),
      I2 => \divider_reg__0\(0),
      I3 => \divider_reg__0\(1),
      I4 => \divider_reg__0\(3),
      I5 => \divider_reg__0\(5),
      O => \busy_sr[31]_i_3_n_0\
    );
\busy_sr[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \divider_reg__0\(2),
      I1 => \divider_reg__0\(3),
      I2 => \divider_reg__0\(0),
      I3 => \divider_reg__0\(1),
      I4 => \busy_sr[31]_i_5_n_0\,
      O => \busy_sr[31]_i_4_n_0\
    );
\busy_sr[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \divider_reg__0\(5),
      I1 => \divider_reg__0\(4),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \busy_sr[31]_i_5_n_0\
    );
\busy_sr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[2]\,
      I2 => p_1_in(0),
      O => p_1_in(3)
    );
\busy_sr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[3]\,
      I2 => p_1_in(0),
      O => p_1_in(4)
    );
\busy_sr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[4]\,
      I2 => p_1_in(0),
      O => p_1_in(5)
    );
\busy_sr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[5]\,
      I2 => p_1_in(0),
      O => p_1_in(6)
    );
\busy_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[6]\,
      I2 => p_1_in(0),
      O => p_1_in(7)
    );
\busy_sr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[7]\,
      I2 => p_1_in(0),
      O => p_1_in(8)
    );
\busy_sr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => p_2_in,
      I1 => \busy_sr_reg_n_0_[8]\,
      I2 => p_1_in(0),
      O => p_1_in(9)
    );
\busy_sr_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(0),
      Q => \busy_sr_reg_n_0_[0]\
    );
\busy_sr_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(10),
      Q => \busy_sr_reg_n_0_[10]\
    );
\busy_sr_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(11),
      Q => \busy_sr_reg_n_0_[11]\
    );
\busy_sr_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(12),
      Q => \busy_sr_reg_n_0_[12]\
    );
\busy_sr_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(13),
      Q => \busy_sr_reg_n_0_[13]\
    );
\busy_sr_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(14),
      Q => \busy_sr_reg_n_0_[14]\
    );
\busy_sr_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(15),
      Q => \busy_sr_reg_n_0_[15]\
    );
\busy_sr_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(16),
      Q => \busy_sr_reg_n_0_[16]\
    );
\busy_sr_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(17),
      Q => \busy_sr_reg_n_0_[17]\
    );
\busy_sr_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(18),
      Q => \busy_sr_reg_n_0_[18]\
    );
\busy_sr_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(19),
      Q => p_1_in_0(0)
    );
\busy_sr_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(1),
      Q => \busy_sr_reg_n_0_[1]\
    );
\busy_sr_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(20),
      Q => p_1_in_0(1)
    );
\busy_sr_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(21),
      Q => \busy_sr_reg_n_0_[21]\
    );
\busy_sr_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(22),
      Q => \busy_sr_reg_n_0_[22]\
    );
\busy_sr_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(23),
      Q => \busy_sr_reg_n_0_[23]\
    );
\busy_sr_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(24),
      Q => \busy_sr_reg_n_0_[24]\
    );
\busy_sr_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(25),
      Q => \busy_sr_reg_n_0_[25]\
    );
\busy_sr_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(26),
      Q => \busy_sr_reg_n_0_[26]\
    );
\busy_sr_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(27),
      Q => \busy_sr_reg_n_0_[27]\
    );
\busy_sr_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(28),
      Q => \busy_sr_reg_n_0_[28]\
    );
\busy_sr_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(29),
      Q => \busy_sr_reg_n_0_[29]\
    );
\busy_sr_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(2),
      Q => \busy_sr_reg_n_0_[2]\
    );
\busy_sr_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(30),
      Q => \busy_sr_reg_n_0_[30]\
    );
\busy_sr_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(31),
      Q => p_2_in
    );
\busy_sr_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(3),
      Q => \busy_sr_reg_n_0_[3]\
    );
\busy_sr_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(4),
      Q => \busy_sr_reg_n_0_[4]\
    );
\busy_sr_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(5),
      Q => \busy_sr_reg_n_0_[5]\
    );
\busy_sr_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(6),
      Q => \busy_sr_reg_n_0_[6]\
    );
\busy_sr_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(7),
      Q => \busy_sr_reg_n_0_[7]\
    );
\busy_sr_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(8),
      Q => \busy_sr_reg_n_0_[8]\
    );
\busy_sr_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => busy_sr0,
      CLR => \^divider_reg[1]_0\,
      D => p_1_in(9),
      Q => \busy_sr_reg_n_0_[9]\
    );
\data_sr[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[9]\,
      I1 => p_2_in,
      I2 => Q(7),
      O => \data_sr[10]_i_1_n_0\
    );
\data_sr[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[10]\,
      O => \data_sr[11]_i_1_n_0\
    );
\data_sr[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[11]\,
      I1 => p_2_in,
      I2 => Q(8),
      O => \data_sr[12]_i_1_n_0\
    );
\data_sr[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[12]\,
      I1 => p_2_in,
      I2 => Q(9),
      O => \data_sr[13]_i_1_n_0\
    );
\data_sr[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[13]\,
      I1 => p_2_in,
      I2 => Q(10),
      O => \data_sr[14]_i_1_n_0\
    );
\data_sr[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[14]\,
      I1 => p_2_in,
      I2 => Q(11),
      O => \data_sr[15]_i_1_n_0\
    );
\data_sr[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[15]\,
      I1 => p_2_in,
      I2 => Q(12),
      O => \data_sr[16]_i_1_n_0\
    );
\data_sr[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[16]\,
      I1 => p_2_in,
      I2 => Q(13),
      O => \data_sr[17]_i_1_n_0\
    );
\data_sr[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[17]\,
      I1 => p_2_in,
      I2 => Q(14),
      O => \data_sr[18]_i_1_n_0\
    );
\data_sr[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[18]\,
      I1 => p_2_in,
      I2 => Q(15),
      O => \data_sr[19]_i_1_n_0\
    );
\data_sr[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[19]\,
      O => \data_sr[20]_i_1_n_0\
    );
\data_sr[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[20]\,
      O => \data_sr[21]_i_1_n_0\
    );
\data_sr[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \data_sr_reg_n_0_[21]\,
      I1 => p_2_in,
      O => \data_sr[22]_i_1_n_0\
    );
\data_sr[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[22]\,
      O => \data_sr[23]_i_1_n_0\
    );
\data_sr[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[23]\,
      O => \data_sr[24]_i_1_n_0\
    );
\data_sr[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[24]\,
      O => \data_sr[25]_i_1_n_0\
    );
\data_sr[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[25]\,
      O => \data_sr[26]_i_1_n_0\
    );
\data_sr[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \data_sr_reg_n_0_[26]\,
      I1 => p_2_in,
      O => \data_sr[27]_i_1_n_0\
    );
\data_sr[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[27]\,
      O => \data_sr[28]_i_1_n_0\
    );
\data_sr[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[28]\,
      O => \data_sr[29]_i_1_n_0\
    );
\data_sr[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[1]\,
      O => \data_sr[2]_i_1_n_0\
    );
\data_sr[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \data_sr_reg_n_0_[29]\,
      O => \data_sr[30]_i_1_n_0\
    );
\data_sr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \data_sr_reg_n_0_[30]\,
      I1 => p_2_in,
      O => \data_sr[31]_i_1_n_0\
    );
\data_sr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[2]\,
      I1 => p_2_in,
      I2 => Q(0),
      O => \data_sr[3]_i_1_n_0\
    );
\data_sr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[3]\,
      I1 => p_2_in,
      I2 => Q(1),
      O => \data_sr[4]_i_1_n_0\
    );
\data_sr[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[4]\,
      I1 => p_2_in,
      I2 => Q(2),
      O => \data_sr[5]_i_1_n_0\
    );
\data_sr[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[5]\,
      I1 => p_2_in,
      I2 => Q(3),
      O => \data_sr[6]_i_1_n_0\
    );
\data_sr[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[6]\,
      I1 => p_2_in,
      I2 => Q(4),
      O => \data_sr[7]_i_1_n_0\
    );
\data_sr[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[7]\,
      I1 => p_2_in,
      I2 => Q(5),
      O => \data_sr[8]_i_1_n_0\
    );
\data_sr[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \data_sr_reg_n_0_[8]\,
      I1 => p_2_in,
      I2 => Q(6),
      O => \data_sr[9]_i_1_n_0\
    );
\data_sr_reg[10]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[10]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[10]\
    );
\data_sr_reg[11]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[11]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[11]\
    );
\data_sr_reg[12]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[12]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[12]\
    );
\data_sr_reg[13]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[13]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[13]\
    );
\data_sr_reg[14]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[14]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[14]\
    );
\data_sr_reg[15]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[15]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[15]\
    );
\data_sr_reg[16]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[16]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[16]\
    );
\data_sr_reg[17]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[17]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[17]\
    );
\data_sr_reg[18]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[18]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[18]\
    );
\data_sr_reg[19]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[19]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[19]\
    );
\data_sr_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => p_2_in,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[1]\
    );
\data_sr_reg[20]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[20]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[20]\
    );
\data_sr_reg[21]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[21]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[21]\
    );
\data_sr_reg[22]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[22]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[22]\
    );
\data_sr_reg[23]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[23]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[23]\
    );
\data_sr_reg[24]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[24]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[24]\
    );
\data_sr_reg[25]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[25]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[25]\
    );
\data_sr_reg[26]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[26]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[26]\
    );
\data_sr_reg[27]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[27]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[27]\
    );
\data_sr_reg[28]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[28]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[28]\
    );
\data_sr_reg[29]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[29]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[29]\
    );
\data_sr_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[2]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[2]\
    );
\data_sr_reg[30]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[30]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[30]\
    );
\data_sr_reg[31]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[31]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => data_sr(31)
    );
\data_sr_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[3]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[3]\
    );
\data_sr_reg[4]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[4]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[4]\
    );
\data_sr_reg[5]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[5]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[5]\
    );
\data_sr_reg[6]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[6]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[6]\
    );
\data_sr_reg[7]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[7]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[7]\
    );
\data_sr_reg[8]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[8]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[8]\
    );
\data_sr_reg[9]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => busy_sr0,
      D => \data_sr[9]_i_1_n_0\,
      PRE => \^divider_reg[1]_0\,
      Q => \data_sr_reg_n_0_[9]\
    );
\divider[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \divider_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\divider[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \divider_reg__0\(0),
      I1 => \divider_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\divider[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \divider_reg__0\(1),
      I1 => \divider_reg__0\(0),
      I2 => \divider_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\divider[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \divider_reg__0\(2),
      I1 => \divider_reg__0\(0),
      I2 => \divider_reg__0\(1),
      I3 => \divider_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\divider[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \divider_reg__0\(3),
      I1 => \divider_reg__0\(1),
      I2 => \divider_reg__0\(0),
      I3 => \divider_reg__0\(2),
      I4 => \divider_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\divider[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \divider_reg__0\(4),
      I1 => \divider_reg__0\(2),
      I2 => \divider_reg__0\(0),
      I3 => \divider_reg__0\(1),
      I4 => \divider_reg__0\(3),
      I5 => \divider_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\divider[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \busy_sr[31]_i_3_n_0\,
      I1 => p_0_in(0),
      O => \p_0_in__0\(6)
    );
\divider[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \^busy_sr_reg[0]_0\,
      I1 => \^busy_sr_reg[0]_1\,
      I2 => \^busy_sr_reg[0]_2\,
      I3 => \^busy_sr_reg[0]_3\,
      I4 => \busy_sr[31]_i_4_n_0\,
      I5 => p_2_in,
      O => \divider[7]_i_1_n_0\
    );
\divider[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \busy_sr[31]_i_3_n_0\,
      I2 => p_0_in(1),
      O => \p_0_in__0\(7)
    );
\divider_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      D => \p_0_in__0\(0),
      PRE => \^divider_reg[1]_0\,
      Q => \divider_reg__0\(0)
    );
\divider_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      CLR => \^divider_reg[1]_0\,
      D => \p_0_in__0\(1),
      Q => \divider_reg__0\(1)
    );
\divider_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      CLR => \^divider_reg[1]_0\,
      D => \p_0_in__0\(2),
      Q => \divider_reg__0\(2)
    );
\divider_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      CLR => \^divider_reg[1]_0\,
      D => \p_0_in__0\(3),
      Q => \divider_reg__0\(3)
    );
\divider_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      CLR => \^divider_reg[1]_0\,
      D => \p_0_in__0\(4),
      Q => \divider_reg__0\(4)
    );
\divider_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      CLR => \^divider_reg[1]_0\,
      D => \p_0_in__0\(5),
      Q => \divider_reg__0\(5)
    );
\divider_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      CLR => \^divider_reg[1]_0\,
      D => \p_0_in__0\(6),
      Q => p_0_in(0)
    );
\divider_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk50,
      CE => \divider[7]_i_1_n_0\,
      CLR => \^divider_reg[1]_0\,
      D => \p_0_in__0\(7),
      Q => p_0_in(1)
    );
led_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(7),
      I3 => Q(6),
      O => \^busy_sr_reg[0]_0\
    );
led_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(3),
      I3 => Q(2),
      O => \^busy_sr_reg[0]_1\
    );
led_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(13),
      I1 => Q(12),
      I2 => Q(15),
      I3 => Q(14),
      O => \^busy_sr_reg[0]_2\
    );
led_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      I2 => Q(11),
      I3 => Q(10),
      O => \^busy_sr_reg[0]_3\
    );
sioc_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => sioc_i_2_n_0,
      I1 => sysreset_n,
      I2 => \^ov7670_sioc\,
      O => sioc_i_1_n_0
    );
sioc_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAFFFEFFFEFAFAF"
    )
        port map (
      I0 => sioc_i_3_n_0,
      I1 => sioc_i_4_n_0,
      I2 => p_2_in,
      I3 => \busy_sr_reg_n_0_[0]\,
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => sioc_i_2_n_0
    );
sioc_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC0000000000000B"
    )
        port map (
      I0 => p_0_in(0),
      I1 => \busy_sr_reg_n_0_[30]\,
      I2 => \busy_sr_reg_n_0_[0]\,
      I3 => \busy_sr_reg_n_0_[1]\,
      I4 => \busy_sr_reg_n_0_[29]\,
      I5 => \busy_sr_reg_n_0_[2]\,
      O => sioc_i_3_n_0
    );
sioc_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \busy_sr_reg_n_0_[30]\,
      I1 => \busy_sr_reg_n_0_[29]\,
      I2 => \busy_sr_reg_n_0_[2]\,
      O => sioc_i_4_n_0
    );
sioc_reg: unisim.vcomponents.FDRE
     port map (
      C => clk50,
      CE => '1',
      D => sioc_i_1_n_0,
      Q => \^ov7670_sioc\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga is
  port (
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    clk25 : in STD_LOGIC;
    sysreset_n_0 : in STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga is
  signal \address[0]_i_1_n_0\ : STD_LOGIC;
  signal \address[0]_i_3_n_0\ : STD_LOGIC;
  signal \address[0]_i_4_n_0\ : STD_LOGIC;
  signal \address[0]_i_5_n_0\ : STD_LOGIC;
  signal \address[0]_i_6_n_0\ : STD_LOGIC;
  signal \address[0]_i_7_n_0\ : STD_LOGIC;
  signal \address[12]_i_2_n_0\ : STD_LOGIC;
  signal \address[12]_i_3_n_0\ : STD_LOGIC;
  signal \address[12]_i_4_n_0\ : STD_LOGIC;
  signal \address[12]_i_5_n_0\ : STD_LOGIC;
  signal \address[16]_i_2_n_0\ : STD_LOGIC;
  signal \address[16]_i_3_n_0\ : STD_LOGIC;
  signal \address[16]_i_4_n_0\ : STD_LOGIC;
  signal \address[4]_i_2_n_0\ : STD_LOGIC;
  signal \address[4]_i_3_n_0\ : STD_LOGIC;
  signal \address[4]_i_4_n_0\ : STD_LOGIC;
  signal \address[4]_i_5_n_0\ : STD_LOGIC;
  signal \address[8]_i_2_n_0\ : STD_LOGIC;
  signal \address[8]_i_3_n_0\ : STD_LOGIC;
  signal \address[8]_i_4_n_0\ : STD_LOGIC;
  signal \address[8]_i_5_n_0\ : STD_LOGIC;
  signal address_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \address_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \address_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \address_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \address_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \address_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \address_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \address_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \address_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \address_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal blank : STD_LOGIC;
  signal blank_i_1_n_0 : STD_LOGIC;
  signal blank_i_2_n_0 : STD_LOGIC;
  signal hCounter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \hCounter[9]_i_2_n_0\ : STD_LOGIC;
  signal hCounter_0 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal vCounter : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \vCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[1]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[2]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[3]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[3]_i_2_n_0\ : STD_LOGIC;
  signal \vCounter[4]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[5]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[6]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[7]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[8]_i_1_n_0\ : STD_LOGIC;
  signal \vCounter[8]_i_2_n_0\ : STD_LOGIC;
  signal \vCounter[9]_i_2_n_0\ : STD_LOGIC;
  signal \vCounter[9]_i_3_n_0\ : STD_LOGIC;
  signal vCounter_1 : STD_LOGIC;
  signal vga_hsync_i_1_n_0 : STD_LOGIC;
  signal vga_hsync_i_2_n_0 : STD_LOGIC;
  signal vga_hsync_i_3_n_0 : STD_LOGIC;
  signal \vga_red[3]_i_1_n_0\ : STD_LOGIC;
  signal vga_vsync_i_1_n_0 : STD_LOGIC;
  signal vga_vsync_i_2_n_0 : STD_LOGIC;
  signal vga_vsync_i_3_n_0 : STD_LOGIC;
  signal \NLW_address_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_address_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \hCounter[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \hCounter[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \hCounter[2]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \hCounter[3]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \hCounter[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \hCounter[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \hCounter[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \hCounter[9]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \vCounter[1]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \vCounter[3]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \vCounter[4]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \vCounter[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \vCounter[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \vCounter[8]_i_2\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of vga_vsync_i_2 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of vga_vsync_i_3 : label is "soft_lutpair49";
begin
\address[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBBF"
    )
        port map (
      I0 => blank_i_2_n_0,
      I1 => hCounter(9),
      I2 => hCounter(7),
      I3 => hCounter(8),
      O => \address[0]_i_1_n_0\
    );
\address[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(0),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[0]_i_3_n_0\
    );
\address[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(3),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[0]_i_4_n_0\
    );
\address[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(2),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[0]_i_5_n_0\
    );
\address[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(1),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[0]_i_6_n_0\
    );
\address[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000015555555"
    )
        port map (
      I0 => address_reg(0),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[0]_i_7_n_0\
    );
\address[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(15),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[12]_i_2_n_0\
    );
\address[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(14),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[12]_i_3_n_0\
    );
\address[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(13),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[12]_i_4_n_0\
    );
\address[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(12),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[12]_i_5_n_0\
    );
\address[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(18),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[16]_i_2_n_0\
    );
\address[16]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(17),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[16]_i_3_n_0\
    );
\address[16]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(16),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[16]_i_4_n_0\
    );
\address[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(7),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[4]_i_2_n_0\
    );
\address[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(6),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[4]_i_3_n_0\
    );
\address[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(5),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[4]_i_4_n_0\
    );
\address[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(4),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[4]_i_5_n_0\
    );
\address[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(11),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[8]_i_2_n_0\
    );
\address[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(10),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[8]_i_3_n_0\
    );
\address[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(9),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[8]_i_4_n_0\
    );
\address[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AAAAAAA"
    )
        port map (
      I0 => address_reg(8),
      I1 => vCounter(7),
      I2 => vCounter(5),
      I3 => vCounter(6),
      I4 => vCounter(8),
      I5 => vCounter(9),
      O => \address[8]_i_5_n_0\
    );
\address_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[0]_i_2_n_7\,
      Q => address_reg(0)
    );
\address_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \address_reg[0]_i_2_n_0\,
      CO(2) => \address_reg[0]_i_2_n_1\,
      CO(1) => \address_reg[0]_i_2_n_2\,
      CO(0) => \address_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \address[0]_i_3_n_0\,
      O(3) => \address_reg[0]_i_2_n_4\,
      O(2) => \address_reg[0]_i_2_n_5\,
      O(1) => \address_reg[0]_i_2_n_6\,
      O(0) => \address_reg[0]_i_2_n_7\,
      S(3) => \address[0]_i_4_n_0\,
      S(2) => \address[0]_i_5_n_0\,
      S(1) => \address[0]_i_6_n_0\,
      S(0) => \address[0]_i_7_n_0\
    );
\address_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[8]_i_1_n_5\,
      Q => address_reg(10)
    );
\address_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[8]_i_1_n_4\,
      Q => address_reg(11)
    );
\address_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[12]_i_1_n_7\,
      Q => address_reg(12)
    );
\address_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[8]_i_1_n_0\,
      CO(3) => \address_reg[12]_i_1_n_0\,
      CO(2) => \address_reg[12]_i_1_n_1\,
      CO(1) => \address_reg[12]_i_1_n_2\,
      CO(0) => \address_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[12]_i_1_n_4\,
      O(2) => \address_reg[12]_i_1_n_5\,
      O(1) => \address_reg[12]_i_1_n_6\,
      O(0) => \address_reg[12]_i_1_n_7\,
      S(3) => \address[12]_i_2_n_0\,
      S(2) => \address[12]_i_3_n_0\,
      S(1) => \address[12]_i_4_n_0\,
      S(0) => \address[12]_i_5_n_0\
    );
\address_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[12]_i_1_n_6\,
      Q => address_reg(13)
    );
\address_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[12]_i_1_n_5\,
      Q => address_reg(14)
    );
\address_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[12]_i_1_n_4\,
      Q => address_reg(15)
    );
\address_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[16]_i_1_n_7\,
      Q => address_reg(16)
    );
\address_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[12]_i_1_n_0\,
      CO(3 downto 2) => \NLW_address_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \address_reg[16]_i_1_n_2\,
      CO(0) => \address_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_address_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \address_reg[16]_i_1_n_5\,
      O(1) => \address_reg[16]_i_1_n_6\,
      O(0) => \address_reg[16]_i_1_n_7\,
      S(3) => '0',
      S(2) => \address[16]_i_2_n_0\,
      S(1) => \address[16]_i_3_n_0\,
      S(0) => \address[16]_i_4_n_0\
    );
\address_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[16]_i_1_n_6\,
      Q => address_reg(17)
    );
\address_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[16]_i_1_n_5\,
      Q => address_reg(18)
    );
\address_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[0]_i_2_n_6\,
      Q => address_reg(1)
    );
\address_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[0]_i_2_n_5\,
      Q => address_reg(2)
    );
\address_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[0]_i_2_n_4\,
      Q => address_reg(3)
    );
\address_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[4]_i_1_n_7\,
      Q => address_reg(4)
    );
\address_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[0]_i_2_n_0\,
      CO(3) => \address_reg[4]_i_1_n_0\,
      CO(2) => \address_reg[4]_i_1_n_1\,
      CO(1) => \address_reg[4]_i_1_n_2\,
      CO(0) => \address_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[4]_i_1_n_4\,
      O(2) => \address_reg[4]_i_1_n_5\,
      O(1) => \address_reg[4]_i_1_n_6\,
      O(0) => \address_reg[4]_i_1_n_7\,
      S(3) => \address[4]_i_2_n_0\,
      S(2) => \address[4]_i_3_n_0\,
      S(1) => \address[4]_i_4_n_0\,
      S(0) => \address[4]_i_5_n_0\
    );
\address_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[4]_i_1_n_6\,
      Q => address_reg(5)
    );
\address_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[4]_i_1_n_5\,
      Q => address_reg(6)
    );
\address_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[4]_i_1_n_4\,
      Q => address_reg(7)
    );
\address_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[8]_i_1_n_7\,
      Q => address_reg(8)
    );
\address_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \address_reg[4]_i_1_n_0\,
      CO(3) => \address_reg[8]_i_1_n_0\,
      CO(2) => \address_reg[8]_i_1_n_1\,
      CO(1) => \address_reg[8]_i_1_n_2\,
      CO(0) => \address_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \address_reg[8]_i_1_n_4\,
      O(2) => \address_reg[8]_i_1_n_5\,
      O(1) => \address_reg[8]_i_1_n_6\,
      O(0) => \address_reg[8]_i_1_n_7\,
      S(3) => \address[8]_i_2_n_0\,
      S(2) => \address[8]_i_3_n_0\,
      S(1) => \address[8]_i_4_n_0\,
      S(0) => \address[8]_i_5_n_0\
    );
\address_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => \address[0]_i_1_n_0\,
      CLR => sysreset_n_0,
      D => \address_reg[8]_i_1_n_6\,
      Q => address_reg(9)
    );
blank_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => hCounter(9),
      I1 => hCounter(7),
      I2 => hCounter(8),
      I3 => blank_i_2_n_0,
      O => blank_i_1_n_0
    );
blank_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAAAAAAA"
    )
        port map (
      I0 => vCounter(9),
      I1 => vCounter(8),
      I2 => vCounter(6),
      I3 => vCounter(5),
      I4 => vCounter(7),
      O => blank_i_2_n_0
    );
blank_reg: unisim.vcomponents.FDPE
     port map (
      C => clk25,
      CE => '1',
      D => blank_i_1_n_0,
      PRE => sysreset_n_0,
      Q => blank
    );
\frame_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(0),
      Q => frame_addr(0),
      R => '0'
    );
\frame_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(10),
      Q => frame_addr(10),
      R => '0'
    );
\frame_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(11),
      Q => frame_addr(11),
      R => '0'
    );
\frame_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(12),
      Q => frame_addr(12),
      R => '0'
    );
\frame_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(13),
      Q => frame_addr(13),
      R => '0'
    );
\frame_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(14),
      Q => frame_addr(14),
      R => '0'
    );
\frame_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(15),
      Q => frame_addr(15),
      R => '0'
    );
\frame_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(16),
      Q => frame_addr(16),
      R => '0'
    );
\frame_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(17),
      Q => frame_addr(17),
      R => '0'
    );
\frame_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(18),
      Q => frame_addr(18),
      R => '0'
    );
\frame_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(1),
      Q => frame_addr(1),
      R => '0'
    );
\frame_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(2),
      Q => frame_addr(2),
      R => '0'
    );
\frame_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(3),
      Q => frame_addr(3),
      R => '0'
    );
\frame_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(4),
      Q => frame_addr(4),
      R => '0'
    );
\frame_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(5),
      Q => frame_addr(5),
      R => '0'
    );
\frame_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(6),
      Q => frame_addr(6),
      R => '0'
    );
\frame_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(7),
      Q => frame_addr(7),
      R => '0'
    );
\frame_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(8),
      Q => frame_addr(8),
      R => '0'
    );
\frame_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => address_reg(9),
      Q => frame_addr(9),
      R => '0'
    );
\hCounter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => hCounter(0),
      O => hCounter_0(0)
    );
\hCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => hCounter(0),
      I1 => hCounter(1),
      O => hCounter_0(1)
    );
\hCounter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => hCounter(1),
      I1 => hCounter(0),
      I2 => hCounter(2),
      O => hCounter_0(2)
    );
\hCounter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => hCounter(2),
      I1 => hCounter(0),
      I2 => hCounter(1),
      I3 => hCounter(3),
      O => hCounter_0(3)
    );
\hCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => hCounter(3),
      I1 => hCounter(1),
      I2 => hCounter(0),
      I3 => hCounter(2),
      I4 => hCounter(4),
      O => hCounter_0(4)
    );
\hCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA55515555"
    )
        port map (
      I0 => \hCounter[9]_i_2_n_0\,
      I1 => hCounter(8),
      I2 => hCounter(7),
      I3 => hCounter(6),
      I4 => hCounter(9),
      I5 => hCounter(5),
      O => hCounter_0(5)
    );
\hCounter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => hCounter(5),
      I1 => \hCounter[9]_i_2_n_0\,
      I2 => hCounter(6),
      O => hCounter_0(6)
    );
\hCounter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF40"
    )
        port map (
      I0 => \hCounter[9]_i_2_n_0\,
      I1 => hCounter(5),
      I2 => hCounter(6),
      I3 => hCounter(7),
      O => hCounter_0(7)
    );
\hCounter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC3CCCCCC4"
    )
        port map (
      I0 => hCounter(9),
      I1 => hCounter(8),
      I2 => hCounter(5),
      I3 => hCounter(6),
      I4 => hCounter(7),
      I5 => \hCounter[9]_i_2_n_0\,
      O => hCounter_0(8)
    );
\hCounter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCC6CCCCCCCCCC4"
    )
        port map (
      I0 => hCounter(8),
      I1 => hCounter(9),
      I2 => hCounter(6),
      I3 => hCounter(5),
      I4 => \hCounter[9]_i_2_n_0\,
      I5 => hCounter(7),
      O => hCounter_0(9)
    );
\hCounter[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => hCounter(3),
      I1 => hCounter(1),
      I2 => hCounter(0),
      I3 => hCounter(2),
      I4 => hCounter(4),
      O => \hCounter[9]_i_2_n_0\
    );
\hCounter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(0),
      Q => hCounter(0)
    );
\hCounter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(1),
      Q => hCounter(1)
    );
\hCounter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(2),
      Q => hCounter(2)
    );
\hCounter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(3),
      Q => hCounter(3)
    );
\hCounter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(4),
      Q => hCounter(4)
    );
\hCounter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(5),
      Q => hCounter(5)
    );
\hCounter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(6),
      Q => hCounter(6)
    );
\hCounter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(7),
      Q => hCounter(7)
    );
\hCounter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(8),
      Q => hCounter(8)
    );
\hCounter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => '1',
      CLR => sysreset_n_0,
      D => hCounter_0(9),
      Q => hCounter(9)
    );
\vCounter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF0000DFFF"
    )
        port map (
      I0 => vCounter(9),
      I1 => \vCounter[3]_i_2_n_0\,
      I2 => vCounter(3),
      I3 => vCounter(2),
      I4 => vCounter(0),
      I5 => vCounter(1),
      O => \vCounter[0]_i_1_n_0\
    );
\vCounter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vCounter(0),
      I1 => vCounter(1),
      O => \vCounter[1]_i_1_n_0\
    );
\vCounter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3333CCCCCCCCC4CC"
    )
        port map (
      I0 => vCounter(3),
      I1 => vCounter(2),
      I2 => \vCounter[3]_i_2_n_0\,
      I3 => vCounter(9),
      I4 => vCounter(1),
      I5 => vCounter(0),
      O => \vCounter[2]_i_1_n_0\
    );
\vCounter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666CCCCCCCCC4CC"
    )
        port map (
      I0 => vCounter(2),
      I1 => vCounter(3),
      I2 => \vCounter[3]_i_2_n_0\,
      I3 => vCounter(9),
      I4 => vCounter(1),
      I5 => vCounter(0),
      O => \vCounter[3]_i_1_n_0\
    );
\vCounter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => vCounter(4),
      I1 => vCounter(7),
      I2 => vCounter(8),
      I3 => vCounter(6),
      I4 => vCounter(5),
      O => \vCounter[3]_i_2_n_0\
    );
\vCounter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => vCounter(2),
      I1 => vCounter(3),
      I2 => vCounter(0),
      I3 => vCounter(1),
      I4 => vCounter(4),
      O => \vCounter[4]_i_1_n_0\
    );
\vCounter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => vCounter(4),
      I1 => vCounter(1),
      I2 => vCounter(0),
      I3 => vCounter(3),
      I4 => vCounter(2),
      I5 => vCounter(5),
      O => \vCounter[5]_i_1_n_0\
    );
\vCounter[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => vCounter(5),
      I1 => \vCounter[8]_i_2_n_0\,
      I2 => vCounter(6),
      O => \vCounter[6]_i_1_n_0\
    );
\vCounter[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F708"
    )
        port map (
      I0 => vCounter(5),
      I1 => vCounter(6),
      I2 => \vCounter[8]_i_2_n_0\,
      I3 => vCounter(7),
      O => \vCounter[7]_i_1_n_0\
    );
\vCounter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F0080"
    )
        port map (
      I0 => vCounter(6),
      I1 => vCounter(5),
      I2 => vCounter(7),
      I3 => \vCounter[8]_i_2_n_0\,
      I4 => vCounter(8),
      O => \vCounter[8]_i_1_n_0\
    );
\vCounter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => vCounter(2),
      I1 => vCounter(3),
      I2 => vCounter(0),
      I3 => vCounter(1),
      I4 => vCounter(4),
      O => \vCounter[8]_i_2_n_0\
    );
\vCounter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => hCounter(5),
      I1 => hCounter(9),
      I2 => hCounter(6),
      I3 => hCounter(7),
      I4 => hCounter(8),
      I5 => \hCounter[9]_i_2_n_0\,
      O => vCounter_1
    );
\vCounter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFAAFFAAFFAABFAA"
    )
        port map (
      I0 => \vCounter[9]_i_3_n_0\,
      I1 => vCounter(3),
      I2 => vCounter(2),
      I3 => vCounter(9),
      I4 => vCounter(0),
      I5 => vCounter(1),
      O => \vCounter[9]_i_2_n_0\
    );
\vCounter[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FF0505CCCC0505"
    )
        port map (
      I0 => \vCounter[8]_i_2_n_0\,
      I1 => \vCounter[3]_i_2_n_0\,
      I2 => vga_vsync_i_2_n_0,
      I3 => vCounter(4),
      I4 => vCounter(9),
      I5 => vCounter(0),
      O => \vCounter[9]_i_3_n_0\
    );
\vCounter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[0]_i_1_n_0\,
      Q => vCounter(0)
    );
\vCounter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[1]_i_1_n_0\,
      Q => vCounter(1)
    );
\vCounter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[2]_i_1_n_0\,
      Q => vCounter(2)
    );
\vCounter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[3]_i_1_n_0\,
      Q => vCounter(3)
    );
\vCounter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[4]_i_1_n_0\,
      Q => vCounter(4)
    );
\vCounter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[5]_i_1_n_0\,
      Q => vCounter(5)
    );
\vCounter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[6]_i_1_n_0\,
      Q => vCounter(6)
    );
\vCounter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[7]_i_1_n_0\,
      Q => vCounter(7)
    );
\vCounter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[8]_i_1_n_0\,
      Q => vCounter(8)
    );
\vCounter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk25,
      CE => vCounter_1,
      CLR => sysreset_n_0,
      D => \vCounter[9]_i_2_n_0\,
      Q => vCounter(9)
    );
\vga_blue_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(0),
      Q => vga_blue(0),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_blue_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(1),
      Q => vga_blue(1),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_blue_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(2),
      Q => vga_blue(2),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_blue_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(3),
      Q => vga_blue(3),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_green_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(4),
      Q => vga_green(0),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_green_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(5),
      Q => vga_green(1),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_green_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(6),
      Q => vga_green(2),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_green_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(7),
      Q => vga_green(3),
      R => \vga_red[3]_i_1_n_0\
    );
vga_hsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAAAAAAFEAAAAAAF"
    )
        port map (
      I0 => vga_hsync_i_2_n_0,
      I1 => hCounter(2),
      I2 => hCounter(5),
      I3 => hCounter(6),
      I4 => hCounter(4),
      I5 => hCounter(3),
      O => vga_hsync_i_1_n_0
    );
vga_hsync_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFA8FFFFFFFFFF"
    )
        port map (
      I0 => vga_hsync_i_3_n_0,
      I1 => hCounter(1),
      I2 => hCounter(0),
      I3 => hCounter(7),
      I4 => hCounter(8),
      I5 => hCounter(9),
      O => vga_hsync_i_2_n_0
    );
vga_hsync_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => hCounter(4),
      I1 => hCounter(6),
      I2 => hCounter(5),
      O => vga_hsync_i_3_n_0
    );
vga_hsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => vga_hsync_i_1_n_0,
      Q => vga_hsync,
      R => '0'
    );
\vga_red[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => blank,
      I1 => sysreset_n,
      O => \vga_red[3]_i_1_n_0\
    );
\vga_red_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(8),
      Q => vga_red(0),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_red_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(9),
      Q => vga_red(1),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_red_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(10),
      Q => vga_red(2),
      R => \vga_red[3]_i_1_n_0\
    );
\vga_red_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => frame_pixel(11),
      Q => vga_red(3),
      R => \vga_red[3]_i_1_n_0\
    );
vga_vsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF45FFFFFFFF"
    )
        port map (
      I0 => vCounter(1),
      I1 => vCounter(0),
      I2 => vCounter(2),
      I3 => vga_vsync_i_2_n_0,
      I4 => vga_vsync_i_3_n_0,
      I5 => vCounter(3),
      O => vga_vsync_i_1_n_0
    );
vga_vsync_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => vCounter(7),
      I1 => vCounter(5),
      I2 => vCounter(6),
      I3 => vCounter(8),
      O => vga_vsync_i_2_n_0
    );
vga_vsync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => vCounter(9),
      I1 => vCounter(4),
      I2 => vCounter(1),
      I3 => vCounter(2),
      O => vga_vsync_i_3_n_0
    );
vga_vsync_reg: unisim.vcomponents.FDRE
     port map (
      C => clk25,
      CE => sysreset_n,
      D => vga_vsync_i_1_n_0,
      Q => vga_vsync,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_controller is
  port (
    OV7670_XCLK : out STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    \busy_sr_reg[0]\ : out STD_LOGIC;
    \busy_sr_reg[0]_0\ : out STD_LOGIC;
    \busy_sr_reg[0]_1\ : out STD_LOGIC;
    \busy_sr_reg[0]_2\ : out STD_LOGIC;
    OV7670_SIOD : out STD_LOGIC;
    \divider_reg[1]\ : out STD_LOGIC;
    clk50 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sysreset_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_controller;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_controller is
  signal \^ov7670_xclk\ : STD_LOGIC;
  signal sys_clk_i_1_n_0 : STD_LOGIC;
begin
  OV7670_XCLK <= \^ov7670_xclk\;
sender: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_i2c_sender
     port map (
      OV7670_SIOC => OV7670_SIOC,
      OV7670_SIOD => OV7670_SIOD,
      Q(15 downto 0) => Q(15 downto 0),
      \busy_sr_reg[0]_0\ => \busy_sr_reg[0]\,
      \busy_sr_reg[0]_1\ => \busy_sr_reg[0]_0\,
      \busy_sr_reg[0]_2\ => \busy_sr_reg[0]_1\,
      \busy_sr_reg[0]_3\ => \busy_sr_reg[0]_2\,
      clk50 => clk50,
      \divider_reg[1]_0\ => \divider_reg[1]\,
      sysreset_n => sysreset_n
    );
sys_clk_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ov7670_xclk\,
      O => sys_clk_i_1_n_0
    );
sys_clk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk50,
      CE => '1',
      D => sys_clk_i_1_n_0,
      Q => \^ov7670_xclk\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_wrapper is
  port (
    OV7670_XCLK : out STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    capture_we : out STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    \busy_sr_reg[0]\ : out STD_LOGIC;
    \busy_sr_reg[0]_0\ : out STD_LOGIC;
    \busy_sr_reg[0]_1\ : out STD_LOGIC;
    \busy_sr_reg[0]_2\ : out STD_LOGIC;
    OV7670_SIOD : out STD_LOGIC;
    capture_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    frame_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    clk50 : in STD_LOGIC;
    clk25 : in STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    OV7670_PCLK : in STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    OV7670_HREF : in STD_LOGIC;
    OV7670_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_wrapper;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_wrapper is
  signal controller_n_7 : STD_LOGIC;
begin
capture: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_capture
     port map (
      OV7670_DATA(7 downto 0) => OV7670_DATA(7 downto 0),
      OV7670_HREF => OV7670_HREF,
      OV7670_PCLK => OV7670_PCLK,
      OV7670_VSYNC => OV7670_VSYNC,
      capture_addr(18 downto 0) => capture_addr(18 downto 0),
      capture_data(11 downto 0) => capture_data(11 downto 0),
      capture_we => capture_we,
      sysreset_n => sysreset_n,
      sysreset_n_0 => controller_n_7
    );
controller: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_controller
     port map (
      OV7670_SIOC => OV7670_SIOC,
      OV7670_SIOD => OV7670_SIOD,
      OV7670_XCLK => OV7670_XCLK,
      Q(15 downto 0) => Q(15 downto 0),
      \busy_sr_reg[0]\ => \busy_sr_reg[0]\,
      \busy_sr_reg[0]_0\ => \busy_sr_reg[0]_0\,
      \busy_sr_reg[0]_1\ => \busy_sr_reg[0]_1\,
      \busy_sr_reg[0]_2\ => \busy_sr_reg[0]_2\,
      clk50 => clk50,
      \divider_reg[1]\ => controller_n_7,
      sysreset_n => sysreset_n
    );
vga: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_vga
     port map (
      clk25 => clk25,
      frame_addr(18 downto 0) => frame_addr(18 downto 0),
      frame_pixel(11 downto 0) => frame_pixel(11 downto 0),
      sysreset_n => sysreset_n,
      sysreset_n_0 => controller_n_7,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_hsync => vga_hsync,
      vga_red(3 downto 0) => vga_red(3 downto 0),
      vga_vsync => vga_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0_S00_AXI is
  port (
    led : out STD_LOGIC;
    OV7670_SIOD : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    OV7670_XCLK : out STD_LOGIC;
    capture_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    frame_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    capture_we : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk50 : in STD_LOGIC;
    OV7670_PCLK : in STD_LOGIC;
    OV7670_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk25 : in STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    OV7670_HREF : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0_S00_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal ov7670_n_5 : STD_LOGIC;
  signal ov7670_n_6 : STD_LOGIC;
  signal ov7670_n_7 : STD_LOGIC;
  signal ov7670_n_8 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair51";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_awvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => \^s_axi_wready\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(0),
      I4 => slv_reg1(0),
      I5 => slv_reg0(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(10),
      I4 => slv_reg1(10),
      I5 => slv_reg0(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(11),
      I4 => slv_reg1(11),
      I5 => slv_reg0(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(12),
      I4 => slv_reg1(12),
      I5 => slv_reg0(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(13),
      I4 => slv_reg1(13),
      I5 => slv_reg0(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(14),
      I4 => slv_reg1(14),
      I5 => slv_reg0(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(15),
      I4 => slv_reg1(15),
      I5 => slv_reg0(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(16),
      I4 => slv_reg1(16),
      I5 => slv_reg0(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(17),
      I4 => slv_reg1(17),
      I5 => slv_reg0(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(18),
      I4 => slv_reg1(18),
      I5 => slv_reg0(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(19),
      I4 => slv_reg1(19),
      I5 => slv_reg0(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(1),
      I4 => slv_reg1(1),
      I5 => slv_reg0(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(20),
      I4 => slv_reg1(20),
      I5 => slv_reg0(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(21),
      I4 => slv_reg1(21),
      I5 => slv_reg0(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(22),
      I4 => slv_reg1(22),
      I5 => slv_reg0(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(23),
      I4 => slv_reg1(23),
      I5 => slv_reg0(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(24),
      I4 => slv_reg1(24),
      I5 => slv_reg0(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(25),
      I4 => slv_reg1(25),
      I5 => slv_reg0(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(26),
      I4 => slv_reg1(26),
      I5 => slv_reg0(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(27),
      I4 => slv_reg1(27),
      I5 => slv_reg0(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(28),
      I4 => slv_reg1(28),
      I5 => slv_reg0(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(29),
      I4 => slv_reg1(29),
      I5 => slv_reg0(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(2),
      I4 => slv_reg1(2),
      I5 => slv_reg0(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(30),
      I4 => slv_reg1(30),
      I5 => slv_reg0(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(31),
      I4 => slv_reg1(31),
      I5 => slv_reg0(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(3),
      I4 => slv_reg1(3),
      I5 => slv_reg0(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(4),
      I4 => slv_reg1(4),
      I5 => slv_reg0(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(5),
      I4 => slv_reg1(5),
      I5 => slv_reg0(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(6),
      I4 => slv_reg1(6),
      I5 => slv_reg0(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(7),
      I4 => slv_reg1(7),
      I5 => slv_reg0(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(8),
      I4 => slv_reg1(8),
      I5 => slv_reg0(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF8FB383BC8CB080"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg2(9),
      I4 => slv_reg1(9),
      I5 => slv_reg0(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^s_axi_wready\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
led_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => ov7670_n_5,
      I1 => ov7670_n_6,
      I2 => ov7670_n_7,
      I3 => ov7670_n_8,
      O => led
    );
ov7670: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_OV7670_wrapper
     port map (
      OV7670_DATA(7 downto 0) => OV7670_DATA(7 downto 0),
      OV7670_HREF => OV7670_HREF,
      OV7670_PCLK => OV7670_PCLK,
      OV7670_SIOC => OV7670_SIOC,
      OV7670_SIOD => OV7670_SIOD,
      OV7670_VSYNC => OV7670_VSYNC,
      OV7670_XCLK => OV7670_XCLK,
      Q(15 downto 0) => slv_reg0(15 downto 0),
      \busy_sr_reg[0]\ => ov7670_n_5,
      \busy_sr_reg[0]_0\ => ov7670_n_6,
      \busy_sr_reg[0]_1\ => ov7670_n_7,
      \busy_sr_reg[0]_2\ => ov7670_n_8,
      capture_addr(18 downto 0) => capture_addr(18 downto 0),
      capture_data(11 downto 0) => capture_data(11 downto 0),
      capture_we => capture_we,
      clk25 => clk25,
      clk50 => clk50,
      frame_addr(18 downto 0) => frame_addr(18 downto 0),
      frame_pixel(11 downto 0) => frame_pixel(11 downto 0),
      sysreset_n => sysreset_n,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_hsync => vga_hsync,
      vga_red(3 downto 0) => vga_red(3 downto 0),
      vga_vsync => vga_vsync
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0 is
  port (
    led : out STD_LOGIC;
    OV7670_SIOD : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    OV7670_XCLK : out STD_LOGIC;
    capture_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    frame_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    capture_we : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk50 : in STD_LOGIC;
    OV7670_PCLK : in STD_LOGIC;
    OV7670_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk25 : in STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    OV7670_HREF : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0 is
begin
CameraIP_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0_S00_AXI
     port map (
      OV7670_DATA(7 downto 0) => OV7670_DATA(7 downto 0),
      OV7670_HREF => OV7670_HREF,
      OV7670_PCLK => OV7670_PCLK,
      OV7670_SIOC => OV7670_SIOC,
      OV7670_SIOD => OV7670_SIOD,
      OV7670_VSYNC => OV7670_VSYNC,
      OV7670_XCLK => OV7670_XCLK,
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      capture_addr(18 downto 0) => capture_addr(18 downto 0),
      capture_data(11 downto 0) => capture_data(11 downto 0),
      capture_we => capture_we,
      clk25 => clk25,
      clk50 => clk50,
      frame_addr(18 downto 0) => frame_addr(18 downto 0),
      frame_pixel(11 downto 0) => frame_pixel(11 downto 0),
      led => led,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sysreset_n => sysreset_n,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_hsync => vga_hsync,
      vga_red(3 downto 0) => vga_red(3 downto 0),
      vga_vsync => vga_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk50 : in STD_LOGIC;
    clk25 : in STD_LOGIC;
    sysreset_n : in STD_LOGIC;
    OV7670_VSYNC : in STD_LOGIC;
    OV7670_HREF : in STD_LOGIC;
    OV7670_PCLK : in STD_LOGIC;
    OV7670_DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    OV7670_SIOD : inout STD_LOGIC;
    OV7670_SIOC : out STD_LOGIC;
    OV7670_XCLK : out STD_LOGIC;
    OV7670_RESET : out STD_LOGIC;
    OV7670_PWDN : out STD_LOGIC;
    vga_red : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_green : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_blue : out STD_LOGIC_VECTOR ( 3 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    led : out STD_LOGIC;
    frame_pixel : in STD_LOGIC_VECTOR ( 11 downto 0 );
    frame_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_addr : out STD_LOGIC_VECTOR ( 18 downto 0 );
    capture_data : out STD_LOGIC_VECTOR ( 11 downto 0 );
    capture_we : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "embsys_CameraIP_0_3,CameraIP_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "CameraIP_v1_0,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of OV7670_RESET : signal is "xilinx.com:signal:reset:1.0 OV7670_RESET RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of OV7670_RESET : signal is "XIL_INTERFACENAME OV7670_RESET, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s00_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 50000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_1_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  OV7670_PWDN <= \<const0>\;
  OV7670_RESET <= \<const1>\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_CameraIP_v1_0
     port map (
      OV7670_DATA(7 downto 0) => OV7670_DATA(7 downto 0),
      OV7670_HREF => OV7670_HREF,
      OV7670_PCLK => OV7670_PCLK,
      OV7670_SIOC => OV7670_SIOC,
      OV7670_SIOD => OV7670_SIOD,
      OV7670_VSYNC => OV7670_VSYNC,
      OV7670_XCLK => OV7670_XCLK,
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      capture_addr(18 downto 0) => capture_addr(18 downto 0),
      capture_data(11 downto 0) => capture_data(11 downto 0),
      capture_we => capture_we,
      clk25 => clk25,
      clk50 => clk50,
      frame_addr(18 downto 0) => frame_addr(18 downto 0),
      frame_pixel(11 downto 0) => frame_pixel(11 downto 0),
      led => led,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sysreset_n => sysreset_n,
      vga_blue(3 downto 0) => vga_blue(3 downto 0),
      vga_green(3 downto 0) => vga_green(3 downto 0),
      vga_hsync => vga_hsync,
      vga_red(3 downto 0) => vga_red(3 downto 0),
      vga_vsync => vga_vsync
    );
end STRUCTURE;
