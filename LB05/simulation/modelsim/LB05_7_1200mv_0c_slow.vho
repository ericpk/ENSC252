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

-- DATE "10/24/2017 13:46:12"

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
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Top IS
    PORT (
	SW : IN std_logic_vector(5 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END Top;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Top IS
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
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \stage0|LimitTest|X~1_combout\ : std_logic;
SIGNAL \stage0|MuxOut[1]~1_combout\ : std_logic;
SIGNAL \stage0|MuxOut[2]~2_combout\ : std_logic;
SIGNAL \stage0|MuxOut[2]~3_combout\ : std_logic;
SIGNAL \stage0|Incrementer|Stage3|Cout~combout\ : std_logic;
SIGNAL \stage0|MuxOut[5]~5_combout\ : std_logic;
SIGNAL \stage0|LimitTest|X~0_combout\ : std_logic;
SIGNAL \stage0|Incrementer|Stage3|S~combout\ : std_logic;
SIGNAL \stage0|MuxOut[3]~4_combout\ : std_logic;
SIGNAL \stage0|MuxOut[4]~6_combout\ : std_logic;
SIGNAL \stage0|MuxOut[0]~0_combout\ : std_logic;
SIGNAL \stage2|Mux6~0_combout\ : std_logic;
SIGNAL \stage2|Mux5~0_combout\ : std_logic;
SIGNAL \stage2|Mux4~0_combout\ : std_logic;
SIGNAL \stage2|Mux3~0_combout\ : std_logic;
SIGNAL \stage2|Mux2~0_combout\ : std_logic;
SIGNAL \stage2|Mux1~0_combout\ : std_logic;
SIGNAL \stage2|Mux0~0_combout\ : std_logic;
SIGNAL \stage1|Mux1~0_combout\ : std_logic;
SIGNAL \stage1|Mux1~1_combout\ : std_logic;
SIGNAL \stage1|Mux1~2_combout\ : std_logic;
SIGNAL \stage0|Q\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \stage0|ALT_INV_Q\ : std_logic_vector(4 DOWNTO 4);
SIGNAL \stage2|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\stage0|ALT_INV_Q\(4) <= NOT \stage0|Q\(4);
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
	i => \stage1|Mux1~0_combout\,
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
	i => GND,
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
	i => \stage1|Mux1~1_combout\,
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
	i => \stage1|Mux1~0_combout\,
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
	i => \stage0|ALT_INV_Q\(4),
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
	i => \stage1|Mux1~2_combout\,
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
	i => \stage0|Q\(5),
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

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

-- Location: LCCOMB_X114_Y54_N18
\stage0|LimitTest|X~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|LimitTest|X~1_combout\ = (!\stage0|Q\(3) & (!\stage0|Q\(4) & \stage0|LimitTest|X~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(3),
	datac => \stage0|Q\(4),
	datad => \stage0|LimitTest|X~0_combout\,
	combout => \stage0|LimitTest|X~1_combout\);

-- Location: LCCOMB_X114_Y54_N6
\stage0|MuxOut[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|MuxOut[1]~1_combout\ = (\stage0|LimitTest|X~1_combout\) # (\stage0|Q\(0) $ (\stage0|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(0),
	datac => \stage0|Q\(1),
	datad => \stage0|LimitTest|X~1_combout\,
	combout => \stage0|MuxOut[1]~1_combout\);

-- Location: FF_X114_Y54_N7
\stage0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \stage0|MuxOut[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Q\(1));

-- Location: LCCOMB_X114_Y54_N24
\stage0|MuxOut[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|MuxOut[2]~2_combout\ = \stage0|Q\(2) $ (((!\stage0|Q\(1) & \stage0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(1),
	datac => \stage0|Q\(2),
	datad => \stage0|Q\(0),
	combout => \stage0|MuxOut[2]~2_combout\);

-- Location: LCCOMB_X114_Y54_N8
\stage0|MuxOut[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|MuxOut[2]~3_combout\ = (\stage0|MuxOut[2]~2_combout\ & ((\stage0|Q\(4)) # ((\stage0|Q\(3)) # (!\stage0|LimitTest|X~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(4),
	datab => \stage0|Q\(3),
	datac => \stage0|LimitTest|X~0_combout\,
	datad => \stage0|MuxOut[2]~2_combout\,
	combout => \stage0|MuxOut[2]~3_combout\);

-- Location: FF_X114_Y54_N9
\stage0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \stage0|MuxOut[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Q\(2));

-- Location: LCCOMB_X114_Y54_N28
\stage0|Incrementer|Stage3|Cout\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Incrementer|Stage3|Cout~combout\ = (!\stage0|Q\(1) & (\stage0|Q\(2) & (\stage0|Q\(0) & !\stage0|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(1),
	datab => \stage0|Q\(2),
	datac => \stage0|Q\(0),
	datad => \stage0|Q\(3),
	combout => \stage0|Incrementer|Stage3|Cout~combout\);

-- Location: LCCOMB_X114_Y54_N12
\stage0|MuxOut[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|MuxOut[5]~5_combout\ = (\stage0|LimitTest|X~1_combout\) # (\stage0|Q\(5) $ (((!\stage0|Q\(4) & \stage0|Incrementer|Stage3|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(4),
	datab => \stage0|Incrementer|Stage3|Cout~combout\,
	datac => \stage0|Q\(5),
	datad => \stage0|LimitTest|X~1_combout\,
	combout => \stage0|MuxOut[5]~5_combout\);

-- Location: FF_X114_Y54_N13
\stage0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \stage0|MuxOut[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Q\(5));

-- Location: LCCOMB_X114_Y54_N20
\stage0|LimitTest|X~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|LimitTest|X~0_combout\ = (!\stage0|Q\(5) & ((\stage0|Q\(2)) # ((\stage0|Q\(0) & !\stage0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(5),
	datab => \stage0|Q\(2),
	datac => \stage0|Q\(0),
	datad => \stage0|Q\(1),
	combout => \stage0|LimitTest|X~0_combout\);

-- Location: LCCOMB_X114_Y54_N2
\stage0|Incrementer|Stage3|S\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|Incrementer|Stage3|S~combout\ = \stage0|Q\(3) $ (((\stage0|Q\(1)) # ((!\stage0|Q\(2)) # (!\stage0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(1),
	datab => \stage0|Q\(0),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(2),
	combout => \stage0|Incrementer|Stage3|S~combout\);

-- Location: LCCOMB_X114_Y54_N26
\stage0|MuxOut[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|MuxOut[3]~4_combout\ = ((!\stage0|Q\(4) & (\stage0|LimitTest|X~0_combout\ & !\stage0|Q\(3)))) # (!\stage0|Incrementer|Stage3|S~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(4),
	datab => \stage0|LimitTest|X~0_combout\,
	datac => \stage0|Q\(3),
	datad => \stage0|Incrementer|Stage3|S~combout\,
	combout => \stage0|MuxOut[3]~4_combout\);

-- Location: FF_X114_Y54_N27
\stage0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \stage0|MuxOut[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Q\(3));

-- Location: LCCOMB_X114_Y54_N30
\stage0|MuxOut[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|MuxOut[4]~6_combout\ = (\stage0|Q\(4) & (((!\stage0|Incrementer|Stage3|Cout~combout\)))) # (!\stage0|Q\(4) & ((\stage0|Incrementer|Stage3|Cout~combout\) # ((!\stage0|Q\(3) & \stage0|LimitTest|X~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(3),
	datab => \stage0|LimitTest|X~0_combout\,
	datac => \stage0|Q\(4),
	datad => \stage0|Incrementer|Stage3|Cout~combout\,
	combout => \stage0|MuxOut[4]~6_combout\);

-- Location: FF_X114_Y54_N31
\stage0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \stage0|MuxOut[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Q\(4));

-- Location: LCCOMB_X114_Y54_N4
\stage0|MuxOut[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage0|MuxOut[0]~0_combout\ = (!\stage0|Q\(0) & ((\stage0|Q\(4)) # ((\stage0|Q\(3)) # (!\stage0|LimitTest|X~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(4),
	datab => \stage0|Q\(3),
	datac => \stage0|Q\(0),
	datad => \stage0|LimitTest|X~0_combout\,
	combout => \stage0|MuxOut[0]~0_combout\);

-- Location: FF_X114_Y54_N5
\stage0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \stage0|MuxOut[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|Q\(0));

-- Location: LCCOMB_X114_Y58_N0
\stage2|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux6~0_combout\ = (\stage0|Q\(2) & (\stage0|Q\(1) & ((!\stage0|Q\(3)) # (!\stage0|Q\(0))))) # (!\stage0|Q\(2) & (\stage0|Q\(0) & (\stage0|Q\(3) $ (!\stage0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(0),
	datab => \stage0|Q\(2),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(1),
	combout => \stage2|Mux6~0_combout\);

-- Location: LCCOMB_X114_Y58_N6
\stage2|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux5~0_combout\ = (\stage0|Q\(3) & (\stage0|Q\(2) & (\stage0|Q\(0) $ (!\stage0|Q\(1))))) # (!\stage0|Q\(3) & ((\stage0|Q\(0) & ((!\stage0|Q\(1)))) # (!\stage0|Q\(0) & (\stage0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(0),
	datab => \stage0|Q\(2),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(1),
	combout => \stage2|Mux5~0_combout\);

-- Location: LCCOMB_X114_Y58_N4
\stage2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux4~0_combout\ = (\stage0|Q\(2) & (!\stage0|Q\(3) & ((!\stage0|Q\(1)) # (!\stage0|Q\(0))))) # (!\stage0|Q\(2) & (!\stage0|Q\(0) & (\stage0|Q\(3) & !\stage0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(0),
	datab => \stage0|Q\(2),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(1),
	combout => \stage2|Mux4~0_combout\);

-- Location: LCCOMB_X114_Y54_N16
\stage2|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux3~0_combout\ = (\stage0|Q\(0) & (\stage0|Q\(2) $ ((\stage0|Q\(1))))) # (!\stage0|Q\(0) & ((\stage0|Q\(2) & (\stage0|Q\(1) & \stage0|Q\(3))) # (!\stage0|Q\(2) & (!\stage0|Q\(1) & !\stage0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(2),
	datab => \stage0|Q\(1),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(0),
	combout => \stage2|Mux3~0_combout\);

-- Location: LCCOMB_X114_Y54_N10
\stage2|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux2~0_combout\ = (\stage0|Q\(1) & ((\stage0|Q\(2) & (\stage0|Q\(3))) # (!\stage0|Q\(2) & ((\stage0|Q\(0)))))) # (!\stage0|Q\(1) & (((\stage0|Q\(3) & \stage0|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(2),
	datab => \stage0|Q\(1),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(0),
	combout => \stage2|Mux2~0_combout\);

-- Location: LCCOMB_X114_Y58_N2
\stage2|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux1~0_combout\ = (\stage0|Q\(2) & ((\stage0|Q\(3) & (\stage0|Q\(0) & !\stage0|Q\(1))) # (!\stage0|Q\(3) & ((\stage0|Q\(1)))))) # (!\stage0|Q\(2) & (\stage0|Q\(3) & ((\stage0|Q\(0)) # (!\stage0|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(0),
	datab => \stage0|Q\(2),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(1),
	combout => \stage2|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y58_N24
\stage2|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage2|Mux0~0_combout\ = ((\stage0|Q\(2) & ((\stage0|Q\(1)) # (!\stage0|Q\(0)))) # (!\stage0|Q\(2) & ((!\stage0|Q\(1))))) # (!\stage0|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|Q\(0),
	datab => \stage0|Q\(2),
	datac => \stage0|Q\(3),
	datad => \stage0|Q\(1),
	combout => \stage2|Mux0~0_combout\);

-- Location: LCCOMB_X114_Y25_N0
\stage1|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux1~0_combout\ = (\stage0|Q\(5) & !\stage0|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0|Q\(5),
	datad => \stage0|Q\(4),
	combout => \stage1|Mux1~0_combout\);

-- Location: LCCOMB_X114_Y25_N22
\stage1|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux1~1_combout\ = (!\stage0|Q\(5) & \stage0|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0|Q\(5),
	datad => \stage0|Q\(4),
	combout => \stage1|Mux1~1_combout\);

-- Location: LCCOMB_X114_Y25_N28
\stage1|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \stage1|Mux1~2_combout\ = (!\stage0|Q\(4)) # (!\stage0|Q\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \stage0|Q\(5),
	datad => \stage0|Q\(4),
	combout => \stage1|Mux1~2_combout\);

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


