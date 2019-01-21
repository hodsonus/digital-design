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

-- DATE "01/20/2019 18:31:30"

-- 
-- Device: Altera EPM240T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

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
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clr_n~combout\ : std_logic;
SIGNAL \ld_n~combout\ : std_logic;
SIGNAL \inst|sub|68~4_combout\ : std_logic;
SIGNAL \data0~combout\ : std_logic;
SIGNAL \inst|sub|68~3_combout\ : std_logic;
SIGNAL \enable~combout\ : std_logic;
SIGNAL \inst|sub|34~regout\ : std_logic;
SIGNAL \data1~combout\ : std_logic;
SIGNAL \inst|sub|115~2_combout\ : std_logic;
SIGNAL \inst|sub|73~combout\ : std_logic;
SIGNAL \inst|sub|108~combout\ : std_logic;
SIGNAL \inst|sub|111~regout\ : std_logic;
SIGNAL \data2~combout\ : std_logic;
SIGNAL \inst|sub|126~2_combout\ : std_logic;
SIGNAL \inst|sub|106~combout\ : std_logic;
SIGNAL \inst|sub|119~combout\ : std_logic;
SIGNAL \inst|sub|122~regout\ : std_logic;
SIGNAL \data3~combout\ : std_logic;
SIGNAL \inst|sub|137~2_combout\ : std_logic;
SIGNAL \inst|sub|117~combout\ : std_logic;
SIGNAL \inst|sub|130~combout\ : std_logic;
SIGNAL \inst|sub|134~regout\ : std_logic;
SIGNAL \data4~combout\ : std_logic;
SIGNAL \inst1|sub|68~2_combout\ : std_logic;
SIGNAL \inst|sub|128~combout\ : std_logic;
SIGNAL \inst1|sub|140~3\ : std_logic;
SIGNAL \inst1|sub|105~combout\ : std_logic;
SIGNAL \inst1|sub|34~regout\ : std_logic;
SIGNAL \data5~combout\ : std_logic;
SIGNAL \inst1|sub|115~2_combout\ : std_logic;
SIGNAL \inst1|sub|140~2_cout0\ : std_logic;
SIGNAL \inst1|sub|140~2COUT1_7\ : std_logic;
SIGNAL \inst1|sub|73~combout\ : std_logic;
SIGNAL \inst1|sub|108~combout\ : std_logic;
SIGNAL \inst1|sub|111~regout\ : std_logic;
SIGNAL \data6~combout\ : std_logic;
SIGNAL \inst1|sub|126~2_combout\ : std_logic;
SIGNAL \inst1|sub|106~combout\ : std_logic;
SIGNAL \inst1|sub|119~combout\ : std_logic;
SIGNAL \inst1|sub|122~regout\ : std_logic;
SIGNAL \data7~combout\ : std_logic;
SIGNAL \inst1|sub|137~2_combout\ : std_logic;
SIGNAL \inst1|sub|117~combout\ : std_logic;
SIGNAL \inst1|sub|130~combout\ : std_logic;
SIGNAL \inst1|sub|134~regout\ : std_logic;
SIGNAL \inst1|sub|128~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;

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

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr_n~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr_n,
	combout => \clr_n~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld_n~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_ld_n,
	combout => \ld_n~combout\);

-- Location: LC_X4_Y4_N4
\inst|sub|68~4\ : maxii_lcell
-- Equation(s):
-- \inst|sub|68~4_combout\ = (((\clr_n~combout\ & \ld_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|68~4_combout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data0,
	combout => \data0~combout\);

-- Location: LC_X4_Y4_N9
\inst|sub|68~3\ : maxii_lcell
-- Equation(s):
-- \inst|sub|68~3_combout\ = ((\data0~combout\ & (\clr_n~combout\ & !\ld_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data0~combout\,
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|68~3_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\enable~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_enable,
	combout => \enable~combout\);

-- Location: LC_X5_Y4_N9
\inst|sub|34\ : maxii_lcell
-- Equation(s):
-- \inst|sub|34~regout\ = DFFEAS((\inst|sub|68~3_combout\) # ((\inst|sub|68~4_combout\ & (\inst|sub|34~regout\ $ (\enable~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|34~regout\,
	datab => \inst|sub|68~4_combout\,
	datac => \inst|sub|68~3_combout\,
	datad => \enable~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|34~regout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data1,
	combout => \data1~combout\);

-- Location: LC_X4_Y4_N8
\inst|sub|115~2\ : maxii_lcell
-- Equation(s):
-- \inst|sub|115~2_combout\ = (\data1~combout\ & (((\clr_n~combout\ & !\ld_n~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data1~combout\,
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|115~2_combout\);

-- Location: LC_X5_Y4_N2
\inst|sub|73\ : maxii_lcell
-- Equation(s):
-- \inst|sub|73~combout\ = ((\enable~combout\ & ((\inst|sub|34~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datad => \inst|sub|34~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|73~combout\);

-- Location: LC_X7_Y4_N8
\inst|sub|108\ : maxii_lcell
-- Equation(s):
-- \inst|sub|108~combout\ = (((\enable~combout\ & \inst|sub|73~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \enable~combout\,
	datad => \inst|sub|73~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|108~combout\);

-- Location: LC_X6_Y4_N0
\inst|sub|111\ : maxii_lcell
-- Equation(s):
-- \inst|sub|111~regout\ = DFFEAS((\inst|sub|115~2_combout\) # ((\inst|sub|68~4_combout\ & (\inst|sub|111~regout\ $ (\inst|sub|108~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ceec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|68~4_combout\,
	datab => \inst|sub|115~2_combout\,
	datac => \inst|sub|111~regout\,
	datad => \inst|sub|108~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|111~regout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data2,
	combout => \data2~combout\);

-- Location: LC_X4_Y4_N0
\inst|sub|126~2\ : maxii_lcell
-- Equation(s):
-- \inst|sub|126~2_combout\ = (\data2~combout\ & (((\clr_n~combout\ & !\ld_n~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \data2~combout\,
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|126~2_combout\);

-- Location: LC_X5_Y4_N3
\inst|sub|106\ : maxii_lcell
-- Equation(s):
-- \inst|sub|106~combout\ = (((\inst|sub|111~regout\ & \inst|sub|73~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|sub|111~regout\,
	datad => \inst|sub|73~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|106~combout\);

-- Location: LC_X7_Y4_N7
\inst|sub|119\ : maxii_lcell
-- Equation(s):
-- \inst|sub|119~combout\ = (((\enable~combout\ & \inst|sub|106~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \enable~combout\,
	datad => \inst|sub|106~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|119~combout\);

-- Location: LC_X6_Y4_N9
\inst|sub|122\ : maxii_lcell
-- Equation(s):
-- \inst|sub|122~regout\ = DFFEAS((\inst|sub|126~2_combout\) # ((\inst|sub|68~4_combout\ & (\inst|sub|122~regout\ $ (\inst|sub|119~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ceec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|68~4_combout\,
	datab => \inst|sub|126~2_combout\,
	datac => \inst|sub|122~regout\,
	datad => \inst|sub|119~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|122~regout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data3,
	combout => \data3~combout\);

-- Location: LC_X4_Y4_N3
\inst|sub|137~2\ : maxii_lcell
-- Equation(s):
-- \inst|sub|137~2_combout\ = ((!\ld_n~combout\ & (\clr_n~combout\ & \data3~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ld_n~combout\,
	datac => \clr_n~combout\,
	datad => \data3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|137~2_combout\);

-- Location: LC_X5_Y4_N4
\inst|sub|117\ : maxii_lcell
-- Equation(s):
-- \inst|sub|117~combout\ = (((\inst|sub|122~regout\ & \inst|sub|106~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|sub|122~regout\,
	datad => \inst|sub|106~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|117~combout\);

-- Location: LC_X6_Y4_N5
\inst|sub|130\ : maxii_lcell
-- Equation(s):
-- \inst|sub|130~combout\ = (((\enable~combout\ & \inst|sub|117~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \enable~combout\,
	datad => \inst|sub|117~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|130~combout\);

-- Location: LC_X6_Y4_N6
\inst|sub|134\ : maxii_lcell
-- Equation(s):
-- \inst|sub|134~regout\ = DFFEAS((\inst|sub|137~2_combout\) # ((\inst|sub|68~4_combout\ & (\inst|sub|134~regout\ $ (\inst|sub|130~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|68~4_combout\,
	datab => \inst|sub|134~regout\,
	datac => \inst|sub|137~2_combout\,
	datad => \inst|sub|130~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|sub|134~regout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data4,
	combout => \data4~combout\);

-- Location: LC_X4_Y4_N1
\inst1|sub|68~2\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|68~2_combout\ = ((\data4~combout\ & (\clr_n~combout\ & !\ld_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data4~combout\,
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|68~2_combout\);

-- Location: LC_X5_Y4_N5
\inst|sub|128\ : maxii_lcell
-- Equation(s):
-- \inst|sub|128~combout\ = (((\inst|sub|134~regout\ & \inst|sub|117~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|sub|134~regout\,
	datad => \inst|sub|117~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst|sub|128~combout\);

-- Location: LC_X5_Y4_N0
\inst1|sub|140~2\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|140~3\ = (\inst|sub|128~combout\)
-- \inst1|sub|140~2_cout0\ = CARRY((\inst|sub|128~combout\))
-- \inst1|sub|140~2COUT1_7\ = CARRY((\inst|sub|128~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|128~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|140~3\,
	cout0 => \inst1|sub|140~2_cout0\,
	cout1 => \inst1|sub|140~2COUT1_7\);

-- Location: LC_X6_Y4_N3
\inst1|sub|105\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|105~combout\ = (((\enable~combout\ & \inst1|sub|140~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \enable~combout\,
	datad => \inst1|sub|140~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|105~combout\);

-- Location: LC_X6_Y4_N4
\inst1|sub|34\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|34~regout\ = DFFEAS((\inst1|sub|68~2_combout\) # ((\inst|sub|68~4_combout\ & (\inst1|sub|34~regout\ $ (\inst1|sub|105~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ceec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|68~4_combout\,
	datab => \inst1|sub|68~2_combout\,
	datac => \inst1|sub|34~regout\,
	datad => \inst1|sub|105~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|34~regout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data5~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data5,
	combout => \data5~combout\);

-- Location: LC_X4_Y4_N5
\inst1|sub|115~2\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|115~2_combout\ = ((\data5~combout\ & (\clr_n~combout\ & !\ld_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data5~combout\,
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|115~2_combout\);

-- Location: LC_X5_Y4_N1
\inst1|sub|73\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|73~combout\ = (((\inst1|sub|140~2_cout0\ & \inst1|sub|34~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|sub|34~regout\,
	cin0 => \inst1|sub|140~2_cout0\,
	cin1 => \inst1|sub|140~2COUT1_7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|73~combout\);

-- Location: LC_X6_Y4_N1
\inst1|sub|108\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|108~combout\ = (\enable~combout\ & (((\inst1|sub|73~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datac => \inst1|sub|73~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|108~combout\);

-- Location: LC_X6_Y4_N2
\inst1|sub|111\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|111~regout\ = DFFEAS((\inst1|sub|115~2_combout\) # ((\inst|sub|68~4_combout\ & (\inst1|sub|111~regout\ $ (\inst1|sub|108~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|68~4_combout\,
	datab => \inst1|sub|111~regout\,
	datac => \inst1|sub|115~2_combout\,
	datad => \inst1|sub|108~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|111~regout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data6~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data6,
	combout => \data6~combout\);

-- Location: LC_X4_Y4_N6
\inst1|sub|126~2\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|126~2_combout\ = ((\data6~combout\ & (\clr_n~combout\ & !\ld_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data6~combout\,
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|126~2_combout\);

-- Location: LC_X5_Y4_N6
\inst1|sub|106\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|106~combout\ = (((\inst1|sub|111~regout\ & \inst1|sub|73~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sub|111~regout\,
	datad => \inst1|sub|73~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|106~combout\);

-- Location: LC_X6_Y4_N7
\inst1|sub|119\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|119~combout\ = (\enable~combout\ & (((\inst1|sub|106~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \enable~combout\,
	datac => \inst1|sub|106~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|119~combout\);

-- Location: LC_X6_Y4_N8
\inst1|sub|122\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|122~regout\ = DFFEAS((\inst1|sub|126~2_combout\) # ((\inst|sub|68~4_combout\ & (\inst1|sub|122~regout\ $ (\inst1|sub|119~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|68~4_combout\,
	datab => \inst1|sub|122~regout\,
	datac => \inst1|sub|126~2_combout\,
	datad => \inst1|sub|119~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|122~regout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data7~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_data7,
	combout => \data7~combout\);

-- Location: LC_X4_Y4_N7
\inst1|sub|137~2\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|137~2_combout\ = ((\data7~combout\ & (\clr_n~combout\ & !\ld_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \data7~combout\,
	datac => \clr_n~combout\,
	datad => \ld_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|137~2_combout\);

-- Location: LC_X5_Y4_N7
\inst1|sub|117\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|117~combout\ = ((\inst1|sub|122~regout\ & ((\inst1|sub|106~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sub|122~regout\,
	datad => \inst1|sub|106~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|117~combout\);

-- Location: LC_X5_Y4_N8
\inst1|sub|130\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|130~combout\ = ((\enable~combout\ & ((\inst1|sub|117~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \enable~combout\,
	datad => \inst1|sub|117~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|130~combout\);

-- Location: LC_X4_Y4_N2
\inst1|sub|134\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|134~regout\ = DFFEAS((\inst1|sub|137~2_combout\) # ((\inst|sub|68~4_combout\ & (\inst1|sub|134~regout\ $ (\inst1|sub|130~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inst|sub|68~4_combout\,
	datab => \inst1|sub|134~regout\,
	datac => \inst1|sub|137~2_combout\,
	datad => \inst1|sub|130~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|sub|134~regout\);

-- Location: LC_X3_Y4_N4
\inst1|sub|128\ : maxii_lcell
-- Equation(s):
-- \inst1|sub|128~combout\ = ((\inst1|sub|134~regout\ & ((\inst1|sub|117~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|sub|134~regout\,
	datad => \inst1|sub|117~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|sub|128~combout\);

-- Location: LC_X3_Y4_N2
inst3 : maxii_lcell
-- Equation(s):
-- \inst3~combout\ = (((\inst1|sub|128~combout\ & \inst1|sub|140~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst1|sub|128~combout\,
	datad => \inst1|sub|140~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3~combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|34~regout\,
	oe => VCC,
	padio => ww_output0);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|111~regout\,
	oe => VCC,
	padio => ww_output1);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|122~regout\,
	oe => VCC,
	padio => ww_output2);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output3~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst|sub|134~regout\,
	oe => VCC,
	padio => ww_output3);

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output4~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|sub|34~regout\,
	oe => VCC,
	padio => ww_output4);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output5~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|sub|111~regout\,
	oe => VCC,
	padio => ww_output5);

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output6~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|sub|122~regout\,
	oe => VCC,
	padio => ww_output6);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output7~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|sub|134~regout\,
	oe => VCC,
	padio => ww_output7);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\rco~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst3~combout\,
	oe => VCC,
	padio => ww_rco);
END structure;


