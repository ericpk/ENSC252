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

-- DATE "11/14/2017 11:41:09"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	TestReaction IS
    PORT (
	SW : IN IEEE.NUMERIC_STD.unsigned(5 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	HEX0 : OUT IEEE.NUMERIC_STD.unsigned(6 DOWNTO 0);
	HEX1 : OUT IEEE.NUMERIC_STD.unsigned(6 DOWNTO 0)
	);
END TestReaction;

-- Design Ports Information
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF TestReaction IS
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
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stage0|Y[19]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \stage0|Y[0]~57_combout\ : std_logic;
SIGNAL \stage0|Y[1]~19_combout\ : std_logic;
SIGNAL \stage0|Y[1]~20\ : std_logic;
SIGNAL \stage0|Y[2]~21_combout\ : std_logic;
SIGNAL \stage0|Y[2]~22\ : std_logic;
SIGNAL \stage0|Y[3]~23_combout\ : std_logic;
SIGNAL \stage0|Y[3]~24\ : std_logic;
SIGNAL \stage0|Y[4]~25_combout\ : std_logic;
SIGNAL \stage0|Y[4]~26\ : std_logic;
SIGNAL \stage0|Y[5]~27_combout\ : std_logic;
SIGNAL \stage0|Y[5]~28\ : std_logic;
SIGNAL \stage0|Y[6]~29_combout\ : std_logic;
SIGNAL \stage0|Y[6]~30\ : std_logic;
SIGNAL \stage0|Y[7]~31_combout\ : std_logic;
SIGNAL \stage0|Y[7]~32\ : std_logic;
SIGNAL \stage0|Y[8]~33_combout\ : std_logic;
SIGNAL \stage0|Y[8]~34\ : std_logic;
SIGNAL \stage0|Y[9]~35_combout\ : std_logic;
SIGNAL \stage0|Y[9]~36\ : std_logic;
SIGNAL \stage0|Y[10]~37_combout\ : std_logic;
SIGNAL \stage0|Y[10]~38\ : std_logic;
SIGNAL \stage0|Y[11]~39_combout\ : std_logic;
SIGNAL \stage0|Y[11]~40\ : std_logic;
SIGNAL \stage0|Y[12]~41_combout\ : std_logic;
SIGNAL \stage0|Y[12]~42\ : std_logic;
SIGNAL \stage0|Y[13]~43_combout\ : std_logic;
SIGNAL \stage0|Y[13]~44\ : std_logic;
SIGNAL \stage0|Y[14]~45_combout\ : std_logic;
SIGNAL \stage0|Y[14]~46\ : std_logic;
SIGNAL \stage0|Y[15]~47_combout\ : std_logic;
SIGNAL \stage0|Y[15]~48\ : std_logic;
SIGNAL \stage0|Y[16]~49_combout\ : std_logic;
SIGNAL \stage0|Y[16]~50\ : std_logic;
SIGNAL \stage0|Y[17]~51_combout\ : std_logic;
SIGNAL \stage0|Y[17]~52\ : std_logic;
SIGNAL \stage0|Y[18]~53_combout\ : std_logic;
SIGNAL \stage0|Y[18]~54\ : std_logic;
SIGNAL \stage0|Y[19]~55_combout\ : std_logic;
SIGNAL \stage0|Y[19]~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \stage1|STAGE0|Q~3_combout\ : std_logic;
SIGNAL \stage1|STAGE0|Q[3]~4_combout\ : std_logic;
SIGNAL \stage1|STAGE0|Add0~0_combout\ : std_logic;
SIGNAL \stage1|STAGE0|Q~7_combout\ : std_logic;
SIGNAL \stage1|STAGE0|Q[3]~5_combout\ : std_logic;
SIGNAL \stage1|STAGE0|Q[3]~6_combout\ : std_logic;
SIGNAL \stage1|STAGE0|Q[0]~2_combout\ : std_logic;
SIGNAL \stage2|Mux6~0_combout\ : std_logic;
SIGNAL \stage2|Mux5~0_combout\ : std_logic;
SIGNAL \stage2|Mux4~0_combout\ : std_logic;
SIGNAL \stage2|Mux3~0_combout\ : std_logic;
SIGNAL \stage2|Mux2~0_combout\ : std_logic;
SIGNAL \stage2|Mux1~0_combout\ : std_logic;
SIGNAL \stage2|Mux0~0_combout\ : std_logic;
SIGNAL \stage1|STAGE1|Q[0]~6_combout\ : std_logic;
SIGNAL \stage1|S3~combout\ : std_logic;
SIGNAL \stage1|S2~combout\ : std_logic;
SIGNAL \stage1|STAGE1|Q~2_combout\ : std_logic;
SIGNAL \stage1|STAGE1|Q[3]~3_combout\ : std_logic;
SIGNAL \stage1|STAGE1|Q~4_combout\ : std_logic;
SIGNAL \stage1|STAGE1|Add0~0_combout\ : std_logic;
SIGNAL \stage1|STAGE1|Q[3]~5_combout\ : std_logic;
SIGNAL \stage3|Mux6~0_combout\ : std_logic;
SIGNAL \stage3|Mux5~0_combout\ : std_logic;
SIGNAL \stage3|Mux4~0_combout\ : std_logic;
SIGNAL \stage3|Mux3~0_combout\ : std_logic;
SIGNAL \stage3|Mux2~0_combout\ : std_logic;
SIGNAL \stage3|Mux1~0_combout\ : std_logic;
SIGNAL \stage3|Mux0~0_combout\ : std_logic;
SIGNAL \stage1|STAGE0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stage0|Y\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \stage1|STAGE1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \stage3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(SW);
ww_CLOCK_50 <= CLOCK_50;
HEX0 <= IEEE.NUMERIC_STD.UNSIGNED(ww_HEX0);
HEX1 <= IEEE.NUMERIC_STD.UNSIGNED(ww_HEX1);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\stage0|Y[19]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \stage0|Y\(19));
\stage3|ALT_INV_Mux0~0_combout\ <= NOT \stage3|Mux0~0_combout\;
\stage2|ALT_INV_Mux0~0_combout\ <= NOT \stage2|Mux0~0_combout\;

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|Mux6~0_combout\,
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
	i => \stage2|Mux5~0_combout\,
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
	i => \stage2|Mux4~0_combout\,
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
	i => \stage2|Mux3~0_combout\,
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
	i => \stage2|Mux2~0_combout\,
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
	i => \stage2|Mux1~0_combout\,
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
	i => \stage2|ALT_INV_Mux0~0_combout\,
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
	i => \stage3|Mux6~0_combout\,
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
	i => \stage3|Mux5~0_combout\,
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
	i => \stage3|Mux4~0_combout\,
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
	i => \stage3|Mux3~0_combout\,
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
	i => \stage3|Mux2~0_combout\,
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
	i => \stage3|Mux1~0_combout\,
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
	i => \stage3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y36_N12
\stage0|Y[0]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[0]~57_combout\ = !\stage0|Y\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0|Y\(0),
	combout => \stage0|Y[0]~57_combout\);

-- Location: FF_X1_Y36_N13
\stage0|Y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[0]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(0));

-- Location: LCCOMB_X1_Y36_N14
\stage0|Y[1]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[1]~19_combout\ = (\stage0|Y\(0) & (\stage0|Y\(1) $ (VCC))) # (!\stage0|Y\(0) & (\stage0|Y\(1) & VCC))
-- \stage0|Y[1]~20\ = CARRY((\stage0|Y\(0) & \stage0|Y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Y\(0),
	datab => \stage0|Y\(1),
	datad => VCC,
	combout => \stage0|Y[1]~19_combout\,
	cout => \stage0|Y[1]~20\);

-- Location: FF_X1_Y36_N15
\stage0|Y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[1]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(1));

-- Location: LCCOMB_X1_Y36_N16
\stage0|Y[2]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[2]~21_combout\ = (\stage0|Y\(2) & (!\stage0|Y[1]~20\)) # (!\stage0|Y\(2) & ((\stage0|Y[1]~20\) # (GND)))
-- \stage0|Y[2]~22\ = CARRY((!\stage0|Y[1]~20\) # (!\stage0|Y\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(2),
	datad => VCC,
	cin => \stage0|Y[1]~20\,
	combout => \stage0|Y[2]~21_combout\,
	cout => \stage0|Y[2]~22\);

-- Location: FF_X1_Y36_N17
\stage0|Y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[2]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(2));

-- Location: LCCOMB_X1_Y36_N18
\stage0|Y[3]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[3]~23_combout\ = (\stage0|Y\(3) & (\stage0|Y[2]~22\ $ (GND))) # (!\stage0|Y\(3) & (!\stage0|Y[2]~22\ & VCC))
-- \stage0|Y[3]~24\ = CARRY((\stage0|Y\(3) & !\stage0|Y[2]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(3),
	datad => VCC,
	cin => \stage0|Y[2]~22\,
	combout => \stage0|Y[3]~23_combout\,
	cout => \stage0|Y[3]~24\);

-- Location: FF_X1_Y36_N19
\stage0|Y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[3]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(3));

-- Location: LCCOMB_X1_Y36_N20
\stage0|Y[4]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[4]~25_combout\ = (\stage0|Y\(4) & (!\stage0|Y[3]~24\)) # (!\stage0|Y\(4) & ((\stage0|Y[3]~24\) # (GND)))
-- \stage0|Y[4]~26\ = CARRY((!\stage0|Y[3]~24\) # (!\stage0|Y\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(4),
	datad => VCC,
	cin => \stage0|Y[3]~24\,
	combout => \stage0|Y[4]~25_combout\,
	cout => \stage0|Y[4]~26\);

-- Location: FF_X1_Y36_N21
\stage0|Y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[4]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(4));

-- Location: LCCOMB_X1_Y36_N22
\stage0|Y[5]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[5]~27_combout\ = (\stage0|Y\(5) & (\stage0|Y[4]~26\ $ (GND))) # (!\stage0|Y\(5) & (!\stage0|Y[4]~26\ & VCC))
-- \stage0|Y[5]~28\ = CARRY((\stage0|Y\(5) & !\stage0|Y[4]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Y\(5),
	datad => VCC,
	cin => \stage0|Y[4]~26\,
	combout => \stage0|Y[5]~27_combout\,
	cout => \stage0|Y[5]~28\);

-- Location: FF_X1_Y36_N23
\stage0|Y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[5]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(5));

-- Location: LCCOMB_X1_Y36_N24
\stage0|Y[6]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[6]~29_combout\ = (\stage0|Y\(6) & (!\stage0|Y[5]~28\)) # (!\stage0|Y\(6) & ((\stage0|Y[5]~28\) # (GND)))
-- \stage0|Y[6]~30\ = CARRY((!\stage0|Y[5]~28\) # (!\stage0|Y\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(6),
	datad => VCC,
	cin => \stage0|Y[5]~28\,
	combout => \stage0|Y[6]~29_combout\,
	cout => \stage0|Y[6]~30\);

-- Location: FF_X1_Y36_N25
\stage0|Y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[6]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(6));

-- Location: LCCOMB_X1_Y36_N26
\stage0|Y[7]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[7]~31_combout\ = (\stage0|Y\(7) & (\stage0|Y[6]~30\ $ (GND))) # (!\stage0|Y\(7) & (!\stage0|Y[6]~30\ & VCC))
-- \stage0|Y[7]~32\ = CARRY((\stage0|Y\(7) & !\stage0|Y[6]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Y\(7),
	datad => VCC,
	cin => \stage0|Y[6]~30\,
	combout => \stage0|Y[7]~31_combout\,
	cout => \stage0|Y[7]~32\);

-- Location: FF_X1_Y36_N27
\stage0|Y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[7]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(7));

-- Location: LCCOMB_X1_Y36_N28
\stage0|Y[8]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[8]~33_combout\ = (\stage0|Y\(8) & (!\stage0|Y[7]~32\)) # (!\stage0|Y\(8) & ((\stage0|Y[7]~32\) # (GND)))
-- \stage0|Y[8]~34\ = CARRY((!\stage0|Y[7]~32\) # (!\stage0|Y\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(8),
	datad => VCC,
	cin => \stage0|Y[7]~32\,
	combout => \stage0|Y[8]~33_combout\,
	cout => \stage0|Y[8]~34\);

-- Location: FF_X1_Y36_N29
\stage0|Y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[8]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(8));

-- Location: LCCOMB_X1_Y36_N30
\stage0|Y[9]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[9]~35_combout\ = (\stage0|Y\(9) & (\stage0|Y[8]~34\ $ (GND))) # (!\stage0|Y\(9) & (!\stage0|Y[8]~34\ & VCC))
-- \stage0|Y[9]~36\ = CARRY((\stage0|Y\(9) & !\stage0|Y[8]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Y\(9),
	datad => VCC,
	cin => \stage0|Y[8]~34\,
	combout => \stage0|Y[9]~35_combout\,
	cout => \stage0|Y[9]~36\);

-- Location: FF_X1_Y36_N31
\stage0|Y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[9]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(9));

-- Location: LCCOMB_X1_Y35_N0
\stage0|Y[10]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[10]~37_combout\ = (\stage0|Y\(10) & (!\stage0|Y[9]~36\)) # (!\stage0|Y\(10) & ((\stage0|Y[9]~36\) # (GND)))
-- \stage0|Y[10]~38\ = CARRY((!\stage0|Y[9]~36\) # (!\stage0|Y\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(10),
	datad => VCC,
	cin => \stage0|Y[9]~36\,
	combout => \stage0|Y[10]~37_combout\,
	cout => \stage0|Y[10]~38\);

-- Location: FF_X1_Y35_N1
\stage0|Y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[10]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(10));

-- Location: LCCOMB_X1_Y35_N2
\stage0|Y[11]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[11]~39_combout\ = (\stage0|Y\(11) & (\stage0|Y[10]~38\ $ (GND))) # (!\stage0|Y\(11) & (!\stage0|Y[10]~38\ & VCC))
-- \stage0|Y[11]~40\ = CARRY((\stage0|Y\(11) & !\stage0|Y[10]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(11),
	datad => VCC,
	cin => \stage0|Y[10]~38\,
	combout => \stage0|Y[11]~39_combout\,
	cout => \stage0|Y[11]~40\);

-- Location: FF_X1_Y35_N3
\stage0|Y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[11]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(11));

-- Location: LCCOMB_X1_Y35_N4
\stage0|Y[12]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[12]~41_combout\ = (\stage0|Y\(12) & (!\stage0|Y[11]~40\)) # (!\stage0|Y\(12) & ((\stage0|Y[11]~40\) # (GND)))
-- \stage0|Y[12]~42\ = CARRY((!\stage0|Y[11]~40\) # (!\stage0|Y\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(12),
	datad => VCC,
	cin => \stage0|Y[11]~40\,
	combout => \stage0|Y[12]~41_combout\,
	cout => \stage0|Y[12]~42\);

-- Location: FF_X1_Y35_N5
\stage0|Y[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[12]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(12));

-- Location: LCCOMB_X1_Y35_N6
\stage0|Y[13]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[13]~43_combout\ = (\stage0|Y\(13) & (\stage0|Y[12]~42\ $ (GND))) # (!\stage0|Y\(13) & (!\stage0|Y[12]~42\ & VCC))
-- \stage0|Y[13]~44\ = CARRY((\stage0|Y\(13) & !\stage0|Y[12]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Y\(13),
	datad => VCC,
	cin => \stage0|Y[12]~42\,
	combout => \stage0|Y[13]~43_combout\,
	cout => \stage0|Y[13]~44\);

-- Location: FF_X1_Y35_N7
\stage0|Y[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[13]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(13));

-- Location: LCCOMB_X1_Y35_N8
\stage0|Y[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[14]~45_combout\ = (\stage0|Y\(14) & (!\stage0|Y[13]~44\)) # (!\stage0|Y\(14) & ((\stage0|Y[13]~44\) # (GND)))
-- \stage0|Y[14]~46\ = CARRY((!\stage0|Y[13]~44\) # (!\stage0|Y\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(14),
	datad => VCC,
	cin => \stage0|Y[13]~44\,
	combout => \stage0|Y[14]~45_combout\,
	cout => \stage0|Y[14]~46\);

-- Location: FF_X1_Y35_N9
\stage0|Y[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[14]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(14));

-- Location: LCCOMB_X1_Y35_N10
\stage0|Y[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[15]~47_combout\ = (\stage0|Y\(15) & (\stage0|Y[14]~46\ $ (GND))) # (!\stage0|Y\(15) & (!\stage0|Y[14]~46\ & VCC))
-- \stage0|Y[15]~48\ = CARRY((\stage0|Y\(15) & !\stage0|Y[14]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Y\(15),
	datad => VCC,
	cin => \stage0|Y[14]~46\,
	combout => \stage0|Y[15]~47_combout\,
	cout => \stage0|Y[15]~48\);

-- Location: FF_X1_Y35_N11
\stage0|Y[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[15]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(15));

-- Location: LCCOMB_X1_Y35_N12
\stage0|Y[16]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[16]~49_combout\ = (\stage0|Y\(16) & (!\stage0|Y[15]~48\)) # (!\stage0|Y\(16) & ((\stage0|Y[15]~48\) # (GND)))
-- \stage0|Y[16]~50\ = CARRY((!\stage0|Y[15]~48\) # (!\stage0|Y\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Y\(16),
	datad => VCC,
	cin => \stage0|Y[15]~48\,
	combout => \stage0|Y[16]~49_combout\,
	cout => \stage0|Y[16]~50\);

-- Location: FF_X1_Y35_N13
\stage0|Y[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[16]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(16));

-- Location: LCCOMB_X1_Y35_N14
\stage0|Y[17]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[17]~51_combout\ = (\stage0|Y\(17) & (\stage0|Y[16]~50\ $ (GND))) # (!\stage0|Y\(17) & (!\stage0|Y[16]~50\ & VCC))
-- \stage0|Y[17]~52\ = CARRY((\stage0|Y\(17) & !\stage0|Y[16]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(17),
	datad => VCC,
	cin => \stage0|Y[16]~50\,
	combout => \stage0|Y[17]~51_combout\,
	cout => \stage0|Y[17]~52\);

-- Location: FF_X1_Y35_N15
\stage0|Y[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[17]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(17));

-- Location: LCCOMB_X1_Y35_N16
\stage0|Y[18]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[18]~53_combout\ = (\stage0|Y\(18) & (!\stage0|Y[17]~52\)) # (!\stage0|Y\(18) & ((\stage0|Y[17]~52\) # (GND)))
-- \stage0|Y[18]~54\ = CARRY((!\stage0|Y[17]~52\) # (!\stage0|Y\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(18),
	datad => VCC,
	cin => \stage0|Y[17]~52\,
	combout => \stage0|Y[18]~53_combout\,
	cout => \stage0|Y[18]~54\);

-- Location: FF_X1_Y35_N17
\stage0|Y[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[18]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(18));

-- Location: LCCOMB_X1_Y35_N18
\stage0|Y[19]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Y[19]~55_combout\ = \stage0|Y\(19) $ (!\stage0|Y[18]~54\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \stage0|Y\(19),
	cin => \stage0|Y[18]~54\,
	combout => \stage0|Y[19]~55_combout\);

-- Location: FF_X1_Y35_N19
\stage0|Y[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \stage0|Y[19]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Y\(19));

-- Location: CLKCTRL_G3
\stage0|Y[19]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \stage0|Y[19]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \stage0|Y[19]~clkctrl_outclk\);

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

-- Location: LCCOMB_X114_Y25_N14
\stage1|STAGE0|Q~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE0|Q~3_combout\ = (!\SW[1]~input_o\ & ((\stage1|STAGE0|Q\(0) & (!\stage1|STAGE0|Q\(3) & !\stage1|STAGE0|Q\(1))) # (!\stage1|STAGE0|Q\(0) & ((\stage1|STAGE0|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \SW[1]~input_o\,
	combout => \stage1|STAGE0|Q~3_combout\);

-- Location: LCCOMB_X114_Y25_N30
\stage1|STAGE0|Q[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE0|Q[3]~4_combout\ = (\SW[0]~input_o\) # ((\SW[1]~input_o\) # ((\stage1|STAGE0|Q\(0) & \stage1|STAGE0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \stage1|STAGE0|Q\(0),
	datad => \stage1|STAGE0|Q\(3),
	combout => \stage1|STAGE0|Q[3]~4_combout\);

-- Location: FF_X114_Y25_N15
\stage1|STAGE0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE0|Q~3_combout\,
	ena => \stage1|STAGE0|Q[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE0|Q\(1));

-- Location: LCCOMB_X114_Y25_N18
\stage1|STAGE0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE0|Add0~0_combout\ = \stage1|STAGE0|Q\(2) $ (((\stage1|STAGE0|Q\(1) & \stage1|STAGE0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(1),
	datab => \stage1|STAGE0|Q\(0),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage1|STAGE0|Add0~0_combout\);

-- Location: LCCOMB_X114_Y25_N24
\stage1|STAGE0|Q~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE0|Q~7_combout\ = (!\SW[1]~input_o\ & (\stage1|STAGE0|Add0~0_combout\ & ((!\stage1|STAGE0|Q\(0)) # (!\stage1|STAGE0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \stage1|STAGE0|Add0~0_combout\,
	datac => \stage1|STAGE0|Q\(3),
	datad => \stage1|STAGE0|Q\(0),
	combout => \stage1|STAGE0|Q~7_combout\);

-- Location: FF_X114_Y25_N25
\stage1|STAGE0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE0|Q~7_combout\,
	ena => \stage1|STAGE0|Q[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE0|Q\(2));

-- Location: LCCOMB_X114_Y25_N0
\stage1|STAGE0|Q[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE0|Q[3]~5_combout\ = (\SW[0]~input_o\ & (\stage1|STAGE0|Q\(1) & (\stage1|STAGE0|Q\(0) & \stage1|STAGE0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \stage1|STAGE0|Q\(1),
	datac => \stage1|STAGE0|Q\(0),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage1|STAGE0|Q[3]~5_combout\);

-- Location: LCCOMB_X114_Y25_N2
\stage1|STAGE0|Q[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE0|Q[3]~6_combout\ = (!\SW[1]~input_o\ & ((\stage1|STAGE0|Q\(3) & ((!\stage1|STAGE0|Q\(0)))) # (!\stage1|STAGE0|Q\(3) & (\stage1|STAGE0|Q[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \stage1|STAGE0|Q[3]~5_combout\,
	datac => \stage1|STAGE0|Q\(3),
	datad => \stage1|STAGE0|Q\(0),
	combout => \stage1|STAGE0|Q[3]~6_combout\);

-- Location: FF_X114_Y25_N3
\stage1|STAGE0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE0|Q[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE0|Q\(3));

-- Location: LCCOMB_X114_Y25_N12
\stage1|STAGE0|Q[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE0|Q[0]~2_combout\ = (!\SW[1]~input_o\ & ((\stage1|STAGE0|Q\(0) & (!\stage1|STAGE0|Q\(3) & !\SW[0]~input_o\)) # (!\stage1|STAGE0|Q\(0) & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(0),
	datad => \SW[0]~input_o\,
	combout => \stage1|STAGE0|Q[0]~2_combout\);

-- Location: FF_X114_Y25_N13
\stage1|STAGE0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE0|Q[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE0|Q\(0));

-- Location: LCCOMB_X114_Y25_N28
\stage2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux6~0_combout\ = (\stage1|STAGE0|Q\(1) & (\stage1|STAGE0|Q\(0) & (\stage1|STAGE0|Q\(3) & !\stage1|STAGE0|Q\(2)))) # (!\stage1|STAGE0|Q\(1) & (\stage1|STAGE0|Q\(2) $ (((\stage1|STAGE0|Q\(0) & !\stage1|STAGE0|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y25_N22
\stage2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux5~0_combout\ = (\stage1|STAGE0|Q\(3) & ((\stage1|STAGE0|Q\(0) & (\stage1|STAGE0|Q\(1))) # (!\stage1|STAGE0|Q\(0) & ((\stage1|STAGE0|Q\(2)))))) # (!\stage1|STAGE0|Q\(3) & (\stage1|STAGE0|Q\(2) & (\stage1|STAGE0|Q\(0) $ (\stage1|STAGE0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y25_N4
\stage2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux4~0_combout\ = (\stage1|STAGE0|Q\(3) & (\stage1|STAGE0|Q\(2) & ((\stage1|STAGE0|Q\(1)) # (!\stage1|STAGE0|Q\(0))))) # (!\stage1|STAGE0|Q\(3) & (!\stage1|STAGE0|Q\(0) & (\stage1|STAGE0|Q\(1) & !\stage1|STAGE0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y25_N10
\stage2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux3~0_combout\ = (\stage1|STAGE0|Q\(0) & ((\stage1|STAGE0|Q\(1) $ (!\stage1|STAGE0|Q\(2))))) # (!\stage1|STAGE0|Q\(0) & ((\stage1|STAGE0|Q\(3) & (\stage1|STAGE0|Q\(1) & !\stage1|STAGE0|Q\(2))) # (!\stage1|STAGE0|Q\(3) & (!\stage1|STAGE0|Q\(1) & 
-- \stage1|STAGE0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y25_N20
\stage2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux2~0_combout\ = (\stage1|STAGE0|Q\(1) & (\stage1|STAGE0|Q\(0) & (!\stage1|STAGE0|Q\(3)))) # (!\stage1|STAGE0|Q\(1) & ((\stage1|STAGE0|Q\(2) & ((!\stage1|STAGE0|Q\(3)))) # (!\stage1|STAGE0|Q\(2) & (\stage1|STAGE0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y25_N26
\stage2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux1~0_combout\ = (\stage1|STAGE0|Q\(3) & (((!\stage1|STAGE0|Q\(1) & \stage1|STAGE0|Q\(2))))) # (!\stage1|STAGE0|Q\(3) & ((\stage1|STAGE0|Q\(0) & ((\stage1|STAGE0|Q\(1)) # (!\stage1|STAGE0|Q\(2)))) # (!\stage1|STAGE0|Q\(0) & (\stage1|STAGE0|Q\(1) 
-- & !\stage1|STAGE0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y25_N8
\stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux0~0_combout\ = (\stage1|STAGE0|Q\(3)) # ((\stage1|STAGE0|Q\(1) & ((!\stage1|STAGE0|Q\(2)) # (!\stage1|STAGE0|Q\(0)))) # (!\stage1|STAGE0|Q\(1) & ((\stage1|STAGE0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \stage1|STAGE0|Q\(3),
	datac => \stage1|STAGE0|Q\(1),
	datad => \stage1|STAGE0|Q\(2),
	combout => \stage2|Mux0~0_combout\);

-- Location: LCCOMB_X113_Y25_N20
\stage1|STAGE1|Q[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE1|Q[0]~6_combout\ = (!\SW[1]~input_o\ & (\stage1|STAGE1|Q\(0) $ (((\stage1|STAGE0|Q\(0) & \stage1|STAGE0|Q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE0|Q\(0),
	datab => \SW[1]~input_o\,
	datac => \stage1|STAGE1|Q\(0),
	datad => \stage1|STAGE0|Q\(3),
	combout => \stage1|STAGE1|Q[0]~6_combout\);

-- Location: FF_X113_Y25_N21
\stage1|STAGE1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE1|Q[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE1|Q\(0));

-- Location: LCCOMB_X114_Y25_N16
\stage1|S3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|S3~combout\ = (!\stage1|STAGE0|Q\(0)) # (!\stage1|STAGE0|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage1|STAGE0|Q\(3),
	datad => \stage1|STAGE0|Q\(0),
	combout => \stage1|S3~combout\);

-- Location: LCCOMB_X113_Y25_N10
\stage1|S2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|S2~combout\ = (\SW[1]~input_o\) # ((\stage1|STAGE1|Q\(3) & (\stage1|STAGE1|Q\(0) & !\stage1|S3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \SW[1]~input_o\,
	datad => \stage1|S3~combout\,
	combout => \stage1|S2~combout\);

-- Location: LCCOMB_X113_Y25_N22
\stage1|STAGE1|Q~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE1|Q~2_combout\ = (!\stage1|S2~combout\ & (\stage1|STAGE1|Q\(0) $ (\stage1|STAGE1|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|S2~combout\,
	combout => \stage1|STAGE1|Q~2_combout\);

-- Location: LCCOMB_X113_Y25_N24
\stage1|STAGE1|Q[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE1|Q[3]~3_combout\ = (\SW[1]~input_o\) # ((\stage1|STAGE0|Q\(0) & \stage1|STAGE0|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datac => \stage1|STAGE0|Q\(0),
	datad => \stage1|STAGE0|Q\(3),
	combout => \stage1|STAGE1|Q[3]~3_combout\);

-- Location: FF_X113_Y25_N23
\stage1|STAGE1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE1|Q~2_combout\,
	ena => \stage1|STAGE1|Q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE1|Q\(1));

-- Location: LCCOMB_X113_Y25_N28
\stage1|STAGE1|Q~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE1|Q~4_combout\ = (!\stage1|S2~combout\ & (\stage1|STAGE1|Q\(2) $ (((\stage1|STAGE1|Q\(1) & \stage1|STAGE1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(1),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(2),
	datad => \stage1|S2~combout\,
	combout => \stage1|STAGE1|Q~4_combout\);

-- Location: FF_X113_Y25_N29
\stage1|STAGE1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE1|Q~4_combout\,
	ena => \stage1|STAGE1|Q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE1|Q\(2));

-- Location: LCCOMB_X113_Y25_N26
\stage1|STAGE1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE1|Add0~0_combout\ = \stage1|STAGE1|Q\(3) $ (((\stage1|STAGE1|Q\(1) & (\stage1|STAGE1|Q\(0) & \stage1|STAGE1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(1),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(3),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage1|STAGE1|Add0~0_combout\);

-- Location: LCCOMB_X113_Y25_N30
\stage1|STAGE1|Q[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|STAGE1|Q[3]~5_combout\ = (!\stage1|S2~combout\ & ((\stage1|S3~combout\ & ((\stage1|STAGE1|Q\(3)))) # (!\stage1|S3~combout\ & (\stage1|STAGE1|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Add0~0_combout\,
	datab => \stage1|S3~combout\,
	datac => \stage1|STAGE1|Q\(3),
	datad => \stage1|S2~combout\,
	combout => \stage1|STAGE1|Q[3]~5_combout\);

-- Location: FF_X113_Y25_N31
\stage1|STAGE1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|Y[19]~clkctrl_outclk\,
	d => \stage1|STAGE1|Q[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|STAGE1|Q\(3));

-- Location: LCCOMB_X113_Y25_N12
\stage3|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux6~0_combout\ = (\stage1|STAGE1|Q\(1) & (\stage1|STAGE1|Q\(3) & (\stage1|STAGE1|Q\(0) & !\stage1|STAGE1|Q\(2)))) # (!\stage1|STAGE1|Q\(1) & (\stage1|STAGE1|Q\(2) $ (((!\stage1|STAGE1|Q\(3) & \stage1|STAGE1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage3|Mux6~0_combout\);

-- Location: LCCOMB_X113_Y25_N6
\stage3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux5~0_combout\ = (\stage1|STAGE1|Q\(3) & ((\stage1|STAGE1|Q\(0) & (\stage1|STAGE1|Q\(1))) # (!\stage1|STAGE1|Q\(0) & ((\stage1|STAGE1|Q\(2)))))) # (!\stage1|STAGE1|Q\(3) & (\stage1|STAGE1|Q\(2) & (\stage1|STAGE1|Q\(0) $ (\stage1|STAGE1|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage3|Mux5~0_combout\);

-- Location: LCCOMB_X113_Y25_N0
\stage3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux4~0_combout\ = (\stage1|STAGE1|Q\(3) & (\stage1|STAGE1|Q\(2) & ((\stage1|STAGE1|Q\(1)) # (!\stage1|STAGE1|Q\(0))))) # (!\stage1|STAGE1|Q\(3) & (!\stage1|STAGE1|Q\(0) & (\stage1|STAGE1|Q\(1) & !\stage1|STAGE1|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage3|Mux4~0_combout\);

-- Location: LCCOMB_X113_Y25_N18
\stage3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux3~0_combout\ = (\stage1|STAGE1|Q\(0) & ((\stage1|STAGE1|Q\(1) $ (!\stage1|STAGE1|Q\(2))))) # (!\stage1|STAGE1|Q\(0) & ((\stage1|STAGE1|Q\(3) & (\stage1|STAGE1|Q\(1) & !\stage1|STAGE1|Q\(2))) # (!\stage1|STAGE1|Q\(3) & (!\stage1|STAGE1|Q\(1) & 
-- \stage1|STAGE1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage3|Mux3~0_combout\);

-- Location: LCCOMB_X113_Y25_N4
\stage3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux2~0_combout\ = (\stage1|STAGE1|Q\(1) & (!\stage1|STAGE1|Q\(3) & (\stage1|STAGE1|Q\(0)))) # (!\stage1|STAGE1|Q\(1) & ((\stage1|STAGE1|Q\(2) & (!\stage1|STAGE1|Q\(3))) # (!\stage1|STAGE1|Q\(2) & ((\stage1|STAGE1|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage3|Mux2~0_combout\);

-- Location: LCCOMB_X113_Y25_N2
\stage3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux1~0_combout\ = (\stage1|STAGE1|Q\(3) & (((!\stage1|STAGE1|Q\(1) & \stage1|STAGE1|Q\(2))))) # (!\stage1|STAGE1|Q\(3) & ((\stage1|STAGE1|Q\(0) & ((\stage1|STAGE1|Q\(1)) # (!\stage1|STAGE1|Q\(2)))) # (!\stage1|STAGE1|Q\(0) & (\stage1|STAGE1|Q\(1) 
-- & !\stage1|STAGE1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage3|Mux1~0_combout\);

-- Location: LCCOMB_X113_Y25_N16
\stage3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage3|Mux0~0_combout\ = (\stage1|STAGE1|Q\(3)) # ((\stage1|STAGE1|Q\(1) & ((!\stage1|STAGE1|Q\(2)) # (!\stage1|STAGE1|Q\(0)))) # (!\stage1|STAGE1|Q\(1) & ((\stage1|STAGE1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|STAGE1|Q\(3),
	datab => \stage1|STAGE1|Q\(0),
	datac => \stage1|STAGE1|Q\(1),
	datad => \stage1|STAGE1|Q\(2),
	combout => \stage3|Mux0~0_combout\);

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


