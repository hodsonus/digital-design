-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "01/21/2019 21:30:52"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	counter IS
    PORT (
	output0 : OUT std_logic;
	data2 : IN std_logic;
	data1 : IN std_logic;
	data0 : IN std_logic;
	enable : IN std_logic;
	data3 : IN std_logic;
	clr_n : IN std_logic;
	clk : IN std_logic;
	ld_n : IN std_logic;
	output1 : OUT std_logic;
	output2 : OUT std_logic;
	output3 : OUT std_logic;
	output4 : OUT std_logic;
	data6 : IN std_logic;
	data5 : IN std_logic;
	data4 : IN std_logic;
	data7 : IN std_logic;
	output5 : OUT std_logic;
	output6 : OUT std_logic;
	output7 : OUT std_logic;
	rco : OUT std_logic
	);
END counter;

-- Design Ports Information
-- output0	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output1	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output2	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output3	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output4	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output5	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output6	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output7	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rco	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clr_n	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ld_n	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data0	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data1	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data2	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data3	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data4	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data5	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data6	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data7	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_output0 : std_logic;
SIGNAL ww_data2 : std_logic;
SIGNAL ww_data1 : std_logic;
SIGNAL ww_data0 : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_data3 : std_logic;
SIGNAL ww_clr_n : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ld_n : std_logic;
SIGNAL ww_output1 : std_logic;
SIGNAL ww_output2 : std_logic;
SIGNAL ww_output3 : std_logic;
SIGNAL ww_output4 : std_logic;
SIGNAL ww_data6 : std_logic;
SIGNAL ww_data5 : std_logic;
SIGNAL ww_data4 : std_logic;
SIGNAL ww_data7 : std_logic;
SIGNAL ww_output5 : std_logic;
SIGNAL ww_output6 : std_logic;
SIGNAL ww_output7 : std_logic;
SIGNAL ww_rco : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \output0~output_o\ : std_logic;
SIGNAL \output1~output_o\ : std_logic;
SIGNAL \output2~output_o\ : std_logic;
SIGNAL \output3~output_o\ : std_logic;
SIGNAL \output4~output_o\ : std_logic;
SIGNAL \output5~output_o\ : std_logic;
SIGNAL \output6~output_o\ : std_logic;
SIGNAL \output7~output_o\ : std_logic;
SIGNAL \rco~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clr_n~input_o\ : std_logic;
SIGNAL \ld_n~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \inst|sub|68~0_combout\ : std_logic;
SIGNAL \data0~input_o\ : std_logic;
SIGNAL \inst|sub|68~1_combout\ : std_logic;
SIGNAL \inst|sub|34~q\ : std_logic;
SIGNAL \data1~input_o\ : std_logic;
SIGNAL \inst|sub|109~combout\ : std_logic;
SIGNAL \inst|sub|115~0_combout\ : std_logic;
SIGNAL \inst|sub|111~q\ : std_logic;
SIGNAL \data2~input_o\ : std_logic;
SIGNAL \inst|sub|120~combout\ : std_logic;
SIGNAL \inst|sub|126~0_combout\ : std_logic;
SIGNAL \inst|sub|122~q\ : std_logic;
SIGNAL \data3~input_o\ : std_logic;
SIGNAL \inst|sub|130~0_combout\ : std_logic;
SIGNAL \inst|sub|137~0_combout\ : std_logic;
SIGNAL \inst|sub|137~1_combout\ : std_logic;
SIGNAL \inst|sub|134~q\ : std_logic;
SIGNAL \data4~input_o\ : std_logic;
SIGNAL \inst1|sub|72~combout\ : std_logic;
SIGNAL \inst1|sub|68~0_combout\ : std_logic;
SIGNAL \inst1|sub|34~q\ : std_logic;
SIGNAL \data5~input_o\ : std_logic;
SIGNAL \inst|sub|108~0_combout\ : std_logic;
SIGNAL \inst3~0_combout\ : std_logic;
SIGNAL \inst1|sub|109~combout\ : std_logic;
SIGNAL \inst1|sub|115~0_combout\ : std_logic;
SIGNAL \inst1|sub|111~q\ : std_logic;
SIGNAL \data6~input_o\ : std_logic;
SIGNAL \inst1|sub|119~0_combout\ : std_logic;
SIGNAL \inst1|sub|126~0_combout\ : std_logic;
SIGNAL \inst1|sub|126~1_combout\ : std_logic;
SIGNAL \inst1|sub|122~q\ : std_logic;
SIGNAL \data7~input_o\ : std_logic;
SIGNAL \inst1|sub|131~2_combout\ : std_logic;
SIGNAL \inst1|sub|131~combout\ : std_logic;
SIGNAL \inst1|sub|137~0_combout\ : std_logic;
SIGNAL \inst1|sub|134~q\ : std_logic;
SIGNAL \inst3~1_combout\ : std_logic;
SIGNAL \inst3~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

output0 <= ww_output0;
ww_data2 <= data2;
ww_data1 <= data1;
ww_data0 <= data0;
ww_enable <= enable;
ww_data3 <= data3;
ww_clr_n <= clr_n;
ww_clk <= clk;
ww_ld_n <= ld_n;
output1 <= ww_output1;
output2 <= ww_output2;
output3 <= ww_output3;
output4 <= ww_output4;
ww_data6 <= data6;
ww_data5 <= data5;
ww_data4 <= data4;
ww_data7 <= data7;
output5 <= ww_output5;
output6 <= ww_output6;
output7 <= ww_output7;
rco <= ww_rco;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\output0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|34~q\,
	devoe => ww_devoe,
	o => \output0~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\output1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|111~q\,
	devoe => ww_devoe,
	o => \output1~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\output2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|122~q\,
	devoe => ww_devoe,
	o => \output2~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\output3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|134~q\,
	devoe => ww_devoe,
	o => \output3~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\output4~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|34~q\,
	devoe => ww_devoe,
	o => \output4~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\output5~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|111~q\,
	devoe => ww_devoe,
	o => \output5~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\output6~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|122~q\,
	devoe => ww_devoe,
	o => \output6~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\output7~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|sub|134~q\,
	devoe => ww_devoe,
	o => \output7~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\rco~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~2_combout\,
	devoe => ww_devoe,
	o => \rco~output_o\);

-- Location: IOIBUF_X69_Y54_N1
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\clr_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clr_n,
	o => \clr_n~input_o\);

-- Location: IOIBUF_X49_Y54_N29
\ld_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ld_n,
	o => \ld_n~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\enable~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X55_Y53_N14
\inst|sub|68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|68~0_combout\ = (\ld_n~input_o\ & (\clr_n~input_o\ & (\enable~input_o\ $ (\inst|sub|34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \ld_n~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|68~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\data0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data0,
	o => \data0~input_o\);

-- Location: LCCOMB_X55_Y53_N20
\inst|sub|68~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|68~1_combout\ = (\inst|sub|68~0_combout\) # ((\clr_n~input_o\ & (!\ld_n~input_o\ & \data0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr_n~input_o\,
	datab => \ld_n~input_o\,
	datac => \inst|sub|68~0_combout\,
	datad => \data0~input_o\,
	combout => \inst|sub|68~1_combout\);

-- Location: FF_X55_Y53_N21
\inst|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sub|68~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|34~q\);

-- Location: IOIBUF_X51_Y54_N22
\data1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data1,
	o => \data1~input_o\);

-- Location: LCCOMB_X54_Y53_N24
\inst|sub|109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|109~combout\ = \inst|sub|111~q\ $ (((\inst|sub|34~q\ & \enable~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|111~q\,
	datac => \inst|sub|34~q\,
	datad => \enable~input_o\,
	combout => \inst|sub|109~combout\);

-- Location: LCCOMB_X54_Y53_N4
\inst|sub|115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|115~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst|sub|109~combout\))) # (!\ld_n~input_o\ & (\data1~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \data1~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst|sub|109~combout\,
	combout => \inst|sub|115~0_combout\);

-- Location: FF_X54_Y53_N5
\inst|sub|111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sub|115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|111~q\);

-- Location: IOIBUF_X51_Y54_N1
\data2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data2,
	o => \data2~input_o\);

-- Location: LCCOMB_X54_Y53_N18
\inst|sub|120\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|120~combout\ = \inst|sub|122~q\ $ (((\inst|sub|111~q\ & (\enable~input_o\ & \inst|sub|34~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|111~q\,
	datab => \enable~input_o\,
	datac => \inst|sub|34~q\,
	datad => \inst|sub|122~q\,
	combout => \inst|sub|120~combout\);

-- Location: LCCOMB_X54_Y53_N22
\inst|sub|126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|126~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst|sub|120~combout\))) # (!\ld_n~input_o\ & (\data2~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \data2~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst|sub|120~combout\,
	combout => \inst|sub|126~0_combout\);

-- Location: FF_X54_Y53_N23
\inst|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sub|126~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|122~q\);

-- Location: IOIBUF_X54_Y54_N29
\data3~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data3,
	o => \data3~input_o\);

-- Location: LCCOMB_X54_Y53_N20
\inst|sub|130~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|130~0_combout\ = (\inst|sub|122~q\ & (\enable~input_o\ & (\inst|sub|34~q\ & \inst|sub|111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|122~q\,
	datab => \enable~input_o\,
	datac => \inst|sub|34~q\,
	datad => \inst|sub|111~q\,
	combout => \inst|sub|130~0_combout\);

-- Location: LCCOMB_X54_Y53_N6
\inst|sub|137~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|137~0_combout\ = (\clr_n~input_o\ & (\ld_n~input_o\ & (\inst|sub|134~q\ $ (\inst|sub|130~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|134~q\,
	datab => \clr_n~input_o\,
	datac => \ld_n~input_o\,
	datad => \inst|sub|130~0_combout\,
	combout => \inst|sub|137~0_combout\);

-- Location: LCCOMB_X54_Y53_N16
\inst|sub|137~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|137~1_combout\ = (\inst|sub|137~0_combout\) # ((!\ld_n~input_o\ & (\data3~input_o\ & \clr_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld_n~input_o\,
	datab => \data3~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst|sub|137~0_combout\,
	combout => \inst|sub|137~1_combout\);

-- Location: FF_X54_Y53_N17
\inst|sub|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst|sub|137~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|134~q\);

-- Location: IOIBUF_X54_Y54_N22
\data4~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data4,
	o => \data4~input_o\);

-- Location: LCCOMB_X55_Y53_N16
\inst1|sub|72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|72~combout\ = \inst1|sub|34~q\ $ (((\inst|sub|134~q\ & \inst|sub|130~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|34~q\,
	datac => \inst|sub|134~q\,
	datad => \inst|sub|130~0_combout\,
	combout => \inst1|sub|72~combout\);

-- Location: LCCOMB_X55_Y53_N30
\inst1|sub|68~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|68~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst1|sub|72~combout\))) # (!\ld_n~input_o\ & (\data4~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data4~input_o\,
	datab => \ld_n~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst1|sub|72~combout\,
	combout => \inst1|sub|68~0_combout\);

-- Location: FF_X55_Y53_N31
\inst1|sub|34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|sub|68~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|34~q\);

-- Location: IOIBUF_X49_Y54_N1
\data5~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data5,
	o => \data5~input_o\);

-- Location: LCCOMB_X55_Y53_N18
\inst|sub|108~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|sub|108~0_combout\ = (\enable~input_o\ & \inst|sub|34~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \enable~input_o\,
	datad => \inst|sub|34~q\,
	combout => \inst|sub|108~0_combout\);

-- Location: LCCOMB_X54_Y53_N14
\inst3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~0_combout\ = (\inst|sub|122~q\ & (\enable~input_o\ & (\inst|sub|111~q\ & \inst|sub|134~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|122~q\,
	datab => \enable~input_o\,
	datac => \inst|sub|111~q\,
	datad => \inst|sub|134~q\,
	combout => \inst3~0_combout\);

-- Location: LCCOMB_X55_Y53_N28
\inst1|sub|109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|109~combout\ = \inst1|sub|111~q\ $ (((\inst|sub|108~0_combout\ & (\inst1|sub|34~q\ & \inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|111~q\,
	datab => \inst|sub|108~0_combout\,
	datac => \inst1|sub|34~q\,
	datad => \inst3~0_combout\,
	combout => \inst1|sub|109~combout\);

-- Location: LCCOMB_X55_Y53_N12
\inst1|sub|115~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|115~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst1|sub|109~combout\))) # (!\ld_n~input_o\ & (\data5~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data5~input_o\,
	datab => \ld_n~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst1|sub|109~combout\,
	combout => \inst1|sub|115~0_combout\);

-- Location: FF_X55_Y53_N13
\inst1|sub|111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|sub|115~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|111~q\);

-- Location: IOIBUF_X54_Y54_N15
\data6~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data6,
	o => \data6~input_o\);

-- Location: LCCOMB_X55_Y53_N2
\inst1|sub|119~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|119~0_combout\ = (\inst1|sub|111~q\ & (\inst|sub|108~0_combout\ & (\inst1|sub|34~q\ & \inst3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|111~q\,
	datab => \inst|sub|108~0_combout\,
	datac => \inst1|sub|34~q\,
	datad => \inst3~0_combout\,
	combout => \inst1|sub|119~0_combout\);

-- Location: LCCOMB_X55_Y53_N0
\inst1|sub|126~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|126~0_combout\ = (\ld_n~input_o\ & (\clr_n~input_o\ & (\inst1|sub|122~q\ $ (\inst1|sub|119~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|122~q\,
	datab => \ld_n~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst1|sub|119~0_combout\,
	combout => \inst1|sub|126~0_combout\);

-- Location: LCCOMB_X55_Y53_N22
\inst1|sub|126~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|126~1_combout\ = (\inst1|sub|126~0_combout\) # ((\data6~input_o\ & (!\ld_n~input_o\ & \clr_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data6~input_o\,
	datab => \ld_n~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst1|sub|126~0_combout\,
	combout => \inst1|sub|126~1_combout\);

-- Location: FF_X55_Y53_N23
\inst1|sub|122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|sub|126~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|122~q\);

-- Location: IOIBUF_X58_Y54_N29
\data7~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data7,
	o => \data7~input_o\);

-- Location: LCCOMB_X55_Y53_N8
\inst1|sub|131~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|131~2_combout\ = (((!\inst1|sub|111~q\) # (!\inst1|sub|34~q\)) # (!\inst|sub|34~q\)) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enable~input_o\,
	datab => \inst|sub|34~q\,
	datac => \inst1|sub|34~q\,
	datad => \inst1|sub|111~q\,
	combout => \inst1|sub|131~2_combout\);

-- Location: LCCOMB_X55_Y53_N10
\inst1|sub|131\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|131~combout\ = \inst1|sub|134~q\ $ (((\inst1|sub|122~q\ & (!\inst1|sub|131~2_combout\ & \inst3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|122~q\,
	datab => \inst1|sub|131~2_combout\,
	datac => \inst1|sub|134~q\,
	datad => \inst3~0_combout\,
	combout => \inst1|sub|131~combout\);

-- Location: LCCOMB_X55_Y53_N4
\inst1|sub|137~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|sub|137~0_combout\ = (\clr_n~input_o\ & ((\ld_n~input_o\ & ((\inst1|sub|131~combout\))) # (!\ld_n~input_o\ & (\data7~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data7~input_o\,
	datab => \ld_n~input_o\,
	datac => \clr_n~input_o\,
	datad => \inst1|sub|131~combout\,
	combout => \inst1|sub|137~0_combout\);

-- Location: FF_X55_Y53_N5
\inst1|sub|134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst1|sub|137~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|sub|134~q\);

-- Location: LCCOMB_X55_Y53_N6
\inst3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~1_combout\ = (\inst1|sub|122~q\ & (\inst|sub|34~q\ & (\inst1|sub|134~q\ & \inst1|sub|111~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|sub|122~q\,
	datab => \inst|sub|34~q\,
	datac => \inst1|sub|134~q\,
	datad => \inst1|sub|111~q\,
	combout => \inst3~1_combout\);

-- Location: LCCOMB_X55_Y53_N24
\inst3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~2_combout\ = (\inst3~0_combout\ & (\inst1|sub|34~q\ & \inst3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~0_combout\,
	datac => \inst1|sub|34~q\,
	datad => \inst3~1_combout\,
	combout => \inst3~2_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_output0 <= \output0~output_o\;

ww_output1 <= \output1~output_o\;

ww_output2 <= \output2~output_o\;

ww_output3 <= \output3~output_o\;

ww_output4 <= \output4~output_o\;

ww_output5 <= \output5~output_o\;

ww_output6 <= \output6~output_o\;

ww_output7 <= \output7~output_o\;

ww_rco <= \rco~output_o\;
END structure;


