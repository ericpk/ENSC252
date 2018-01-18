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

-- DATE "10/10/2017 14:05:24"

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

ENTITY 	Part3 IS
    PORT (
	SW : IN std_logic_vector(17 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Part3;

-- Design Ports Information
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW1[2]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW1[1]~1_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW1[3]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW1[0]~0_combout\ : std_logic;
SIGNAL \stage0|Mux6~0_combout\ : std_logic;
SIGNAL \stage0|Mux5~0_combout\ : std_logic;
SIGNAL \stage0|Mux4~0_combout\ : std_logic;
SIGNAL \stage0|Mux3~0_combout\ : std_logic;
SIGNAL \stage0|Mux2~0_combout\ : std_logic;
SIGNAL \stage0|Mux1~0_combout\ : std_logic;
SIGNAL \stage0|Mux0~0_combout\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW2[1]~1_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW2[0]~0_combout\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW2[2]~2_combout\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW2[3]~3_combout\ : std_logic;
SIGNAL \stage1|Mux6~0_combout\ : std_logic;
SIGNAL \stage1|Mux5~0_combout\ : std_logic;
SIGNAL \stage1|Mux4~0_combout\ : std_logic;
SIGNAL \stage1|Mux3~0_combout\ : std_logic;
SIGNAL \stage1|Mux2~0_combout\ : std_logic;
SIGNAL \stage1|Mux1~0_combout\ : std_logic;
SIGNAL \stage1|Mux0~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage0|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\stage1|ALT_INV_Mux0~0_combout\ <= NOT \stage1|Mux0~0_combout\;
\stage0|ALT_INV_Mux0~0_combout\ <= NOT \stage0|Mux0~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux6~0_combout\,
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
	i => \stage0|Mux5~0_combout\,
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
	i => \stage0|Mux4~0_combout\,
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
	i => \stage0|Mux3~0_combout\,
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
	i => \stage0|Mux2~0_combout\,
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
	i => \stage0|Mux1~0_combout\,
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
	i => \stage0|ALT_INV_Mux0~0_combout\,
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
	i => \stage1|Mux6~0_combout\,
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
	i => \stage1|Mux5~0_combout\,
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
	i => \stage1|Mux4~0_combout\,
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
	i => \stage1|Mux3~0_combout\,
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
	i => \stage1|Mux2~0_combout\,
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
	i => \stage1|Mux1~0_combout\,
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
	i => \stage1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

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

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X114_Y17_N12
\SW1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW1[2]~2_combout\ = (\KEY[0]~input_o\ & (\SW[12]~input_o\)) # (!\KEY[0]~input_o\ & ((\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[12]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW1[2]~2_combout\);

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

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: LCCOMB_X114_Y17_N18
\SW1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW1[1]~1_combout\ = (\KEY[0]~input_o\ & ((\SW[11]~input_o\))) # (!\KEY[0]~input_o\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \SW[11]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW1[1]~1_combout\);

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

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: LCCOMB_X114_Y17_N14
\SW1[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW1[3]~3_combout\ = (\KEY[0]~input_o\ & ((\SW[13]~input_o\))) # (!\KEY[0]~input_o\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datac => \SW[13]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW1[3]~3_combout\);

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

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: LCCOMB_X114_Y17_N16
\SW1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW1[0]~0_combout\ = (\KEY[0]~input_o\ & ((\SW[10]~input_o\))) # (!\KEY[0]~input_o\ & (\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \SW[10]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW1[0]~0_combout\);

-- Location: LCCOMB_X114_Y17_N24
\stage0|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux6~0_combout\ = (\SW1[2]~2_combout\ & (!\SW1[1]~1_combout\ & ((\SW1[3]~3_combout\) # (!\SW1[0]~0_combout\)))) # (!\SW1[2]~2_combout\ & (\SW1[0]~0_combout\ & (\SW1[1]~1_combout\ $ (!\SW1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[2]~2_combout\,
	datab => \SW1[1]~1_combout\,
	datac => \SW1[3]~3_combout\,
	datad => \SW1[0]~0_combout\,
	combout => \stage0|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y17_N26
\stage0|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux5~0_combout\ = (\SW1[1]~1_combout\ & ((\SW1[0]~0_combout\ & ((\SW1[3]~3_combout\))) # (!\SW1[0]~0_combout\ & (\SW1[2]~2_combout\)))) # (!\SW1[1]~1_combout\ & (\SW1[2]~2_combout\ & (\SW1[3]~3_combout\ $ (\SW1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[2]~2_combout\,
	datab => \SW1[1]~1_combout\,
	datac => \SW1[3]~3_combout\,
	datad => \SW1[0]~0_combout\,
	combout => \stage0|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y17_N4
\stage0|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux4~0_combout\ = (\SW1[2]~2_combout\ & (\SW1[3]~3_combout\ & ((\SW1[1]~1_combout\) # (!\SW1[0]~0_combout\)))) # (!\SW1[2]~2_combout\ & (\SW1[1]~1_combout\ & (!\SW1[3]~3_combout\ & !\SW1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[2]~2_combout\,
	datab => \SW1[1]~1_combout\,
	datac => \SW1[3]~3_combout\,
	datad => \SW1[0]~0_combout\,
	combout => \stage0|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y17_N22
\stage0|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux3~0_combout\ = (\SW1[0]~0_combout\ & (\SW1[2]~2_combout\ $ ((!\SW1[1]~1_combout\)))) # (!\SW1[0]~0_combout\ & ((\SW1[2]~2_combout\ & (!\SW1[1]~1_combout\ & !\SW1[3]~3_combout\)) # (!\SW1[2]~2_combout\ & (\SW1[1]~1_combout\ & 
-- \SW1[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[2]~2_combout\,
	datab => \SW1[1]~1_combout\,
	datac => \SW1[3]~3_combout\,
	datad => \SW1[0]~0_combout\,
	combout => \stage0|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y17_N8
\stage0|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux2~0_combout\ = (\SW1[1]~1_combout\ & (((!\SW1[3]~3_combout\ & \SW1[0]~0_combout\)))) # (!\SW1[1]~1_combout\ & ((\SW1[2]~2_combout\ & (!\SW1[3]~3_combout\)) # (!\SW1[2]~2_combout\ & ((\SW1[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[2]~2_combout\,
	datab => \SW1[1]~1_combout\,
	datac => \SW1[3]~3_combout\,
	datad => \SW1[0]~0_combout\,
	combout => \stage0|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y17_N10
\stage0|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux1~0_combout\ = (\SW1[2]~2_combout\ & ((\SW1[1]~1_combout\ & (!\SW1[3]~3_combout\ & \SW1[0]~0_combout\)) # (!\SW1[1]~1_combout\ & (\SW1[3]~3_combout\)))) # (!\SW1[2]~2_combout\ & (!\SW1[3]~3_combout\ & ((\SW1[1]~1_combout\) # 
-- (\SW1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[2]~2_combout\,
	datab => \SW1[1]~1_combout\,
	datac => \SW1[3]~3_combout\,
	datad => \SW1[0]~0_combout\,
	combout => \stage0|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y17_N28
\stage0|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Mux0~0_combout\ = (\SW1[3]~3_combout\) # ((\SW1[2]~2_combout\ & ((!\SW1[0]~0_combout\) # (!\SW1[1]~1_combout\))) # (!\SW1[2]~2_combout\ & (\SW1[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[2]~2_combout\,
	datab => \SW1[1]~1_combout\,
	datac => \SW1[3]~3_combout\,
	datad => \SW1[0]~0_combout\,
	combout => \stage0|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

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

-- Location: LCCOMB_X114_Y18_N10
\SW2[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW2[1]~1_combout\ = (\KEY[0]~input_o\ & (\SW[15]~input_o\)) # (!\KEY[0]~input_o\ & ((\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[15]~input_o\,
	datac => \SW[5]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW2[1]~1_combout\);

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

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: LCCOMB_X114_Y18_N24
\SW2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW2[0]~0_combout\ = (\KEY[0]~input_o\ & ((\SW[14]~input_o\))) # (!\KEY[0]~input_o\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[14]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW2[0]~0_combout\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LCCOMB_X114_Y17_N6
\SW2[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW2[2]~2_combout\ = (\KEY[0]~input_o\ & (\SW[16]~input_o\)) # (!\KEY[0]~input_o\ & ((\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[16]~input_o\,
	datac => \SW[6]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW2[2]~2_combout\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LCCOMB_X114_Y18_N28
\SW2[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SW2[3]~3_combout\ = (\KEY[0]~input_o\ & (\SW[17]~input_o\)) # (!\KEY[0]~input_o\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datab => \SW[7]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \SW2[3]~3_combout\);

-- Location: LCCOMB_X114_Y18_N22
\stage1|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux6~0_combout\ = (\SW2[1]~1_combout\ & (\SW2[0]~0_combout\ & (!\SW2[2]~2_combout\ & \SW2[3]~3_combout\))) # (!\SW2[1]~1_combout\ & (\SW2[2]~2_combout\ $ (((\SW2[0]~0_combout\ & !\SW2[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~1_combout\,
	datab => \SW2[0]~0_combout\,
	datac => \SW2[2]~2_combout\,
	datad => \SW2[3]~3_combout\,
	combout => \stage1|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y18_N0
\stage1|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux5~0_combout\ = (\SW2[1]~1_combout\ & ((\SW2[0]~0_combout\ & ((\SW2[3]~3_combout\))) # (!\SW2[0]~0_combout\ & (\SW2[2]~2_combout\)))) # (!\SW2[1]~1_combout\ & (\SW2[2]~2_combout\ & (\SW2[0]~0_combout\ $ (\SW2[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~1_combout\,
	datab => \SW2[0]~0_combout\,
	datac => \SW2[2]~2_combout\,
	datad => \SW2[3]~3_combout\,
	combout => \stage1|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y18_N2
\stage1|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux4~0_combout\ = (\SW2[2]~2_combout\ & (\SW2[3]~3_combout\ & ((\SW2[1]~1_combout\) # (!\SW2[0]~0_combout\)))) # (!\SW2[2]~2_combout\ & (\SW2[1]~1_combout\ & (!\SW2[0]~0_combout\ & !\SW2[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~1_combout\,
	datab => \SW2[0]~0_combout\,
	datac => \SW2[2]~2_combout\,
	datad => \SW2[3]~3_combout\,
	combout => \stage1|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y18_N20
\stage1|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux3~0_combout\ = (\SW2[0]~0_combout\ & (\SW2[1]~1_combout\ $ ((!\SW2[2]~2_combout\)))) # (!\SW2[0]~0_combout\ & ((\SW2[1]~1_combout\ & (!\SW2[2]~2_combout\ & \SW2[3]~3_combout\)) # (!\SW2[1]~1_combout\ & (\SW2[2]~2_combout\ & 
-- !\SW2[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~1_combout\,
	datab => \SW2[0]~0_combout\,
	datac => \SW2[2]~2_combout\,
	datad => \SW2[3]~3_combout\,
	combout => \stage1|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y18_N6
\stage1|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux2~0_combout\ = (\SW2[1]~1_combout\ & (\SW2[0]~0_combout\ & ((!\SW2[3]~3_combout\)))) # (!\SW2[1]~1_combout\ & ((\SW2[2]~2_combout\ & ((!\SW2[3]~3_combout\))) # (!\SW2[2]~2_combout\ & (\SW2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~1_combout\,
	datab => \SW2[0]~0_combout\,
	datac => \SW2[2]~2_combout\,
	datad => \SW2[3]~3_combout\,
	combout => \stage1|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y18_N16
\stage1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux1~0_combout\ = (\SW2[1]~1_combout\ & (!\SW2[3]~3_combout\ & ((\SW2[0]~0_combout\) # (!\SW2[2]~2_combout\)))) # (!\SW2[1]~1_combout\ & ((\SW2[2]~2_combout\ & ((\SW2[3]~3_combout\))) # (!\SW2[2]~2_combout\ & (\SW2[0]~0_combout\ & 
-- !\SW2[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~1_combout\,
	datab => \SW2[0]~0_combout\,
	datac => \SW2[2]~2_combout\,
	datad => \SW2[3]~3_combout\,
	combout => \stage1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y18_N26
\stage1|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux0~0_combout\ = (\SW2[3]~3_combout\) # ((\SW2[1]~1_combout\ & ((!\SW2[2]~2_combout\) # (!\SW2[0]~0_combout\))) # (!\SW2[1]~1_combout\ & ((\SW2[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~1_combout\,
	datab => \SW2[0]~0_combout\,
	datac => \SW2[2]~2_combout\,
	datad => \SW2[3]~3_combout\,
	combout => \stage1|Mux0~0_combout\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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
END structure;


