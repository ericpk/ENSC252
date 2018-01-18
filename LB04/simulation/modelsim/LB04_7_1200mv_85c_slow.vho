-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Full Version"

-- DATE "10/17/2017 13:53:13"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TestTimesTen IS
    PORT (
	SW : IN std_logic_vector(5 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0)
	);
END TestTimesTen;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF TestTimesTen IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \stage7|Mux6~0_combout\ : std_logic;
SIGNAL \stage7|Mux5~0_combout\ : std_logic;
SIGNAL \stage7|Mux4~0_combout\ : std_logic;
SIGNAL \stage7|Mux3~0_combout\ : std_logic;
SIGNAL \stage7|Mux1~0_combout\ : std_logic;
SIGNAL \stage7|Mux0~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \stage5|Mux6~0_combout\ : std_logic;
SIGNAL \stage5|Mux5~5_combout\ : std_logic;
SIGNAL \stage5|Mux4~8_combout\ : std_logic;
SIGNAL \stage5|Mux3~2_combout\ : std_logic;
SIGNAL \stage5|Mux2~2_combout\ : std_logic;
SIGNAL \stage5|Mux1~0_combout\ : std_logic;
SIGNAL \stage5|Mux0~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \stage3|Mux6~4_combout\ : std_logic;
SIGNAL \stage3|Mux6~5_combout\ : std_logic;
SIGNAL \stage3|Mux5~2_combout\ : std_logic;
SIGNAL \stage3|Mux5~3_combout\ : std_logic;
SIGNAL \stage3|Mux5~4_combout\ : std_logic;
SIGNAL \stage3|Mux4~4_combout\ : std_logic;
SIGNAL \stage3|Mux4~5_combout\ : std_logic;
SIGNAL \stage3|Mux3~3_combout\ : std_logic;
SIGNAL \stage3|Mux3~2_combout\ : std_logic;
SIGNAL \stage3|Mux3~4_combout\ : std_logic;
SIGNAL \stage3|Mux2~2_combout\ : std_logic;
SIGNAL \stage3|Mux2~3_combout\ : std_logic;
SIGNAL \stage3|Mux2~4_combout\ : std_logic;
SIGNAL \stage3|Mux1~2_combout\ : std_logic;
SIGNAL \stage3|Mux1~3_combout\ : std_logic;
SIGNAL \stage3|Mux1~4_combout\ : std_logic;
SIGNAL \stage3|Mux0~3_combout\ : std_logic;
SIGNAL \stage3|Mux0~2_combout\ : std_logic;
SIGNAL \stage3|Mux0~4_combout\ : std_logic;
SIGNAL \stage0|stage1|Carry~0_combout\ : std_logic;
SIGNAL \stage0|stage2|Carry~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \stage1|Mux6~0_combout\ : std_logic;
SIGNAL \stage1|Mux5~0_combout\ : std_logic;
SIGNAL \stage1|Mux4~0_combout\ : std_logic;
SIGNAL \stage1|Mux3~0_combout\ : std_logic;
SIGNAL \stage1|Mux2~0_combout\ : std_logic;
SIGNAL \stage1|Mux1~0_combout\ : std_logic;
SIGNAL \stage1|Mux0~0_combout\ : std_logic;
SIGNAL \stage3|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage7|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\stage3|ALT_INV_Mux0~4_combout\ <= NOT \stage3|Mux0~4_combout\;
\stage1|ALT_INV_Mux0~0_combout\ <= NOT \stage1|Mux0~0_combout\;
\stage5|ALT_INV_Mux0~0_combout\ <= NOT \stage5|Mux0~0_combout\;
\stage7|ALT_INV_Mux0~0_combout\ <= NOT \stage7|Mux0~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|Mux5~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|Mux4~8_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux6~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux4~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|ALT_INV_Mux0~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: LCCOMB_X114_Y26_N24
\stage7|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Mux6~0_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage7|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y26_N2
\stage7|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Mux5~0_combout\ = (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage7|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y26_N12
\stage7|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Mux4~0_combout\ = (\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage7|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y26_N14
\stage7|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Mux3~0_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage7|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y26_N16
\stage7|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Mux1~0_combout\ = (\SW[0]~input_o\ & ((\SW[2]~input_o\))) # (!\SW[0]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage7|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y26_N26
\stage7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage7|Mux0~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage7|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X114_Y26_N28
\stage5|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Mux6~0_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\ & (\SW[0]~input_o\)) # (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage5|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y26_N10
\stage5|Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Mux5~5_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage5|Mux5~5_combout\);

-- Location: LCCOMB_X114_Y26_N20
\stage5|Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Mux4~8_combout\ = (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage5|Mux4~8_combout\);

-- Location: LCCOMB_X114_Y26_N22
\stage5|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Mux3~2_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\ $ (((!\SW[3]~input_o\ & !\SW[2]~input_o\))))) # (!\SW[1]~input_o\ & (\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage5|Mux3~2_combout\);

-- Location: LCCOMB_X114_Y18_N2
\stage5|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Mux2~2_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((\SW[0]~input_o\) # (!\SW[3]~input_o\))) # (!\SW[1]~input_o\ & (\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[3]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \stage5|Mux2~2_combout\);

-- Location: LCCOMB_X114_Y26_N30
\stage5|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Mux1~0_combout\ = (\SW[0]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage5|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y26_N0
\stage5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage5|Mux0~0_combout\ = (\SW[2]~input_o\ & (((\SW[1]~input_o\) # (\SW[0]~input_o\)) # (!\SW[3]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ $ (((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage5|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y19_N28
\stage3|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux6~4_combout\ = (\SW[3]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[0]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux6~4_combout\);

-- Location: LCCOMB_X114_Y19_N14
\stage3|Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux6~5_combout\ = (\stage3|Mux6~4_combout\ & (\SW[0]~input_o\ $ (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3|Mux6~4_combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage3|Mux6~5_combout\);

-- Location: LCCOMB_X114_Y26_N8
\stage3|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux5~2_combout\ = (!\SW[0]~input_o\ & ((\SW[3]~input_o\ & (\SW[1]~input_o\ & !\SW[2]~input_o\)) # (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & \SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage3|Mux5~2_combout\);

-- Location: LCCOMB_X114_Y26_N18
\stage3|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux5~3_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[2]~input_o\)) # (!\SW[1]~input_o\ & ((!\SW[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \stage3|Mux5~3_combout\);

-- Location: LCCOMB_X114_Y22_N8
\stage3|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux5~4_combout\ = (\SW[4]~input_o\ & ((\stage3|Mux5~3_combout\))) # (!\SW[4]~input_o\ & (\stage3|Mux5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Mux5~2_combout\,
	datab => \stage3|Mux5~3_combout\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux5~4_combout\);

-- Location: LCCOMB_X114_Y19_N8
\stage3|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux4~4_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & \SW[4]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux4~4_combout\);

-- Location: LCCOMB_X114_Y19_N2
\stage3|Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux4~5_combout\ = (\stage3|Mux4~4_combout\ & ((\SW[1]~input_o\ & (\SW[0]~input_o\ & \SW[3]~input_o\)) # (!\SW[1]~input_o\ & (\SW[0]~input_o\ $ (\SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Mux4~4_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \stage3|Mux4~5_combout\);

-- Location: LCCOMB_X114_Y19_N10
\stage3|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux3~3_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & (!\SW[0]~input_o\ & !\SW[4]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[4]~input_o\ & (!\SW[1]~input_o\)) # (!\SW[4]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux3~3_combout\);

-- Location: LCCOMB_X114_Y19_N24
\stage3|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux3~2_combout\ = (\SW[2]~input_o\ & (\SW[0]~input_o\ $ (((\SW[1]~input_o\) # (\SW[4]~input_o\))))) # (!\SW[2]~input_o\ & (\SW[0]~input_o\ & ((\SW[1]~input_o\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux3~2_combout\);

-- Location: LCCOMB_X114_Y19_N4
\stage3|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux3~4_combout\ = (\SW[3]~input_o\ & (\stage3|Mux3~3_combout\)) # (!\SW[3]~input_o\ & ((\stage3|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Mux3~3_combout\,
	datab => \stage3|Mux3~2_combout\,
	datad => \SW[3]~input_o\,
	combout => \stage3|Mux3~4_combout\);

-- Location: LCCOMB_X114_Y19_N6
\stage3|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux2~2_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[4]~input_o\) # (!\SW[0]~input_o\))) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\) # (!\SW[4]~input_o\))))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ $ (\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux2~2_combout\);

-- Location: LCCOMB_X114_Y19_N16
\stage3|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux2~3_combout\ = (\SW[1]~input_o\ & (((!\SW[4]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[4]~input_o\) # ((!\SW[2]~input_o\ & \SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux2~3_combout\);

-- Location: LCCOMB_X114_Y19_N18
\stage3|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux2~4_combout\ = (\SW[3]~input_o\ & ((\stage3|Mux2~3_combout\))) # (!\SW[3]~input_o\ & (\stage3|Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Mux2~2_combout\,
	datab => \stage3|Mux2~3_combout\,
	datad => \SW[3]~input_o\,
	combout => \stage3|Mux2~4_combout\);

-- Location: LCCOMB_X114_Y19_N12
\stage3|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux1~2_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & ((\SW[0]~input_o\) # (\SW[4]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux1~2_combout\);

-- Location: LCCOMB_X114_Y19_N22
\stage3|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux1~3_combout\ = (\SW[2]~input_o\ & ((\SW[1]~input_o\ & ((!\SW[4]~input_o\))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[4]~input_o\)))) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ $ ((!\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux1~3_combout\);

-- Location: LCCOMB_X114_Y19_N0
\stage3|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux1~4_combout\ = (\SW[3]~input_o\ & ((\stage3|Mux1~3_combout\))) # (!\SW[3]~input_o\ & (\stage3|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage3|Mux1~2_combout\,
	datac => \stage3|Mux1~3_combout\,
	datad => \SW[3]~input_o\,
	combout => \stage3|Mux1~4_combout\);

-- Location: LCCOMB_X114_Y19_N20
\stage3|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux0~3_combout\ = (\SW[2]~input_o\ & ((\SW[4]~input_o\) # (\SW[1]~input_o\ $ (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\ & ((\SW[4]~input_o\) # (!\SW[1]~input_o\))) # (!\SW[0]~input_o\ & ((!\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux0~3_combout\);

-- Location: LCCOMB_X114_Y19_N26
\stage3|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux0~2_combout\ = (\SW[2]~input_o\ & ((\SW[0]~input_o\ & ((\SW[4]~input_o\))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\) # (!\SW[4]~input_o\))))) # (!\SW[2]~input_o\ & ((\SW[1]~input_o\) # ((\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage3|Mux0~2_combout\);

-- Location: LCCOMB_X114_Y19_N30
\stage3|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux0~4_combout\ = (\SW[3]~input_o\ & (\stage3|Mux0~3_combout\)) # (!\SW[3]~input_o\ & ((\stage3|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage3|Mux0~3_combout\,
	datac => \stage3|Mux0~2_combout\,
	datad => \SW[3]~input_o\,
	combout => \stage3|Mux0~4_combout\);

-- Location: LCCOMB_X114_Y18_N0
\stage0|stage1|Carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage1|Carry~0_combout\ = (\SW[1]~input_o\ & ((\SW[3]~input_o\) # ((\SW[2]~input_o\ & \SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \stage0|stage1|Carry~0_combout\);

-- Location: LCCOMB_X114_Y18_N10
\stage0|stage2|Carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|stage2|Carry~0_combout\ = (\stage0|stage1|Carry~0_combout\ & ((\SW[2]~input_o\) # (\SW[4]~input_o\))) # (!\stage0|stage1|Carry~0_combout\ & (\SW[2]~input_o\ & \SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage0|stage1|Carry~0_combout\,
	datac => \SW[2]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage0|stage2|Carry~0_combout\);

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LCCOMB_X114_Y18_N12
\stage1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux6~0_combout\ = (!\SW[5]~input_o\ & ((\stage0|stage2|Carry~0_combout\ & (\SW[3]~input_o\ $ (!\SW[4]~input_o\))) # (!\stage0|stage2|Carry~0_combout\ & (\SW[3]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage2|Carry~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y18_N14
\stage1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux5~0_combout\ = (\SW[5]~input_o\ & (!\SW[4]~input_o\ & ((!\SW[3]~input_o\) # (!\stage0|stage2|Carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage2|Carry~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y18_N24
\stage1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux4~0_combout\ = (!\SW[5]~input_o\ & ((\stage0|stage2|Carry~0_combout\ & (\SW[3]~input_o\ & !\SW[4]~input_o\)) # (!\stage0|stage2|Carry~0_combout\ & (!\SW[3]~input_o\ & \SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage2|Carry~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y18_N26
\stage1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux3~0_combout\ = (\stage0|stage2|Carry~0_combout\ & (\SW[3]~input_o\ $ (((!\SW[5]~input_o\ & !\SW[4]~input_o\))))) # (!\stage0|stage2|Carry~0_combout\ & ((\SW[5]~input_o\ & (!\SW[3]~input_o\ & \SW[4]~input_o\)) # (!\SW[5]~input_o\ & 
-- (\SW[3]~input_o\ & !\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage2|Carry~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y18_N28
\stage1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux2~0_combout\ = (\stage0|stage2|Carry~0_combout\ & ((\SW[5]~input_o\ & (\SW[3]~input_o\)) # (!\SW[5]~input_o\ & ((\SW[4]~input_o\) # (!\SW[3]~input_o\))))) # (!\stage0|stage2|Carry~0_combout\ & (\SW[5]~input_o\ $ ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage2|Carry~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y18_N22
\stage1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux1~0_combout\ = (\stage0|stage2|Carry~0_combout\ & ((\SW[3]~input_o\ & ((!\SW[4]~input_o\))) # (!\SW[3]~input_o\ & (!\SW[5]~input_o\)))) # (!\stage0|stage2|Carry~0_combout\ & ((\SW[3]~input_o\ & (!\SW[5]~input_o\)) # (!\SW[3]~input_o\ & 
-- ((\SW[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage2|Carry~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y18_N16
\stage1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux0~0_combout\ = (\SW[4]~input_o\ & ((\stage0|stage2|Carry~0_combout\) # ((\SW[3]~input_o\) # (!\SW[5]~input_o\)))) # (!\SW[4]~input_o\ & (\SW[5]~input_o\ $ (((\stage0|stage2|Carry~0_combout\ & \SW[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|stage2|Carry~0_combout\,
	datab => \SW[5]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \stage1|Mux0~0_combout\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;
END structure;


