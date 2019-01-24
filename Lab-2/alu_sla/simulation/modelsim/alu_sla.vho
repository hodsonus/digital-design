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

-- DATE "01/23/2019 19:32:39"

-- 
-- Device: Altera EPM570T100C3 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	alu_sla IS
    PORT (
	input1 : IN std_logic_vector(15 DOWNTO 0);
	input2 : IN std_logic_vector(15 DOWNTO 0);
	sel : IN std_logic_vector(3 DOWNTO 0);
	output : BUFFER std_logic_vector(15 DOWNTO 0);
	overflow : BUFFER std_logic
	);
END alu_sla;

-- Design Ports Information


ARCHITECTURE structure OF alu_sla IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input1 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_input2 : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~2\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_86\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~2COUT1_81\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Mux14~6_combout\ : std_logic;
SIGNAL \Mux14~7_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \Mux15~10_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux15~11_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux15~12_combout\ : std_logic;
SIGNAL \Mux15~14_combout\ : std_logic;
SIGNAL \Mux15~13_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux15~15_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_82\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Mux13~6_combout\ : std_logic;
SIGNAL \Mux13~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[0]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[0]~COUTCOUT1_17\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[0]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[0]~COUTCOUT1_17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~7COUT1_161\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_87\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux12~6_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Mux12~7_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~2\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~2COUT1_151\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~12COUT1_162\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~15_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux15~17_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux15~16_combout\ : std_logic;
SIGNAL \Mux15~18_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux15~19_combout\ : std_logic;
SIGNAL \Mux11~1_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_83\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[1]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[1]~COUTCOUT1_18\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[1]~COUTCOUT1_18\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~7COUT1_152\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~17COUT1_163\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~20_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_88\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux15~20_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_89\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~2COUT1_141\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~12\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~12COUT1_153\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~22COUT1_164\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~25_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_84\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~27COUT1_85\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~7COUT1_142\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[2]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[2]~COUTCOUT1_19\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[2]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[2]~COUTCOUT1_19\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~17COUT1_154\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~30_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_90\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \Mux15~21_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux9~1_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_91\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Mux15~23_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~12COUT1_143\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[0]~2\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[0]~2COUT1_121\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[1]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~32\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~32COUT1_165\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~35_combout\ : std_logic;
SIGNAL \Mux15~24_combout\ : std_logic;
SIGNAL \Mux15~39_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_86\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Mux15~40_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux15~22_combout\ : std_logic;
SIGNAL \Mux15~25_combout\ : std_logic;
SIGNAL \Mux8~1_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Mux15~37_combout\ : std_logic;
SIGNAL \Mux15~38_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[3]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[3]~COUTCOUT1_20\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[3]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[3]~COUTCOUT1_20\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[1]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[2]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~27COUT1_155\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~17\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~37\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~37COUT1_166\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~40_combout\ : std_logic;
SIGNAL \Mux15~27_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Mux15~28_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux15~26_combout\ : std_logic;
SIGNAL \Mux15~29_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~42COUT1_92\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[2]~12\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[2]~12COUT1_122\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[3]~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~32\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~32COUT1_156\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~35_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[0]~2\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[0]~2COUT1_91\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[1]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~22\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~22COUT1_144\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~42\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~42COUT1_167\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~45_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_87\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~47COUT1_88\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_93\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[1]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[1]~7COUT1_92\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[2]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[3]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[3]~17COUT1_123\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[4]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~37\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~37COUT1_157\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[4]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[4]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~27\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~27COUT1_145\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~47\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~47COUT1_168\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~50_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~52COUT1_89\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_94\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[4]~22\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[4]~22COUT1_124\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[5]~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~42\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~42COUT1_158\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~45_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[2]~12\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[2]~12COUT1_93\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[3]~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[0]~2\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[0]~2COUT1_71\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[1]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~32\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~32COUT1_146\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~35_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~52\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~55_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~57COUT1_90\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[5]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[5]~COUTCOUT1_21\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[5]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[5]~COUTCOUT1_21\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[5]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[5]~27COUT1_125\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[6]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[3]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[4]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~47\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[1]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[2]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~37\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~37COUT1_147\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~57\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~57COUT1_169\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~60_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~57COUT1_95\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[0]~2\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[0]~2COUT1_81\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[1]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[2]~12\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[2]~12COUT1_72\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[3]~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~42\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~45_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[6]~32\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[7]~35_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[4]~22\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[4]~22COUT1_94\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[5]~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~52\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~52COUT1_159\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~62\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~62COUT1_170\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~65_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~67COUT1_91\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_96\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[6]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs2a[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[7]~37\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[7]~37COUT1_126\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[8]~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[5]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[5]~27COUT1_95\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[6]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~57\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~57COUT1_160\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[3]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[3]~17COUT1_73\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[4]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[1]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[1]~7COUT1_82\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[2]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~47\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~47COUT1_148\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~67\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~67COUT1_171\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~70_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux15~30_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux15~36_combout\ : std_logic;
SIGNAL \Add1~72\ : std_logic;
SIGNAL \Add1~72COUT1_92\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Mux15~32_combout\ : std_logic;
SIGNAL \Mux15~33_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[4]~22\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[4]~22COUT1_74\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[5]~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[2]~12\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[3]~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~52\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~52COUT1_149\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[0]~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[8]~42\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[8]~42COUT1_127\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[9]~45_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[6]~COUT\ : std_logic;
SIGNAL \Mult0|auto_generated|cs1a[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[6]~32\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[6]~32COUT1_96\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[7]~35_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~62\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~62COUT1_161\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~65_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~72\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~72COUT1_172\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~75_combout\ : std_logic;
SIGNAL \Mux15~34_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_97\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux15~35_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux15~31_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_98\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[0]~2\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[0]~2COUT1_36\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[1]~7\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[1]~7COUT1_37\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[2]~10_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[1]~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[9]~47\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[9]~47COUT1_128\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[10]~52\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[10]~52COUT1_129\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[11]~57\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[2]~12\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[2]~12COUT1_38\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[3]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[4]~22\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[4]~22COUT1_39\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[5]~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[4]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[3]~15_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[12]~62\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[12]~62COUT1_130\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[13]~67\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[13]~67COUT1_131\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[14]~72\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[14]~72COUT1_132\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[15]~75_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[7]~37\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[7]~37COUT1_97\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[8]~42\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[9]~47\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[9]~47COUT1_98\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[10]~52\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[10]~52COUT1_99\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[11]~57\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[11]~57COUT1_100\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[12]~62\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[12]~62COUT1_101\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[13]~65_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[10]~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[8]~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~67\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~67COUT1_162\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~72\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[14]~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[12]~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[13]~65_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[11]~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[12]~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[10]~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[11]~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[9]~45_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~77\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~77COUT1_163\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~82\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~82COUT1_164\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~87\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~87COUT1_165\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~92\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~92COUT1_166\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~95_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[5]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[5]~27COUT1_40\ : std_logic;
SIGNAL \Mult0|auto_generated|add40_result[6]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[3]~17\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[3]~17COUT1_83\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[4]~22\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[4]~22COUT1_84\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[5]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[5]~27COUT1_85\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[6]~32\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[6]~32COUT1_86\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[7]~37\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[8]~42\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[8]~42COUT1_87\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[9]~45_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[5]~27\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[5]~27COUT1_75\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[6]~32\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[7]~37\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[7]~37COUT1_76\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[8]~42\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[8]~42COUT1_77\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[9]~47\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[9]~47COUT1_78\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[10]~52\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[10]~52COUT1_79\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[11]~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[5]~25_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[7]~35_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[4]~20_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[6]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~57\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~57COUT1_150\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~62\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~62COUT1_151\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~67\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[8]~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[10]~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[9]~45_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[7]~35_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[8]~40_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[6]~30_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~72\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~72COUT1_152\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~77\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~77COUT1_153\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~82\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~82COUT1_154\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~85_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~90_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~77\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~85_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~75_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~65_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~75_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~82\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~82COUT1_173\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~87\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~87COUT1_174\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~92\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~92COUT1_175\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~97\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~97COUT1_176\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~102\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~105_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[15]~77\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[15]~77COUT1_133\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[16]~82\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[17]~85_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[9]~47\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[9]~47COUT1_88\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[10]~52\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[10]~52COUT1_89\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[11]~55_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~97\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[16]~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[13]~67\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[14]~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~102\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~102COUT1_167\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~105_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[11]~57\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[12]~62\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[12]~62COUT1_80\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[13]~65_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[14]~72\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[14]~72COUT1_102\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[15]~75_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[10]~50_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add32_result[12]~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~87\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~87COUT1_155\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~92\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~95_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~90_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~100_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~107\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~107COUT1_177\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~112\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~112COUT1_178\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~115_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~110_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~100_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[11]~57\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[11]~57COUT1_90\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[12]~62\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[13]~67\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[13]~67COUT1_91\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[14]~72\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[14]~72COUT1_92\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[15]~75_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[14]~70_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[15]~77\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[15]~77COUT1_103\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[16]~82\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[16]~82COUT1_104\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[17]~85_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[13]~65_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add36_result[12]~60_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add28_result[16]~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~97\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~97COUT1_156\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~102\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~102COUT1_157\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~107\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~107COUT1_158\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~112\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~112COUT1_159\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~117\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[17]~87\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[17]~87COUT1_134\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[18]~92\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[18]~92COUT1_135\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[19]~97\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[19]~97COUT1_136\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[20]~102\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[20]~102COUT1_137\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[21]~107\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[22]~112\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[22]~112COUT1_138\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[23]~115_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~122\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~122COUT1_160\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~127\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~127COUT1_161\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~130_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[20]~100_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[19]~95_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[18]~90_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~107\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~107COUT1_168\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~112\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~112COUT1_169\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~117\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~117COUT1_170\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~122\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[22]~110_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|add24_result[21]~105_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~127\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~127COUT1_171\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~132\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~132COUT1_172\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~137\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~137COUT1_173\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~140_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~115_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~105_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~100_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~110_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~117\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~117COUT1_179\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~122\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~122COUT1_180\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~127\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~125_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~135_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~120_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~130_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~115_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~125_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~110_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~120_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~132\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~132COUT1_181\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~137\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~137COUT1_182\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~142\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~142COUT1_183\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~147\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~147COUT1_184\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~150_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~140_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~142\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~142COUT1_174\ : std_logic;
SIGNAL \Mult0|auto_generated|op_2~145_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~132\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~132COUT1_162\ : std_logic;
SIGNAL \Mult0|auto_generated|op_3~135_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~152\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~155_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~145_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~90_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~85_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~80_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~95_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~125_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~135_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~120_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|op_1~130_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mult0|auto_generated|le3a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|cs2a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \sel~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input1~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \input2~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Mult0|auto_generated|cs1a\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le11a\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le4a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le5a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le6a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le7a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le8a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le10a\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Mult0|auto_generated|le9a\ : std_logic_vector(17 DOWNTO 0);

BEGIN

ww_input1 <= input1;
ww_input2 <= input2;
ww_sel <= sel;
output <= ww_output;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(2),
	combout => \sel~combout\(2));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(1),
	combout => \sel~combout\(1));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(1),
	combout => \input1~combout\(1));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(15),
	combout => \input1~combout\(15));

-- Location: LC_X3_Y7_N6
\Mux15~6\ : maxii_lcell
-- Equation(s):
-- \Mux15~6_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\input1~combout\(15)))) # (!\sel~combout\(1) & (\input1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \input1~combout\(1),
	datad => \input1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~6_combout\);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(8),
	combout => \input1~combout\(8));

-- Location: LC_X3_Y7_N9
\Mux15~0\ : maxii_lcell
-- Equation(s):
-- \Mux15~0_combout\ = (!\sel~combout\(2) & (((\sel~combout\(1) & \input1~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(3),
	combout => \sel~combout\(3));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(0),
	combout => \input1~combout\(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(0),
	combout => \input2~combout\(0));

-- Location: LC_X5_Y6_N1
\Mux15~3\ : maxii_lcell
-- Equation(s):
-- \Mux15~3_combout\ = \sel~combout\(1) $ (((\sel~combout\(2) & ((\input1~combout\(0)) # (\input2~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c6c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(0),
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \input2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~3_combout\);

-- Location: LC_X3_Y5_N2
\Add0~0\ : maxii_lcell
-- Equation(s):
-- \Add0~0_combout\ = \input1~combout\(0) $ ((\input2~combout\(0)))
-- \Add0~2\ = CARRY((\input1~combout\(0) & (\input2~combout\(0))))
-- \Add0~2COUT1_86\ = CARRY((\input1~combout\(0) & (\input2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(0),
	datab => \input2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_86\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(1),
	combout => \input2~combout\(1));

-- Location: LC_X6_Y4_N0
\Mult0|auto_generated|cs1a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(0) = (\input2~combout\(1))
-- \Mult0|auto_generated|cs1a[0]~COUT\ = CARRY((\input2~combout\(1)))
-- \Mult0|auto_generated|cs1a[0]~COUTCOUT1_17\ = CARRY((\input2~combout\(1)))

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
	dataa => \input2~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(0),
	cout0 => \Mult0|auto_generated|cs1a[0]~COUT\,
	cout1 => \Mult0|auto_generated|cs1a[0]~COUTCOUT1_17\);

-- Location: LC_X5_Y4_N0
\Mult0|auto_generated|cs2a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(0) = ((\input2~combout\(0)))
-- \Mult0|auto_generated|cs2a[0]~COUT\ = CARRY((\input2~combout\(1)))
-- \Mult0|auto_generated|cs2a[0]~COUTCOUT1_17\ = CARRY((\input2~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(1),
	datab => \input2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(0),
	cout0 => \Mult0|auto_generated|cs2a[0]~COUT\,
	cout1 => \Mult0|auto_generated|cs2a[0]~COUTCOUT1_17\);

-- Location: LC_X5_Y6_N0
\Mult0|auto_generated|le3a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(0) = LCELL((\Mult0|auto_generated|cs1a\(0) $ (((\Mult0|auto_generated|cs2a\(0) & \input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(0));

-- Location: LC_X6_Y7_N4
\Mult0|auto_generated|op_1~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~0_combout\ = \Mult0|auto_generated|le3a\(0) $ ((\Mult0|auto_generated|cs1a\(0)))
-- \Mult0|auto_generated|op_1~2\ = CARRY((\Mult0|auto_generated|le3a\(0) & (\Mult0|auto_generated|cs1a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(0),
	datab => \Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~0_combout\,
	cout => \Mult0|auto_generated|op_1~2\);

-- Location: LC_X5_Y7_N3
\Mux15~4\ : maxii_lcell
-- Equation(s):
-- \Mux15~4_combout\ = (\Mux15~3_combout\ & (((\sel~combout\(2)) # (\Mult0|auto_generated|op_1~0_combout\)))) # (!\Mux15~3_combout\ & (\Add0~0_combout\ & (!\sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aea4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \Add0~0_combout\,
	datac => \sel~combout\(2),
	datad => \Mult0|auto_generated|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~4_combout\);

-- Location: LC_X3_Y4_N2
\Add1~0\ : maxii_lcell
-- Equation(s):
-- \Add1~0_combout\ = \input1~combout\(0) $ ((\input2~combout\(0)))
-- \Add1~2\ = CARRY((\input1~combout\(0)) # ((!\input2~combout\(0))))
-- \Add1~2COUT1_81\ = CARRY((\input1~combout\(0)) # ((!\input2~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66bb",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(0),
	datab => \input2~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout0 => \Add1~2\,
	cout1 => \Add1~2COUT1_81\);

-- Location: LC_X3_Y5_N0
\Mux15~1\ : maxii_lcell
-- Equation(s):
-- \Mux15~1_combout\ = (\sel~combout\(2) & (((\sel~combout\(1)) # (\Add0~0_combout\)))) # (!\sel~combout\(2) & (\Add1~0_combout\ & (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~1_combout\);

-- Location: LC_X3_Y5_N1
\Mux15~2\ : maxii_lcell
-- Equation(s):
-- \Mux15~2_combout\ = (\sel~combout\(1) & ((\Mux15~1_combout\ & ((!\input1~combout\(0)))) # (!\Mux15~1_combout\ & (\input2~combout\(0) & \input1~combout\(0))))) # (!\sel~combout\(1) & (((\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "58f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \input2~combout\(0),
	datac => \Mux15~1_combout\,
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~2_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sel[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_sel(0),
	combout => \sel~combout\(0));

-- Location: LC_X3_Y7_N8
\Mux15~5\ : maxii_lcell
-- Equation(s):
-- \Mux15~5_combout\ = (\sel~combout\(3) & (((\sel~combout\(0))))) # (!\sel~combout\(3) & ((\sel~combout\(0) & ((\Mux15~2_combout\))) # (!\sel~combout\(0) & (\Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~4_combout\,
	datab => \Mux15~2_combout\,
	datac => \sel~combout\(3),
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~5_combout\);

-- Location: LC_X3_Y7_N0
\Mux15~7\ : maxii_lcell
-- Equation(s):
-- \Mux15~7_combout\ = (\sel~combout\(3) & ((\Mux15~5_combout\ & (\Mux15~6_combout\)) # (!\Mux15~5_combout\ & ((\Mux15~0_combout\))))) # (!\sel~combout\(3) & (((\Mux15~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~6_combout\,
	datab => \Mux15~0_combout\,
	datac => \sel~combout\(3),
	datad => \Mux15~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~7_combout\);

-- Location: LC_X5_Y6_N7
\Mult0|auto_generated|le3a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(1) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\input1~combout\(1) $ ((\Mult0|auto_generated|cs1a\(0))))) # (!\Mult0|auto_generated|cs2a\(0) & (((\Mult0|auto_generated|cs1a\(0) & !\input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(1),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(1));

-- Location: LC_X6_Y7_N5
\Mult0|auto_generated|op_1~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~5_combout\ = (\Mult0|auto_generated|le3a\(1) $ ((\Mult0|auto_generated|op_1~2\)))
-- \Mult0|auto_generated|op_1~7\ = CARRY(((!\Mult0|auto_generated|op_1~2\) # (!\Mult0|auto_generated|le3a\(1))))
-- \Mult0|auto_generated|op_1~7COUT1_161\ = CARRY(((!\Mult0|auto_generated|op_1~2\) # (!\Mult0|auto_generated|le3a\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(1),
	cin => \Mult0|auto_generated|op_1~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~5_combout\,
	cout0 => \Mult0|auto_generated|op_1~7\,
	cout1 => \Mult0|auto_generated|op_1~7COUT1_161\);

-- Location: LC_X3_Y5_N3
\Add0~5\ : maxii_lcell
-- Equation(s):
-- \Add0~5_combout\ = \input1~combout\(1) $ (\input2~combout\(1) $ ((\Add0~2\)))
-- \Add0~7\ = CARRY((\input1~combout\(1) & (!\input2~combout\(1) & !\Add0~2\)) # (!\input1~combout\(1) & ((!\Add0~2\) # (!\input2~combout\(1)))))
-- \Add0~7COUT1_87\ = CARRY((\input1~combout\(1) & (!\input2~combout\(1) & !\Add0~2COUT1_86\)) # (!\input1~combout\(1) & ((!\Add0~2COUT1_86\) # (!\input2~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(1),
	datab => \input2~combout\(1),
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_87\);

-- Location: LC_X3_Y6_N6
\Mux14~2\ : maxii_lcell
-- Equation(s):
-- \Mux14~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & (\Mult0|auto_generated|op_1~5_combout\)) # (!\sel~combout\(1) & ((\Add0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Mult0|auto_generated|op_1~5_combout\,
	datac => \sel~combout\(1),
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~2_combout\);

-- Location: LC_X3_Y4_N3
\Add1~5\ : maxii_lcell
-- Equation(s):
-- \Add1~5_combout\ = \input1~combout\(1) $ (\input2~combout\(1) $ ((!\Add1~2\)))
-- \Add1~7\ = CARRY((\input1~combout\(1) & (\input2~combout\(1) & !\Add1~2\)) # (!\input1~combout\(1) & ((\input2~combout\(1)) # (!\Add1~2\))))
-- \Add1~7COUT1_82\ = CARRY((\input1~combout\(1) & (\input2~combout\(1) & !\Add1~2COUT1_81\)) # (!\input1~combout\(1) & ((\input2~combout\(1)) # (!\Add1~2COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(1),
	datab => \input2~combout\(1),
	cin0 => \Add1~2\,
	cin1 => \Add1~2COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_82\);

-- Location: LC_X3_Y6_N8
\Mux14~6\ : maxii_lcell
-- Equation(s):
-- \Mux14~6_combout\ = (\sel~combout\(2) & (\input1~combout\(1) $ (((\sel~combout\(1)) # (\input2~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(1) & \input1~combout\(1))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53b9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \input2~combout\(1),
	datad => \input1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~6_combout\);

-- Location: LC_X3_Y6_N9
\Mux14~7\ : maxii_lcell
-- Equation(s):
-- \Mux14~7_combout\ = (\Mux14~6_combout\ & ((\sel~combout\(2)) # ((\Add1~5_combout\) # (\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Add1~5_combout\,
	datac => \sel~combout\(1),
	datad => \Mux14~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~7_combout\);

-- Location: LC_X3_Y6_N1
\Mux14~3\ : maxii_lcell
-- Equation(s):
-- \Mux14~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(1)) # (\input1~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \input2~combout\(1),
	datad => \input1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~3_combout\);

-- Location: LC_X3_Y6_N0
\Mux14~4\ : maxii_lcell
-- Equation(s):
-- \Mux14~4_combout\ = (\sel~combout\(0) & (((\Mux14~7_combout\)))) # (!\sel~combout\(0) & ((\Mux14~2_combout\) # ((\Mux14~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => \Mux14~7_combout\,
	datac => \sel~combout\(0),
	datad => \Mux14~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~4_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(2),
	combout => \input1~combout\(2));

-- Location: LC_X2_Y5_N5
\Mux15~8\ : maxii_lcell
-- Equation(s):
-- \Mux15~8_combout\ = (((!\sel~combout\(2) & \input1~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~8_combout\);

-- Location: LC_X3_Y4_N0
\Mux15~10\ : maxii_lcell
-- Equation(s):
-- \Mux15~10_combout\ = (((!\sel~combout\(2) & \input1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~10_combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(9),
	combout => \input1~combout\(9));

-- Location: LC_X1_Y5_N0
\Mux15~9\ : maxii_lcell
-- Equation(s):
-- \Mux15~9_combout\ = (!\sel~combout\(2) & (((\input1~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~9_combout\);

-- Location: LC_X2_Y4_N8
\Mux14~0\ : maxii_lcell
-- Equation(s):
-- \Mux14~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~9_combout\))) # (!\sel~combout\(1) & (\Mux15~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~10_combout\,
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \Mux15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~0_combout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(14),
	combout => \input1~combout\(14));

-- Location: LC_X2_Y6_N8
\Mux15~11\ : maxii_lcell
-- Equation(s):
-- \Mux15~11_combout\ = (((!\sel~combout\(2) & \input1~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~11_combout\);

-- Location: LC_X2_Y6_N0
\Mux14~1\ : maxii_lcell
-- Equation(s):
-- \Mux14~1_combout\ = (\Mux14~0_combout\ & (((\Mux15~11_combout\) # (!\sel~combout\(0))))) # (!\Mux14~0_combout\ & (\Mux15~8_combout\ & (\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~8_combout\,
	datab => \Mux14~0_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~1_combout\);

-- Location: LC_X2_Y6_N1
\Mux14~5\ : maxii_lcell
-- Equation(s):
-- \Mux14~5_combout\ = ((\sel~combout\(3) & ((\Mux14~1_combout\))) # (!\sel~combout\(3) & (\Mux14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~4_combout\,
	datac => \sel~combout\(3),
	datad => \Mux14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux14~5_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(3),
	combout => \input1~combout\(3));

-- Location: LC_X4_Y6_N3
\Mux15~12\ : maxii_lcell
-- Equation(s):
-- \Mux15~12_combout\ = ((!\sel~combout\(2) & ((\input1~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~12_combout\);

-- Location: LC_X3_Y7_N4
\Mux15~14\ : maxii_lcell
-- Equation(s):
-- \Mux15~14_combout\ = (\input1~combout\(1) & (((!\sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(1),
	datac => \sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~14_combout\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(10),
	combout => \input1~combout\(10));

-- Location: LC_X5_Y7_N2
\Mux15~13\ : maxii_lcell
-- Equation(s):
-- \Mux15~13_combout\ = (((!\sel~combout\(2) & \input1~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~13_combout\);

-- Location: LC_X1_Y7_N7
\Mux13~0\ : maxii_lcell
-- Equation(s):
-- \Mux13~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~13_combout\))) # (!\sel~combout\(1) & (\Mux15~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~14_combout\,
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \Mux15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~0_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(13),
	combout => \input1~combout\(13));

-- Location: LC_X5_Y6_N8
\Mux15~15\ : maxii_lcell
-- Equation(s):
-- \Mux15~15_combout\ = (((!\sel~combout\(2) & \input1~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~15_combout\);

-- Location: LC_X1_Y7_N0
\Mux13~1\ : maxii_lcell
-- Equation(s):
-- \Mux13~1_combout\ = (\sel~combout\(0) & ((\Mux13~0_combout\ & ((\Mux15~15_combout\))) # (!\Mux13~0_combout\ & (\Mux15~12_combout\)))) # (!\sel~combout\(0) & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~12_combout\,
	datab => \sel~combout\(0),
	datac => \Mux13~0_combout\,
	datad => \Mux15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~1_combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(2),
	combout => \input2~combout\(2));

-- Location: LC_X2_Y5_N6
\Mux13~3\ : maxii_lcell
-- Equation(s):
-- \Mux13~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(2)) # (\input1~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(2),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~3_combout\);

-- Location: LC_X3_Y4_N4
\Add1~10\ : maxii_lcell
-- Equation(s):
-- \Add1~10_combout\ = \input1~combout\(2) $ (\input2~combout\(2) $ ((\Add1~7\)))
-- \Add1~12\ = CARRY((\input1~combout\(2) & ((!\Add1~7COUT1_82\) # (!\input2~combout\(2)))) # (!\input1~combout\(2) & (!\input2~combout\(2) & !\Add1~7COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \input2~combout\(2),
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout => \Add1~12\);

-- Location: LC_X3_Y4_N1
\Mux13~6\ : maxii_lcell
-- Equation(s):
-- \Mux13~6_combout\ = (\sel~combout\(2) & (\input1~combout\(2) $ (((\sel~combout\(1)) # (\input2~combout\(2)))))) # (!\sel~combout\(2) & (((\input1~combout\(2) & \input2~combout\(2))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5b63",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \input2~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~6_combout\);

-- Location: LC_X2_Y4_N0
\Mux13~7\ : maxii_lcell
-- Equation(s):
-- \Mux13~7_combout\ = (\Mux13~6_combout\ & ((\sel~combout\(2)) # ((\sel~combout\(1)) # (\Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \Add1~10_combout\,
	datad => \Mux13~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~7_combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(3),
	combout => \input2~combout\(3));

-- Location: LC_X6_Y4_N1
\Mult0|auto_generated|cs1a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(1) = \input2~combout\(3) $ (((\input2~combout\(2) & (\Mult0|auto_generated|cs1a[0]~COUT\))))
-- \Mult0|auto_generated|cs1a[1]~COUT\ = CARRY((!\input2~combout\(3) & ((!\Mult0|auto_generated|cs1a[0]~COUT\) # (!\input2~combout\(2)))))
-- \Mult0|auto_generated|cs1a[1]~COUTCOUT1_18\ = CARRY((!\input2~combout\(3) & ((!\Mult0|auto_generated|cs1a[0]~COUTCOUT1_17\) # (!\input2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6c13",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(2),
	datab => \input2~combout\(3),
	cin0 => \Mult0|auto_generated|cs1a[0]~COUT\,
	cin1 => \Mult0|auto_generated|cs1a[0]~COUTCOUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(1),
	cout0 => \Mult0|auto_generated|cs1a[1]~COUT\,
	cout1 => \Mult0|auto_generated|cs1a[1]~COUTCOUT1_18\);

-- Location: LC_X5_Y4_N1
\Mult0|auto_generated|cs2a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(1) = \input2~combout\(2) $ ((((\Mult0|auto_generated|cs2a[0]~COUT\))))
-- \Mult0|auto_generated|cs2a[1]~COUT\ = CARRY((!\input2~combout\(3) & ((!\Mult0|auto_generated|cs2a[0]~COUT\) # (!\input2~combout\(2)))))
-- \Mult0|auto_generated|cs2a[1]~COUTCOUT1_18\ = CARRY((!\input2~combout\(3) & ((!\Mult0|auto_generated|cs2a[0]~COUTCOUT1_17\) # (!\input2~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a13",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(2),
	datab => \input2~combout\(3),
	cin0 => \Mult0|auto_generated|cs2a[0]~COUT\,
	cin1 => \Mult0|auto_generated|cs2a[0]~COUTCOUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(1),
	cout0 => \Mult0|auto_generated|cs2a[1]~COUT\,
	cout1 => \Mult0|auto_generated|cs2a[1]~COUTCOUT1_18\);

-- Location: LC_X6_Y6_N7
\Mult0|auto_generated|le4a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(0) = LCELL((\Mult0|auto_generated|cs1a\(1) $ (((\input1~combout\(0) & \Mult0|auto_generated|cs2a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5af0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(0),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(0));

-- Location: LC_X6_Y5_N1
\Mult0|auto_generated|le3a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(2) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ ((\input1~combout\(2))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & ((!\input1~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(0),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \input1~combout\(2),
	datad => \input1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(2));

-- Location: LC_X7_Y6_N0
\Mult0|auto_generated|op_2~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~0_combout\ = \Mult0|auto_generated|cs1a\(1) $ ((\Mult0|auto_generated|le3a\(2)))
-- \Mult0|auto_generated|op_2~2\ = CARRY((\Mult0|auto_generated|cs1a\(1) & (\Mult0|auto_generated|le3a\(2))))
-- \Mult0|auto_generated|op_2~2COUT1_151\ = CARRY((\Mult0|auto_generated|cs1a\(1) & (\Mult0|auto_generated|le3a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(1),
	datab => \Mult0|auto_generated|le3a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~0_combout\,
	cout0 => \Mult0|auto_generated|op_2~2\,
	cout1 => \Mult0|auto_generated|op_2~2COUT1_151\);

-- Location: LC_X6_Y7_N6
\Mult0|auto_generated|op_1~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~10_combout\ = \Mult0|auto_generated|le4a\(0) $ (\Mult0|auto_generated|op_2~0_combout\ $ ((!(!\Mult0|auto_generated|op_1~2\ & \Mult0|auto_generated|op_1~7\) # (\Mult0|auto_generated|op_1~2\ & 
-- \Mult0|auto_generated|op_1~7COUT1_161\))))
-- \Mult0|auto_generated|op_1~12\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_2~0_combout\) # (!\Mult0|auto_generated|op_1~7\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_2~0_combout\ & 
-- !\Mult0|auto_generated|op_1~7\)))
-- \Mult0|auto_generated|op_1~12COUT1_162\ = CARRY((\Mult0|auto_generated|le4a\(0) & ((\Mult0|auto_generated|op_2~0_combout\) # (!\Mult0|auto_generated|op_1~7COUT1_161\))) # (!\Mult0|auto_generated|le4a\(0) & (\Mult0|auto_generated|op_2~0_combout\ & 
-- !\Mult0|auto_generated|op_1~7COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(0),
	datab => \Mult0|auto_generated|op_2~0_combout\,
	cin => \Mult0|auto_generated|op_1~2\,
	cin0 => \Mult0|auto_generated|op_1~7\,
	cin1 => \Mult0|auto_generated|op_1~7COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~10_combout\,
	cout0 => \Mult0|auto_generated|op_1~12\,
	cout1 => \Mult0|auto_generated|op_1~12COUT1_162\);

-- Location: LC_X3_Y5_N4
\Add0~10\ : maxii_lcell
-- Equation(s):
-- \Add0~10_combout\ = \input2~combout\(2) $ (\input1~combout\(2) $ ((!\Add0~7\)))
-- \Add0~12\ = CARRY((\input2~combout\(2) & ((\input1~combout\(2)) # (!\Add0~7COUT1_87\))) # (!\input2~combout\(2) & (\input1~combout\(2) & !\Add0~7COUT1_87\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(2),
	datab => \input1~combout\(2),
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout => \Add0~12\);

-- Location: LC_X2_Y5_N1
\Mux13~2\ : maxii_lcell
-- Equation(s):
-- \Mux13~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & (\Mult0|auto_generated|op_1~10_combout\)) # (!\sel~combout\(1) & ((\Add0~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~10_combout\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~2_combout\);

-- Location: LC_X2_Y5_N0
\Mux13~4\ : maxii_lcell
-- Equation(s):
-- \Mux13~4_combout\ = (\sel~combout\(0) & (((\Mux13~7_combout\)))) # (!\sel~combout\(0) & ((\Mux13~3_combout\) # ((\Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~3_combout\,
	datab => \sel~combout\(0),
	datac => \Mux13~7_combout\,
	datad => \Mux13~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~4_combout\);

-- Location: LC_X2_Y5_N9
\Mux13~5\ : maxii_lcell
-- Equation(s):
-- \Mux13~5_combout\ = ((\sel~combout\(3) & (\Mux13~1_combout\)) # (!\sel~combout\(3) & ((\Mux13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux13~1_combout\,
	datac => \Mux13~4_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux13~5_combout\);

-- Location: LC_X3_Y6_N2
\Mux12~6\ : maxii_lcell
-- Equation(s):
-- \Mux12~6_combout\ = (\sel~combout\(2) & (\input1~combout\(3) $ (((\input2~combout\(3)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(3) & \input1~combout\(3))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47ad",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(3),
	datac => \sel~combout\(1),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~6_combout\);

-- Location: LC_X3_Y4_N5
\Add1~15\ : maxii_lcell
-- Equation(s):
-- \Add1~15_combout\ = \input1~combout\(3) $ (\input2~combout\(3) $ ((!\Add1~12\)))
-- \Add1~17\ = CARRY((\input1~combout\(3) & (\input2~combout\(3) & !\Add1~12\)) # (!\input1~combout\(3) & ((\input2~combout\(3)) # (!\Add1~12\))))
-- \Add1~17COUT1_83\ = CARRY((\input1~combout\(3) & (\input2~combout\(3) & !\Add1~12\)) # (!\input1~combout\(3) & ((\input2~combout\(3)) # (!\Add1~12\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(3),
	datab => \input2~combout\(3),
	cin => \Add1~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_83\);

-- Location: LC_X3_Y6_N3
\Mux12~7\ : maxii_lcell
-- Equation(s):
-- \Mux12~7_combout\ = (\Mux12~6_combout\ & ((\sel~combout\(2)) # ((\sel~combout\(1)) # (\Add1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Mux12~6_combout\,
	datac => \sel~combout\(1),
	datad => \Add1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~7_combout\);

-- Location: LC_X3_Y6_N7
\Mux12~3\ : maxii_lcell
-- Equation(s):
-- \Mux12~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(3)) # (\input1~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(3),
	datac => \sel~combout\(1),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~3_combout\);

-- Location: LC_X3_Y5_N5
\Add0~15\ : maxii_lcell
-- Equation(s):
-- \Add0~15_combout\ = \input1~combout\(3) $ (\input2~combout\(3) $ ((\Add0~12\)))
-- \Add0~17\ = CARRY((\input1~combout\(3) & (!\input2~combout\(3) & !\Add0~12\)) # (!\input1~combout\(3) & ((!\Add0~12\) # (!\input2~combout\(3)))))
-- \Add0~17COUT1_88\ = CARRY((\input1~combout\(3) & (!\input2~combout\(3) & !\Add0~12\)) # (!\input1~combout\(3) & ((!\Add0~12\) # (!\input2~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(3),
	datab => \input2~combout\(3),
	cin => \Add0~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_88\);

-- Location: LC_X6_Y5_N7
\Mult0|auto_generated|le3a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(3) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ (((\input1~combout\(3)))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & (!\input1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(0),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \input1~combout\(2),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(3));

-- Location: LC_X7_Y6_N1
\Mult0|auto_generated|op_2~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~5_combout\ = \Mult0|auto_generated|le3a\(3) $ ((((\Mult0|auto_generated|op_2~2\))))
-- \Mult0|auto_generated|op_2~7\ = CARRY(((!\Mult0|auto_generated|op_2~2\)) # (!\Mult0|auto_generated|le3a\(3)))
-- \Mult0|auto_generated|op_2~7COUT1_152\ = CARRY(((!\Mult0|auto_generated|op_2~2COUT1_151\)) # (!\Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(3),
	cin0 => \Mult0|auto_generated|op_2~2\,
	cin1 => \Mult0|auto_generated|op_2~2COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~5_combout\,
	cout0 => \Mult0|auto_generated|op_2~7\,
	cout1 => \Mult0|auto_generated|op_2~7COUT1_152\);

-- Location: LC_X6_Y6_N8
\Mult0|auto_generated|le4a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(1) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ ((\input1~combout\(1))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & ((!\input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(1),
	datab => \input1~combout\(1),
	datac => \input1~combout\(0),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(1));

-- Location: LC_X6_Y7_N7
\Mult0|auto_generated|op_1~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~15_combout\ = \Mult0|auto_generated|op_2~5_combout\ $ (\Mult0|auto_generated|le4a\(1) $ (((!\Mult0|auto_generated|op_1~2\ & \Mult0|auto_generated|op_1~12\) # (\Mult0|auto_generated|op_1~2\ & 
-- \Mult0|auto_generated|op_1~12COUT1_162\))))
-- \Mult0|auto_generated|op_1~17\ = CARRY((\Mult0|auto_generated|op_2~5_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\Mult0|auto_generated|op_1~12\)) # (!\Mult0|auto_generated|op_2~5_combout\ & ((!\Mult0|auto_generated|op_1~12\) # 
-- (!\Mult0|auto_generated|le4a\(1)))))
-- \Mult0|auto_generated|op_1~17COUT1_163\ = CARRY((\Mult0|auto_generated|op_2~5_combout\ & (!\Mult0|auto_generated|le4a\(1) & !\Mult0|auto_generated|op_1~12COUT1_162\)) # (!\Mult0|auto_generated|op_2~5_combout\ & ((!\Mult0|auto_generated|op_1~12COUT1_162\) 
-- # (!\Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~5_combout\,
	datab => \Mult0|auto_generated|le4a\(1),
	cin => \Mult0|auto_generated|op_1~2\,
	cin0 => \Mult0|auto_generated|op_1~12\,
	cin1 => \Mult0|auto_generated|op_1~12COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~15_combout\,
	cout0 => \Mult0|auto_generated|op_1~17\,
	cout1 => \Mult0|auto_generated|op_1~17COUT1_163\);

-- Location: LC_X3_Y6_N4
\Mux12~2\ : maxii_lcell
-- Equation(s):
-- \Mux12~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\Mult0|auto_generated|op_1~15_combout\))) # (!\sel~combout\(1) & (\Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Add0~15_combout\,
	datac => \sel~combout\(1),
	datad => \Mult0|auto_generated|op_1~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~2_combout\);

-- Location: LC_X3_Y6_N5
\Mux12~4\ : maxii_lcell
-- Equation(s):
-- \Mux12~4_combout\ = (\sel~combout\(0) & (\Mux12~7_combout\)) # (!\sel~combout\(0) & (((\Mux12~3_combout\) # (\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~7_combout\,
	datab => \Mux12~3_combout\,
	datac => \sel~combout\(0),
	datad => \Mux12~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~4_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(11),
	combout => \input1~combout\(11));

-- Location: LC_X1_Y5_N2
\Mux15~17\ : maxii_lcell
-- Equation(s):
-- \Mux15~17_combout\ = (!\sel~combout\(2) & (((\input1~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datac => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~17_combout\);

-- Location: LC_X1_Y6_N6
\Mux12~0\ : maxii_lcell
-- Equation(s):
-- \Mux12~0_combout\ = (\sel~combout\(0) & (\sel~combout\(1))) # (!\sel~combout\(0) & ((\sel~combout\(1) & (\Mux15~17_combout\)) # (!\sel~combout\(1) & ((\Mux15~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \Mux15~17_combout\,
	datad => \Mux15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~0_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(4),
	combout => \input1~combout\(4));

-- Location: LC_X1_Y6_N7
\Mux15~16\ : maxii_lcell
-- Equation(s):
-- \Mux15~16_combout\ = (!\sel~combout\(2) & (((\input1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datad => \input1~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~16_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(12),
	combout => \input1~combout\(12));

-- Location: LC_X4_Y7_N6
\Mux15~18\ : maxii_lcell
-- Equation(s):
-- \Mux15~18_combout\ = ((!\sel~combout\(2) & ((\input1~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datad => \input1~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~18_combout\);

-- Location: LC_X1_Y6_N0
\Mux12~1\ : maxii_lcell
-- Equation(s):
-- \Mux12~1_combout\ = (\Mux12~0_combout\ & (((\Mux15~18_combout\) # (!\sel~combout\(0))))) # (!\Mux12~0_combout\ & (\Mux15~16_combout\ & (\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux12~0_combout\,
	datab => \Mux15~16_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~1_combout\);

-- Location: LC_X3_Y7_N3
\Mux12~5\ : maxii_lcell
-- Equation(s):
-- \Mux12~5_combout\ = (\sel~combout\(3) & (((\Mux12~1_combout\)))) # (!\sel~combout\(3) & (\Mux12~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(3),
	datab => \Mux12~4_combout\,
	datac => \Mux12~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux12~5_combout\);

-- Location: LC_X2_Y6_N5
\Mux11~0\ : maxii_lcell
-- Equation(s):
-- \Mux11~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~18_combout\))) # (!\sel~combout\(1) & (\Mux15~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \Mux15~12_combout\,
	datac => \sel~combout\(1),
	datad => \Mux15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~0_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(5),
	combout => \input1~combout\(5));

-- Location: LC_X2_Y6_N9
\Mux15~19\ : maxii_lcell
-- Equation(s):
-- \Mux15~19_combout\ = (((!\sel~combout\(2) & \input1~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~19_combout\);

-- Location: LC_X2_Y6_N7
\Mux11~1\ : maxii_lcell
-- Equation(s):
-- \Mux11~1_combout\ = (\Mux11~0_combout\ & ((\Mux15~17_combout\) # ((!\sel~combout\(0))))) # (!\Mux11~0_combout\ & (((\sel~combout\(0) & \Mux15~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~0_combout\,
	datab => \Mux15~17_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~1_combout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(4),
	combout => \input2~combout\(4));

-- Location: LC_X1_Y6_N2
\Mux11~6\ : maxii_lcell
-- Equation(s):
-- \Mux11~6_combout\ = (\sel~combout\(2) & (\input1~combout\(4) $ (((\input2~combout\(4)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(4) & \input1~combout\(4))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47ad",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(4),
	datac => \sel~combout\(1),
	datad => \input1~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~6_combout\);

-- Location: LC_X3_Y4_N6
\Add1~20\ : maxii_lcell
-- Equation(s):
-- \Add1~20_combout\ = \input2~combout\(4) $ (\input1~combout\(4) $ (((!\Add1~12\ & \Add1~17\) # (\Add1~12\ & \Add1~17COUT1_83\))))
-- \Add1~22\ = CARRY((\input2~combout\(4) & (\input1~combout\(4) & !\Add1~17\)) # (!\input2~combout\(4) & ((\input1~combout\(4)) # (!\Add1~17\))))
-- \Add1~22COUT1_84\ = CARRY((\input2~combout\(4) & (\input1~combout\(4) & !\Add1~17COUT1_83\)) # (!\input2~combout\(4) & ((\input1~combout\(4)) # (!\Add1~17COUT1_83\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(4),
	datab => \input1~combout\(4),
	cin => \Add1~12\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_84\);

-- Location: LC_X1_Y6_N8
\Mux11~7\ : maxii_lcell
-- Equation(s):
-- \Mux11~7_combout\ = (\Mux11~6_combout\ & ((\sel~combout\(2)) # ((\sel~combout\(1)) # (\Add1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Mux11~6_combout\,
	datac => \sel~combout\(1),
	datad => \Add1~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~7_combout\);

-- Location: LC_X1_Y6_N9
\Mux11~3\ : maxii_lcell
-- Equation(s):
-- \Mux11~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(4)) # (\input1~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(4),
	datac => \sel~combout\(1),
	datad => \input1~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~3_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(5),
	combout => \input2~combout\(5));

-- Location: LC_X6_Y4_N2
\Mult0|auto_generated|cs1a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(2) = \input2~combout\(5) $ (((\input2~combout\(4) & (!\Mult0|auto_generated|cs1a[1]~COUT\))))
-- \Mult0|auto_generated|cs1a[2]~COUT\ = CARRY((\input2~combout\(5)) # ((\input2~combout\(4) & !\Mult0|auto_generated|cs1a[1]~COUT\)))
-- \Mult0|auto_generated|cs1a[2]~COUTCOUT1_19\ = CARRY((\input2~combout\(5)) # ((\input2~combout\(4) & !\Mult0|auto_generated|cs1a[1]~COUTCOUT1_18\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c6ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(4),
	datab => \input2~combout\(5),
	cin0 => \Mult0|auto_generated|cs1a[1]~COUT\,
	cin1 => \Mult0|auto_generated|cs1a[1]~COUTCOUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(2),
	cout0 => \Mult0|auto_generated|cs1a[2]~COUT\,
	cout1 => \Mult0|auto_generated|cs1a[2]~COUTCOUT1_19\);

-- Location: LC_X11_Y5_N8
\Mult0|auto_generated|le3a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(4) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ ((\input1~combout\(4))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & ((!\input1~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(0),
	datab => \input1~combout\(4),
	datac => \input1~combout\(3),
	datad => \Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(4));

-- Location: LC_X10_Y7_N1
\Mult0|auto_generated|op_3~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~0_combout\ = \Mult0|auto_generated|cs1a\(2) $ ((\Mult0|auto_generated|le3a\(4)))
-- \Mult0|auto_generated|op_3~2\ = CARRY((\Mult0|auto_generated|cs1a\(2) & (\Mult0|auto_generated|le3a\(4))))
-- \Mult0|auto_generated|op_3~2COUT1_141\ = CARRY((\Mult0|auto_generated|cs1a\(2) & (\Mult0|auto_generated|le3a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(2),
	datab => \Mult0|auto_generated|le3a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~0_combout\,
	cout0 => \Mult0|auto_generated|op_3~2\,
	cout1 => \Mult0|auto_generated|op_3~2COUT1_141\);

-- Location: LC_X5_Y4_N2
\Mult0|auto_generated|cs2a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(2) = \input2~combout\(4) $ ((((!\Mult0|auto_generated|cs2a[1]~COUT\))))
-- \Mult0|auto_generated|cs2a[2]~COUT\ = CARRY((\input2~combout\(5)) # ((\input2~combout\(4) & !\Mult0|auto_generated|cs2a[1]~COUT\)))
-- \Mult0|auto_generated|cs2a[2]~COUTCOUT1_19\ = CARRY((\input2~combout\(5)) # ((\input2~combout\(4) & !\Mult0|auto_generated|cs2a[1]~COUTCOUT1_18\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(4),
	datab => \input2~combout\(5),
	cin0 => \Mult0|auto_generated|cs2a[1]~COUT\,
	cin1 => \Mult0|auto_generated|cs2a[1]~COUTCOUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(2),
	cout0 => \Mult0|auto_generated|cs2a[2]~COUT\,
	cout1 => \Mult0|auto_generated|cs2a[2]~COUTCOUT1_19\);

-- Location: LC_X7_Y4_N6
\Mult0|auto_generated|le5a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(0) = LCELL((\Mult0|auto_generated|cs1a\(2) $ (((\Mult0|auto_generated|cs2a\(2) & \input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(0));

-- Location: LC_X6_Y6_N4
\Mult0|auto_generated|le4a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(2) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ ((\input1~combout\(2))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & ((!\input1~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(1),
	datab => \input1~combout\(2),
	datac => \input1~combout\(1),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(2));

-- Location: LC_X7_Y6_N2
\Mult0|auto_generated|op_2~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~10_combout\ = \Mult0|auto_generated|le5a\(0) $ (\Mult0|auto_generated|le4a\(2) $ ((!\Mult0|auto_generated|op_2~7\)))
-- \Mult0|auto_generated|op_2~12\ = CARRY((\Mult0|auto_generated|le5a\(0) & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|op_2~7\))) # (!\Mult0|auto_generated|le5a\(0) & (\Mult0|auto_generated|le4a\(2) & !\Mult0|auto_generated|op_2~7\)))
-- \Mult0|auto_generated|op_2~12COUT1_153\ = CARRY((\Mult0|auto_generated|le5a\(0) & ((\Mult0|auto_generated|le4a\(2)) # (!\Mult0|auto_generated|op_2~7COUT1_152\))) # (!\Mult0|auto_generated|le5a\(0) & (\Mult0|auto_generated|le4a\(2) & 
-- !\Mult0|auto_generated|op_2~7COUT1_152\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(0),
	datab => \Mult0|auto_generated|le4a\(2),
	cin0 => \Mult0|auto_generated|op_2~7\,
	cin1 => \Mult0|auto_generated|op_2~7COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~10_combout\,
	cout0 => \Mult0|auto_generated|op_2~12\,
	cout1 => \Mult0|auto_generated|op_2~12COUT1_153\);

-- Location: LC_X6_Y7_N8
\Mult0|auto_generated|op_1~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~20_combout\ = \Mult0|auto_generated|op_3~0_combout\ $ (\Mult0|auto_generated|op_2~10_combout\ $ ((!(!\Mult0|auto_generated|op_1~2\ & \Mult0|auto_generated|op_1~17\) # (\Mult0|auto_generated|op_1~2\ & 
-- \Mult0|auto_generated|op_1~17COUT1_163\))))
-- \Mult0|auto_generated|op_1~22\ = CARRY((\Mult0|auto_generated|op_3~0_combout\ & ((\Mult0|auto_generated|op_2~10_combout\) # (!\Mult0|auto_generated|op_1~17\))) # (!\Mult0|auto_generated|op_3~0_combout\ & (\Mult0|auto_generated|op_2~10_combout\ & 
-- !\Mult0|auto_generated|op_1~17\)))
-- \Mult0|auto_generated|op_1~22COUT1_164\ = CARRY((\Mult0|auto_generated|op_3~0_combout\ & ((\Mult0|auto_generated|op_2~10_combout\) # (!\Mult0|auto_generated|op_1~17COUT1_163\))) # (!\Mult0|auto_generated|op_3~0_combout\ & 
-- (\Mult0|auto_generated|op_2~10_combout\ & !\Mult0|auto_generated|op_1~17COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~0_combout\,
	datab => \Mult0|auto_generated|op_2~10_combout\,
	cin => \Mult0|auto_generated|op_1~2\,
	cin0 => \Mult0|auto_generated|op_1~17\,
	cin1 => \Mult0|auto_generated|op_1~17COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~20_combout\,
	cout0 => \Mult0|auto_generated|op_1~22\,
	cout1 => \Mult0|auto_generated|op_1~22COUT1_164\);

-- Location: LC_X3_Y5_N6
\Add0~20\ : maxii_lcell
-- Equation(s):
-- \Add0~20_combout\ = \input1~combout\(4) $ (\input2~combout\(4) $ ((!(!\Add0~12\ & \Add0~17\) # (\Add0~12\ & \Add0~17COUT1_88\))))
-- \Add0~22\ = CARRY((\input1~combout\(4) & ((\input2~combout\(4)) # (!\Add0~17\))) # (!\input1~combout\(4) & (\input2~combout\(4) & !\Add0~17\)))
-- \Add0~22COUT1_89\ = CARRY((\input1~combout\(4) & ((\input2~combout\(4)) # (!\Add0~17COUT1_88\))) # (!\input1~combout\(4) & (\input2~combout\(4) & !\Add0~17COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(4),
	datab => \input2~combout\(4),
	cin => \Add0~12\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_89\);

-- Location: LC_X3_Y7_N1
\Mux11~2\ : maxii_lcell
-- Equation(s):
-- \Mux11~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & (\Mult0|auto_generated|op_1~20_combout\)) # (!\sel~combout\(1) & ((\Add0~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4540",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Mult0|auto_generated|op_1~20_combout\,
	datac => \sel~combout\(1),
	datad => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~2_combout\);

-- Location: LC_X1_Y6_N4
\Mux11~4\ : maxii_lcell
-- Equation(s):
-- \Mux11~4_combout\ = (\sel~combout\(0) & (\Mux11~7_combout\)) # (!\sel~combout\(0) & (((\Mux11~3_combout\) # (\Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~7_combout\,
	datab => \Mux11~3_combout\,
	datac => \sel~combout\(0),
	datad => \Mux11~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~4_combout\);

-- Location: LC_X1_Y6_N5
\Mux11~5\ : maxii_lcell
-- Equation(s):
-- \Mux11~5_combout\ = ((\sel~combout\(3) & (\Mux11~1_combout\)) # (!\sel~combout\(3) & ((\Mux11~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~1_combout\,
	datac => \Mux11~4_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux11~5_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(6),
	combout => \input1~combout\(6));

-- Location: LC_X2_Y7_N1
\Mux15~20\ : maxii_lcell
-- Equation(s):
-- \Mux15~20_combout\ = (((!\sel~combout\(2) & \input1~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~20_combout\);

-- Location: LC_X1_Y7_N5
\Mux10~0\ : maxii_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~15_combout\))) # (!\sel~combout\(1) & (\Mux15~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~16_combout\,
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \Mux15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: LC_X1_Y7_N2
\Mux10~1\ : maxii_lcell
-- Equation(s):
-- \Mux10~1_combout\ = (\sel~combout\(0) & ((\Mux10~0_combout\ & ((\Mux15~13_combout\))) # (!\Mux10~0_combout\ & (\Mux15~20_combout\)))) # (!\sel~combout\(0) & (((\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f838",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~20_combout\,
	datab => \sel~combout\(0),
	datac => \Mux10~0_combout\,
	datad => \Mux15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1_combout\);

-- Location: LC_X3_Y5_N7
\Add0~25\ : maxii_lcell
-- Equation(s):
-- \Add0~25_combout\ = \input2~combout\(5) $ (\input1~combout\(5) $ (((!\Add0~12\ & \Add0~22\) # (\Add0~12\ & \Add0~22COUT1_89\))))
-- \Add0~27\ = CARRY((\input2~combout\(5) & (!\input1~combout\(5) & !\Add0~22\)) # (!\input2~combout\(5) & ((!\Add0~22\) # (!\input1~combout\(5)))))
-- \Add0~27COUT1_90\ = CARRY((\input2~combout\(5) & (!\input1~combout\(5) & !\Add0~22COUT1_89\)) # (!\input2~combout\(5) & ((!\Add0~22COUT1_89\) # (!\input1~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(5),
	datab => \input1~combout\(5),
	cin => \Add0~12\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_90\);

-- Location: LC_X11_Y5_N7
\Mult0|auto_generated|le3a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(5) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ (((\input1~combout\(5)))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & (!\input1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(0),
	datab => \input1~combout\(4),
	datac => \input1~combout\(5),
	datad => \Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(5));

-- Location: LC_X10_Y7_N2
\Mult0|auto_generated|op_3~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~5_combout\ = \Mult0|auto_generated|le3a\(5) $ ((((\Mult0|auto_generated|op_3~2\))))
-- \Mult0|auto_generated|op_3~7\ = CARRY(((!\Mult0|auto_generated|op_3~2\)) # (!\Mult0|auto_generated|le3a\(5)))
-- \Mult0|auto_generated|op_3~7COUT1_142\ = CARRY(((!\Mult0|auto_generated|op_3~2COUT1_141\)) # (!\Mult0|auto_generated|le3a\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(5),
	cin0 => \Mult0|auto_generated|op_3~2\,
	cin1 => \Mult0|auto_generated|op_3~2COUT1_141\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~5_combout\,
	cout0 => \Mult0|auto_generated|op_3~7\,
	cout1 => \Mult0|auto_generated|op_3~7COUT1_142\);

-- Location: LC_X7_Y4_N3
\Mult0|auto_generated|le5a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(1) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\input1~combout\(1) $ ((\Mult0|auto_generated|cs1a\(2))))) # (!\Mult0|auto_generated|cs2a\(2) & (((\Mult0|auto_generated|cs1a\(2) & !\input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(1),
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(1));

-- Location: LC_X6_Y6_N6
\Mult0|auto_generated|le4a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(3) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\input1~combout\(3) $ (((\Mult0|auto_generated|cs1a\(1)))))) # (!\Mult0|auto_generated|cs2a\(1) & (((!\input1~combout\(2) & \Mult0|auto_generated|cs1a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(3),
	datab => \input1~combout\(2),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(3));

-- Location: LC_X7_Y6_N3
\Mult0|auto_generated|op_2~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~15_combout\ = \Mult0|auto_generated|le5a\(1) $ (\Mult0|auto_generated|le4a\(3) $ ((\Mult0|auto_generated|op_2~12\)))
-- \Mult0|auto_generated|op_2~17\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|op_2~12\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\Mult0|auto_generated|op_2~12\) # (!\Mult0|auto_generated|le4a\(3)))))
-- \Mult0|auto_generated|op_2~17COUT1_154\ = CARRY((\Mult0|auto_generated|le5a\(1) & (!\Mult0|auto_generated|le4a\(3) & !\Mult0|auto_generated|op_2~12COUT1_153\)) # (!\Mult0|auto_generated|le5a\(1) & ((!\Mult0|auto_generated|op_2~12COUT1_153\) # 
-- (!\Mult0|auto_generated|le4a\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(1),
	datab => \Mult0|auto_generated|le4a\(3),
	cin0 => \Mult0|auto_generated|op_2~12\,
	cin1 => \Mult0|auto_generated|op_2~12COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~15_combout\,
	cout0 => \Mult0|auto_generated|op_2~17\,
	cout1 => \Mult0|auto_generated|op_2~17COUT1_154\);

-- Location: LC_X6_Y7_N9
\Mult0|auto_generated|op_1~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~25_combout\ = \Mult0|auto_generated|op_3~5_combout\ $ (\Mult0|auto_generated|op_2~15_combout\ $ (((!\Mult0|auto_generated|op_1~2\ & \Mult0|auto_generated|op_1~22\) # (\Mult0|auto_generated|op_1~2\ & 
-- \Mult0|auto_generated|op_1~22COUT1_164\))))
-- \Mult0|auto_generated|op_1~27\ = CARRY((\Mult0|auto_generated|op_3~5_combout\ & (!\Mult0|auto_generated|op_2~15_combout\ & !\Mult0|auto_generated|op_1~22COUT1_164\)) # (!\Mult0|auto_generated|op_3~5_combout\ & ((!\Mult0|auto_generated|op_1~22COUT1_164\) # 
-- (!\Mult0|auto_generated|op_2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~5_combout\,
	datab => \Mult0|auto_generated|op_2~15_combout\,
	cin => \Mult0|auto_generated|op_1~2\,
	cin0 => \Mult0|auto_generated|op_1~22\,
	cin1 => \Mult0|auto_generated|op_1~22COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~25_combout\,
	cout => \Mult0|auto_generated|op_1~27\);

-- Location: LC_X2_Y4_N7
\Mux10~2\ : maxii_lcell
-- Equation(s):
-- \Mux10~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\Mult0|auto_generated|op_1~25_combout\))) # (!\sel~combout\(1) & (\Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5410",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \Add0~25_combout\,
	datad => \Mult0|auto_generated|op_1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~2_combout\);

-- Location: LC_X1_Y4_N5
\Mux10~6\ : maxii_lcell
-- Equation(s):
-- \Mux10~6_combout\ = (\sel~combout\(2) & (\input1~combout\(5) $ (((\input2~combout\(5)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(5) & \input1~combout\(5))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27cb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(5),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~6_combout\);

-- Location: LC_X3_Y4_N7
\Add1~25\ : maxii_lcell
-- Equation(s):
-- \Add1~25_combout\ = \input2~combout\(5) $ (\input1~combout\(5) $ ((!(!\Add1~12\ & \Add1~22\) # (\Add1~12\ & \Add1~22COUT1_84\))))
-- \Add1~27\ = CARRY((\input2~combout\(5) & ((!\Add1~22\) # (!\input1~combout\(5)))) # (!\input2~combout\(5) & (!\input1~combout\(5) & !\Add1~22\)))
-- \Add1~27COUT1_85\ = CARRY((\input2~combout\(5) & ((!\Add1~22COUT1_84\) # (!\input1~combout\(5)))) # (!\input2~combout\(5) & (!\input1~combout\(5) & !\Add1~22COUT1_84\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(5),
	datab => \input1~combout\(5),
	cin => \Add1~12\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout0 => \Add1~27\,
	cout1 => \Add1~27COUT1_85\);

-- Location: LC_X1_Y4_N0
\Mux10~7\ : maxii_lcell
-- Equation(s):
-- \Mux10~7_combout\ = (\Mux10~6_combout\ & ((\sel~combout\(2)) # ((\sel~combout\(1)) # (\Add1~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~6_combout\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \Add1~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~7_combout\);

-- Location: LC_X1_Y4_N1
\Mux10~3\ : maxii_lcell
-- Equation(s):
-- \Mux10~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(5)) # (\input1~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(5),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~3_combout\);

-- Location: LC_X1_Y4_N7
\Mux10~4\ : maxii_lcell
-- Equation(s):
-- \Mux10~4_combout\ = (\sel~combout\(0) & (((\Mux10~7_combout\)))) # (!\sel~combout\(0) & ((\Mux10~2_combout\) # ((\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~2_combout\,
	datab => \Mux10~7_combout\,
	datac => \sel~combout\(0),
	datad => \Mux10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~4_combout\);

-- Location: LC_X1_Y4_N6
\Mux10~5\ : maxii_lcell
-- Equation(s):
-- \Mux10~5_combout\ = ((\sel~combout\(3) & (\Mux10~1_combout\)) # (!\sel~combout\(3) & ((\Mux10~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~1_combout\,
	datac => \Mux10~4_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~5_combout\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(6),
	combout => \input2~combout\(6));

-- Location: LC_X2_Y4_N4
\Mux9~3\ : maxii_lcell
-- Equation(s):
-- \Mux9~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input1~combout\(6)) # (\input2~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \input1~combout\(6),
	datad => \input2~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~3_combout\);

-- Location: LC_X2_Y4_N5
\Mux9~6\ : maxii_lcell
-- Equation(s):
-- \Mux9~6_combout\ = (\sel~combout\(2) & (\input1~combout\(6) $ (((\sel~combout\(1)) # (\input2~combout\(6)))))) # (!\sel~combout\(2) & (((\input1~combout\(6) & \input2~combout\(6))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5b39",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \input1~combout\(6),
	datad => \input2~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~6_combout\);

-- Location: LC_X3_Y4_N8
\Add1~30\ : maxii_lcell
-- Equation(s):
-- \Add1~30_combout\ = \input2~combout\(6) $ (\input1~combout\(6) $ (((!\Add1~12\ & \Add1~27\) # (\Add1~12\ & \Add1~27COUT1_85\))))
-- \Add1~32\ = CARRY((\input2~combout\(6) & (\input1~combout\(6) & !\Add1~27\)) # (!\input2~combout\(6) & ((\input1~combout\(6)) # (!\Add1~27\))))
-- \Add1~32COUT1_86\ = CARRY((\input2~combout\(6) & (\input1~combout\(6) & !\Add1~27COUT1_85\)) # (!\input2~combout\(6) & ((\input1~combout\(6)) # (!\Add1~27COUT1_85\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(6),
	datab => \input1~combout\(6),
	cin => \Add1~12\,
	cin0 => \Add1~27\,
	cin1 => \Add1~27COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_86\);

-- Location: LC_X2_Y4_N9
\Mux9~7\ : maxii_lcell
-- Equation(s):
-- \Mux9~7_combout\ = (\Mux9~6_combout\ & ((\sel~combout\(2)) # ((\sel~combout\(1)) # (\Add1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \Mux9~6_combout\,
	datad => \Add1~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~7_combout\);

-- Location: LC_X6_Y6_N0
\Mult0|auto_generated|le4a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(4) = LCELL((\Mult0|auto_generated|cs2a\(1) & ((\input1~combout\(4) $ (\Mult0|auto_generated|cs1a\(1))))) # (!\Mult0|auto_generated|cs2a\(1) & (!\input1~combout\(3) & ((\Mult0|auto_generated|cs1a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(3),
	datab => \input1~combout\(4),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(4));

-- Location: LC_X10_Y6_N6
\Mult0|auto_generated|le5a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(2) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) $ (((\input1~combout\(2)))))) # (!\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) & (!\input1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(2),
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \input1~combout\(1),
	datad => \input1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(2));

-- Location: LC_X10_Y7_N3
\Mult0|auto_generated|op_3~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~10_combout\ = \Mult0|auto_generated|le4a\(4) $ (\Mult0|auto_generated|le5a\(2) $ ((!\Mult0|auto_generated|op_3~7\)))
-- \Mult0|auto_generated|op_3~12\ = CARRY((\Mult0|auto_generated|le4a\(4) & ((\Mult0|auto_generated|le5a\(2)) # (!\Mult0|auto_generated|op_3~7\))) # (!\Mult0|auto_generated|le4a\(4) & (\Mult0|auto_generated|le5a\(2) & !\Mult0|auto_generated|op_3~7\)))
-- \Mult0|auto_generated|op_3~12COUT1_143\ = CARRY((\Mult0|auto_generated|le4a\(4) & ((\Mult0|auto_generated|le5a\(2)) # (!\Mult0|auto_generated|op_3~7COUT1_142\))) # (!\Mult0|auto_generated|le4a\(4) & (\Mult0|auto_generated|le5a\(2) & 
-- !\Mult0|auto_generated|op_3~7COUT1_142\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(4),
	datab => \Mult0|auto_generated|le5a\(2),
	cin0 => \Mult0|auto_generated|op_3~7\,
	cin1 => \Mult0|auto_generated|op_3~7COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~10_combout\,
	cout0 => \Mult0|auto_generated|op_3~12\,
	cout1 => \Mult0|auto_generated|op_3~12COUT1_143\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(7),
	combout => \input2~combout\(7));

-- Location: LC_X6_Y4_N3
\Mult0|auto_generated|cs1a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(3) = \input2~combout\(7) $ (((\input2~combout\(6) & (\Mult0|auto_generated|cs1a[2]~COUT\))))
-- \Mult0|auto_generated|cs1a[3]~COUT\ = CARRY((!\input2~combout\(7) & ((!\Mult0|auto_generated|cs1a[2]~COUT\) # (!\input2~combout\(6)))))
-- \Mult0|auto_generated|cs1a[3]~COUTCOUT1_20\ = CARRY((!\input2~combout\(7) & ((!\Mult0|auto_generated|cs1a[2]~COUTCOUT1_19\) # (!\input2~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "6c13",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(6),
	datab => \input2~combout\(7),
	cin0 => \Mult0|auto_generated|cs1a[2]~COUT\,
	cin1 => \Mult0|auto_generated|cs1a[2]~COUTCOUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(3),
	cout0 => \Mult0|auto_generated|cs1a[3]~COUT\,
	cout1 => \Mult0|auto_generated|cs1a[3]~COUTCOUT1_20\);

-- Location: LC_X6_Y5_N4
\Mult0|auto_generated|le3a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(6) = LCELL((\Mult0|auto_generated|cs2a\(0) & ((\Mult0|auto_generated|cs1a\(0) $ (\input1~combout\(6))))) # (!\Mult0|auto_generated|cs2a\(0) & (!\input1~combout\(5) & (\Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(5),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \input1~combout\(6),
	datad => \Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(6));

-- Location: LC_X7_Y5_N3
\Mult0|auto_generated|add24_result[0]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[0]~0_combout\ = \Mult0|auto_generated|cs1a\(3) $ ((\Mult0|auto_generated|le3a\(6)))
-- \Mult0|auto_generated|add24_result[0]~2\ = CARRY((\Mult0|auto_generated|cs1a\(3) & (\Mult0|auto_generated|le3a\(6))))
-- \Mult0|auto_generated|add24_result[0]~2COUT1_121\ = CARRY((\Mult0|auto_generated|cs1a\(3) & (\Mult0|auto_generated|le3a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \Mult0|auto_generated|le3a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[0]~0_combout\,
	cout0 => \Mult0|auto_generated|add24_result[0]~2\,
	cout1 => \Mult0|auto_generated|add24_result[0]~2COUT1_121\);

-- Location: LC_X5_Y4_N3
\Mult0|auto_generated|cs2a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(3) = \input2~combout\(6) $ ((((\Mult0|auto_generated|cs2a[2]~COUT\))))
-- \Mult0|auto_generated|cs2a[3]~COUT\ = CARRY((!\input2~combout\(7) & ((!\Mult0|auto_generated|cs2a[2]~COUT\) # (!\input2~combout\(6)))))
-- \Mult0|auto_generated|cs2a[3]~COUTCOUT1_20\ = CARRY((!\input2~combout\(7) & ((!\Mult0|auto_generated|cs2a[2]~COUTCOUT1_19\) # (!\input2~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a13",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(6),
	datab => \input2~combout\(7),
	cin0 => \Mult0|auto_generated|cs2a[2]~COUT\,
	cin1 => \Mult0|auto_generated|cs2a[2]~COUTCOUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(3),
	cout0 => \Mult0|auto_generated|cs2a[3]~COUT\,
	cout1 => \Mult0|auto_generated|cs2a[3]~COUTCOUT1_20\);

-- Location: LC_X10_Y6_N4
\Mult0|auto_generated|le6a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(0) = LCELL(\Mult0|auto_generated|cs1a\(3) $ ((((\Mult0|auto_generated|cs2a\(3) & \input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(0));

-- Location: LC_X7_Y6_N4
\Mult0|auto_generated|op_2~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~20_combout\ = \Mult0|auto_generated|add24_result[0]~0_combout\ $ (\Mult0|auto_generated|le6a\(0) $ ((!\Mult0|auto_generated|op_2~17\)))
-- \Mult0|auto_generated|op_2~22\ = CARRY((\Mult0|auto_generated|add24_result[0]~0_combout\ & ((\Mult0|auto_generated|le6a\(0)) # (!\Mult0|auto_generated|op_2~17COUT1_154\))) # (!\Mult0|auto_generated|add24_result[0]~0_combout\ & 
-- (\Mult0|auto_generated|le6a\(0) & !\Mult0|auto_generated|op_2~17COUT1_154\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[0]~0_combout\,
	datab => \Mult0|auto_generated|le6a\(0),
	cin0 => \Mult0|auto_generated|op_2~17\,
	cin1 => \Mult0|auto_generated|op_2~17COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~20_combout\,
	cout => \Mult0|auto_generated|op_2~22\);

-- Location: LC_X7_Y7_N0
\Mult0|auto_generated|op_1~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~30_combout\ = \Mult0|auto_generated|op_3~10_combout\ $ (\Mult0|auto_generated|op_2~20_combout\ $ ((!\Mult0|auto_generated|op_1~27\)))
-- \Mult0|auto_generated|op_1~32\ = CARRY((\Mult0|auto_generated|op_3~10_combout\ & ((\Mult0|auto_generated|op_2~20_combout\) # (!\Mult0|auto_generated|op_1~27\))) # (!\Mult0|auto_generated|op_3~10_combout\ & (\Mult0|auto_generated|op_2~20_combout\ & 
-- !\Mult0|auto_generated|op_1~27\)))
-- \Mult0|auto_generated|op_1~32COUT1_165\ = CARRY((\Mult0|auto_generated|op_3~10_combout\ & ((\Mult0|auto_generated|op_2~20_combout\) # (!\Mult0|auto_generated|op_1~27\))) # (!\Mult0|auto_generated|op_3~10_combout\ & (\Mult0|auto_generated|op_2~20_combout\ 
-- & !\Mult0|auto_generated|op_1~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~10_combout\,
	datab => \Mult0|auto_generated|op_2~20_combout\,
	cin => \Mult0|auto_generated|op_1~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~30_combout\,
	cout0 => \Mult0|auto_generated|op_1~32\,
	cout1 => \Mult0|auto_generated|op_1~32COUT1_165\);

-- Location: LC_X3_Y5_N8
\Add0~30\ : maxii_lcell
-- Equation(s):
-- \Add0~30_combout\ = \input2~combout\(6) $ (\input1~combout\(6) $ ((!(!\Add0~12\ & \Add0~27\) # (\Add0~12\ & \Add0~27COUT1_90\))))
-- \Add0~32\ = CARRY((\input2~combout\(6) & ((\input1~combout\(6)) # (!\Add0~27\))) # (!\input2~combout\(6) & (\input1~combout\(6) & !\Add0~27\)))
-- \Add0~32COUT1_91\ = CARRY((\input2~combout\(6) & ((\input1~combout\(6)) # (!\Add0~27COUT1_90\))) # (!\input2~combout\(6) & (\input1~combout\(6) & !\Add0~27COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(6),
	datab => \input1~combout\(6),
	cin => \Add0~12\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_91\);

-- Location: LC_X5_Y5_N0
\Mux9~2\ : maxii_lcell
-- Equation(s):
-- \Mux9~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & (\Mult0|auto_generated|op_1~30_combout\)) # (!\sel~combout\(1) & ((\Add0~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \Mult0|auto_generated|op_1~30_combout\,
	datad => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~2_combout\);

-- Location: LC_X2_Y4_N3
\Mux9~4\ : maxii_lcell
-- Equation(s):
-- \Mux9~4_combout\ = (\sel~combout\(0) & (((\Mux9~7_combout\)))) # (!\sel~combout\(0) & ((\Mux9~3_combout\) # ((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~3_combout\,
	datab => \Mux9~7_combout\,
	datac => \Mux9~2_combout\,
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~4_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input1(7),
	combout => \input1~combout\(7));

-- Location: LC_X2_Y4_N6
\Mux15~21\ : maxii_lcell
-- Equation(s):
-- \Mux15~21_combout\ = (!\sel~combout\(2) & (((\input1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datac => \input1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~21_combout\);

-- Location: LC_X2_Y6_N6
\Mux9~0\ : maxii_lcell
-- Equation(s):
-- \Mux9~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~11_combout\))) # (!\sel~combout\(1) & (\Mux15~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \Mux15~19_combout\,
	datac => \sel~combout\(1),
	datad => \Mux15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~0_combout\);

-- Location: LC_X2_Y4_N1
\Mux9~1\ : maxii_lcell
-- Equation(s):
-- \Mux9~1_combout\ = (\Mux9~0_combout\ & (((\Mux15~9_combout\) # (!\sel~combout\(0))))) # (!\Mux9~0_combout\ & (\Mux15~21_combout\ & ((\sel~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~21_combout\,
	datab => \Mux15~9_combout\,
	datac => \Mux9~0_combout\,
	datad => \sel~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~1_combout\);

-- Location: LC_X2_Y4_N2
\Mux9~5\ : maxii_lcell
-- Equation(s):
-- \Mux9~5_combout\ = ((\sel~combout\(3) & ((\Mux9~1_combout\))) # (!\sel~combout\(3) & (\Mux9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~4_combout\,
	datab => \Mux9~1_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux9~5_combout\);

-- Location: LC_X3_Y5_N9
\Add0~35\ : maxii_lcell
-- Equation(s):
-- \Add0~35_combout\ = \input1~combout\(7) $ (\input2~combout\(7) $ (((!\Add0~12\ & \Add0~32\) # (\Add0~12\ & \Add0~32COUT1_91\))))
-- \Add0~37\ = CARRY((\input1~combout\(7) & (!\input2~combout\(7) & !\Add0~32COUT1_91\)) # (!\input1~combout\(7) & ((!\Add0~32COUT1_91\) # (!\input2~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \input2~combout\(7),
	cin => \Add0~12\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout => \Add0~37\);

-- Location: LC_X2_Y7_N4
\Mux15~23\ : maxii_lcell
-- Equation(s):
-- \Mux15~23_combout\ = \sel~combout\(1) $ (((\sel~combout\(2) & ((\input2~combout\(7)) # (\input1~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(7),
	datac => \sel~combout\(1),
	datad => \input1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~23_combout\);

-- Location: LC_X6_Y6_N9
\Mult0|auto_generated|le4a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(5) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ (((\input1~combout\(5)))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & (!\input1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(1),
	datab => \input1~combout\(4),
	datac => \input1~combout\(5),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(5));

-- Location: LC_X10_Y6_N2
\Mult0|auto_generated|le5a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(3) = LCELL((\Mult0|auto_generated|cs2a\(2) & ((\input1~combout\(3) $ (\Mult0|auto_generated|cs1a\(2))))) # (!\Mult0|auto_generated|cs2a\(2) & (!\input1~combout\(2) & ((\Mult0|auto_generated|cs1a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \input1~combout\(3),
	datac => \Mult0|auto_generated|cs1a\(2),
	datad => \Mult0|auto_generated|cs2a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(3));

-- Location: LC_X10_Y7_N4
\Mult0|auto_generated|op_3~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~15_combout\ = \Mult0|auto_generated|le4a\(5) $ (\Mult0|auto_generated|le5a\(3) $ ((\Mult0|auto_generated|op_3~12\)))
-- \Mult0|auto_generated|op_3~17\ = CARRY((\Mult0|auto_generated|le4a\(5) & (!\Mult0|auto_generated|le5a\(3) & !\Mult0|auto_generated|op_3~12COUT1_143\)) # (!\Mult0|auto_generated|le4a\(5) & ((!\Mult0|auto_generated|op_3~12COUT1_143\) # 
-- (!\Mult0|auto_generated|le5a\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(5),
	datab => \Mult0|auto_generated|le5a\(3),
	cin0 => \Mult0|auto_generated|op_3~12\,
	cin1 => \Mult0|auto_generated|op_3~12COUT1_143\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~15_combout\,
	cout => \Mult0|auto_generated|op_3~17\);

-- Location: LC_X6_Y5_N6
\Mult0|auto_generated|le3a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(7) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\input1~combout\(7) $ ((\Mult0|auto_generated|cs1a\(0))))) # (!\Mult0|auto_generated|cs2a\(0) & (((\Mult0|auto_generated|cs1a\(0) & !\input1~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \input1~combout\(6),
	datad => \Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(7));

-- Location: LC_X7_Y5_N4
\Mult0|auto_generated|add24_result[1]~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[1]~5_combout\ = (\Mult0|auto_generated|le3a\(7) $ ((\Mult0|auto_generated|add24_result[0]~2\)))
-- \Mult0|auto_generated|add24_result[1]~7\ = CARRY(((!\Mult0|auto_generated|add24_result[0]~2COUT1_121\) # (!\Mult0|auto_generated|le3a\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(7),
	cin0 => \Mult0|auto_generated|add24_result[0]~2\,
	cin1 => \Mult0|auto_generated|add24_result[0]~2COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[1]~5_combout\,
	cout => \Mult0|auto_generated|add24_result[1]~7\);

-- Location: LC_X10_Y6_N5
\Mult0|auto_generated|le6a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(1) = LCELL((\Mult0|auto_generated|cs2a\(3) & ((\input1~combout\(1) $ (\Mult0|auto_generated|cs1a\(3))))) # (!\Mult0|auto_generated|cs2a\(3) & (!\input1~combout\(0) & ((\Mult0|auto_generated|cs1a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ba0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(3),
	datab => \input1~combout\(0),
	datac => \input1~combout\(1),
	datad => \Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(1));

-- Location: LC_X7_Y6_N5
\Mult0|auto_generated|op_2~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~25_combout\ = \Mult0|auto_generated|add24_result[1]~5_combout\ $ (\Mult0|auto_generated|le6a\(1) $ ((\Mult0|auto_generated|op_2~22\)))
-- \Mult0|auto_generated|op_2~27\ = CARRY((\Mult0|auto_generated|add24_result[1]~5_combout\ & (!\Mult0|auto_generated|le6a\(1) & !\Mult0|auto_generated|op_2~22\)) # (!\Mult0|auto_generated|add24_result[1]~5_combout\ & ((!\Mult0|auto_generated|op_2~22\) # 
-- (!\Mult0|auto_generated|le6a\(1)))))
-- \Mult0|auto_generated|op_2~27COUT1_155\ = CARRY((\Mult0|auto_generated|add24_result[1]~5_combout\ & (!\Mult0|auto_generated|le6a\(1) & !\Mult0|auto_generated|op_2~22\)) # (!\Mult0|auto_generated|add24_result[1]~5_combout\ & 
-- ((!\Mult0|auto_generated|op_2~22\) # (!\Mult0|auto_generated|le6a\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[1]~5_combout\,
	datab => \Mult0|auto_generated|le6a\(1),
	cin => \Mult0|auto_generated|op_2~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~25_combout\,
	cout0 => \Mult0|auto_generated|op_2~27\,
	cout1 => \Mult0|auto_generated|op_2~27COUT1_155\);

-- Location: LC_X7_Y7_N1
\Mult0|auto_generated|op_1~35\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~35_combout\ = \Mult0|auto_generated|op_3~15_combout\ $ (\Mult0|auto_generated|op_2~25_combout\ $ (((!\Mult0|auto_generated|op_1~27\ & \Mult0|auto_generated|op_1~32\) # (\Mult0|auto_generated|op_1~27\ & 
-- \Mult0|auto_generated|op_1~32COUT1_165\))))
-- \Mult0|auto_generated|op_1~37\ = CARRY((\Mult0|auto_generated|op_3~15_combout\ & (!\Mult0|auto_generated|op_2~25_combout\ & !\Mult0|auto_generated|op_1~32\)) # (!\Mult0|auto_generated|op_3~15_combout\ & ((!\Mult0|auto_generated|op_1~32\) # 
-- (!\Mult0|auto_generated|op_2~25_combout\))))
-- \Mult0|auto_generated|op_1~37COUT1_166\ = CARRY((\Mult0|auto_generated|op_3~15_combout\ & (!\Mult0|auto_generated|op_2~25_combout\ & !\Mult0|auto_generated|op_1~32COUT1_165\)) # (!\Mult0|auto_generated|op_3~15_combout\ & 
-- ((!\Mult0|auto_generated|op_1~32COUT1_165\) # (!\Mult0|auto_generated|op_2~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~15_combout\,
	datab => \Mult0|auto_generated|op_2~25_combout\,
	cin => \Mult0|auto_generated|op_1~27\,
	cin0 => \Mult0|auto_generated|op_1~32\,
	cin1 => \Mult0|auto_generated|op_1~32COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~35_combout\,
	cout0 => \Mult0|auto_generated|op_1~37\,
	cout1 => \Mult0|auto_generated|op_1~37COUT1_166\);

-- Location: LC_X3_Y7_N2
\Mux15~24\ : maxii_lcell
-- Equation(s):
-- \Mux15~24_combout\ = (\Mux15~23_combout\ & (((\sel~combout\(2)) # (\Mult0|auto_generated|op_1~35_combout\)))) # (!\Mux15~23_combout\ & (\Add0~35_combout\ & (!\sel~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cec2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \Mux15~23_combout\,
	datac => \sel~combout\(2),
	datad => \Mult0|auto_generated|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~24_combout\);

-- Location: LC_X2_Y7_N7
\Mux15~39\ : maxii_lcell
-- Equation(s):
-- \Mux15~39_combout\ = (\sel~combout\(2) & (\input1~combout\(7) $ (((\input2~combout\(7)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(7) & \input1~combout\(7))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47ad",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(7),
	datac => \sel~combout\(1),
	datad => \input1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~39_combout\);

-- Location: LC_X3_Y4_N9
\Add1~35\ : maxii_lcell
-- Equation(s):
-- \Add1~35_combout\ = \input2~combout\(7) $ (\input1~combout\(7) $ ((!(!\Add1~12\ & \Add1~32\) # (\Add1~12\ & \Add1~32COUT1_86\))))
-- \Add1~37\ = CARRY((\input2~combout\(7) & ((!\Add1~32COUT1_86\) # (!\input1~combout\(7)))) # (!\input2~combout\(7) & (!\input1~combout\(7) & !\Add1~32COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(7),
	datab => \input1~combout\(7),
	cin => \Add1~12\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout => \Add1~37\);

-- Location: LC_X2_Y7_N3
\Mux15~40\ : maxii_lcell
-- Equation(s):
-- \Mux15~40_combout\ = (\Mux15~39_combout\ & ((\sel~combout\(2)) # ((\sel~combout\(1)) # (\Add1~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Mux15~39_combout\,
	datac => \sel~combout\(1),
	datad => \Add1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~40_combout\);

-- Location: LC_X2_Y7_N2
\Mux8~0\ : maxii_lcell
-- Equation(s):
-- \Mux8~0_combout\ = (\sel~combout\(3) & (((\sel~combout\(0))))) # (!\sel~combout\(3) & ((\sel~combout\(0) & ((\Mux15~40_combout\))) # (!\sel~combout\(0) & (\Mux15~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(3),
	datab => \Mux15~24_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~0_combout\);

-- Location: LC_X2_Y7_N5
\Mux15~22\ : maxii_lcell
-- Equation(s):
-- \Mux15~22_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\input1~combout\(15)))) # (!\sel~combout\(1) & (\input1~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input1~combout\(6),
	datac => \sel~combout\(1),
	datad => \input1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~22_combout\);

-- Location: LC_X3_Y7_N5
\Mux15~25\ : maxii_lcell
-- Equation(s):
-- \Mux15~25_combout\ = (((!\sel~combout\(2) & \input1~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~25_combout\);

-- Location: LC_X2_Y7_N8
\Mux8~1\ : maxii_lcell
-- Equation(s):
-- \Mux8~1_combout\ = (\sel~combout\(3) & ((\Mux8~0_combout\ & ((\Mux15~25_combout\))) # (!\Mux8~0_combout\ & (\Mux15~22_combout\)))) # (!\sel~combout\(3) & (\Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(3),
	datab => \Mux8~0_combout\,
	datac => \Mux15~22_combout\,
	datad => \Mux15~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux8~1_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(8),
	combout => \input2~combout\(8));

-- Location: LC_X4_Y4_N0
\Add1~40\ : maxii_lcell
-- Equation(s):
-- \Add1~40_combout\ = \input2~combout\(8) $ (\input1~combout\(8) $ ((\Add1~37\)))
-- \Add1~42\ = CARRY((\input2~combout\(8) & (\input1~combout\(8) & !\Add1~37\)) # (!\input2~combout\(8) & ((\input1~combout\(8)) # (!\Add1~37\))))
-- \Add1~42COUT1_87\ = CARRY((\input2~combout\(8) & (\input1~combout\(8) & !\Add1~37\)) # (!\input2~combout\(8) & ((\input1~combout\(8)) # (!\Add1~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(8),
	datab => \input1~combout\(8),
	cin => \Add1~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_87\);

-- Location: LC_X5_Y5_N8
\Mux15~37\ : maxii_lcell
-- Equation(s):
-- \Mux15~37_combout\ = (\sel~combout\(2) & (\input1~combout\(8) $ (((\input2~combout\(8)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(8) & \input1~combout\(8))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27cb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(8),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~37_combout\);

-- Location: LC_X5_Y5_N9
\Mux15~38\ : maxii_lcell
-- Equation(s):
-- \Mux15~38_combout\ = (\Mux15~37_combout\ & ((\Add1~40_combout\) # ((\sel~combout\(2)) # (\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~40_combout\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \Mux15~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~38_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(9),
	combout => \input2~combout\(9));

-- Location: LC_X5_Y4_N4
\Mult0|auto_generated|cs2a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(4) = \input2~combout\(8) $ ((((!\Mult0|auto_generated|cs2a[3]~COUT\))))
-- \Mult0|auto_generated|cs2a[4]~COUT\ = CARRY((\input2~combout\(9)) # ((\input2~combout\(8) & !\Mult0|auto_generated|cs2a[3]~COUTCOUT1_20\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(8),
	datab => \input2~combout\(9),
	cin0 => \Mult0|auto_generated|cs2a[3]~COUT\,
	cin1 => \Mult0|auto_generated|cs2a[3]~COUTCOUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(4),
	cout => \Mult0|auto_generated|cs2a[4]~COUT\);

-- Location: LC_X6_Y4_N4
\Mult0|auto_generated|cs1a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(4) = \input2~combout\(9) $ (((\input2~combout\(8) & (!\Mult0|auto_generated|cs1a[3]~COUT\))))
-- \Mult0|auto_generated|cs1a[4]~COUT\ = CARRY((\input2~combout\(9)) # ((\input2~combout\(8) & !\Mult0|auto_generated|cs1a[3]~COUTCOUT1_20\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a6ae",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(9),
	datab => \input2~combout\(8),
	cin0 => \Mult0|auto_generated|cs1a[3]~COUT\,
	cin1 => \Mult0|auto_generated|cs1a[3]~COUTCOUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(4),
	cout => \Mult0|auto_generated|cs1a[4]~COUT\);

-- Location: LC_X6_Y5_N0
\Mult0|auto_generated|le7a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(0) = LCELL(\Mult0|auto_generated|cs1a\(4) $ (((\Mult0|auto_generated|cs2a\(4) & (\input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(4),
	datab => \input1~combout\(0),
	datac => \Mult0|auto_generated|cs1a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(0));

-- Location: LC_X6_Y6_N2
\Mult0|auto_generated|le4a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(6) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ ((\input1~combout\(6))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & ((!\input1~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(1),
	datab => \input1~combout\(6),
	datac => \input1~combout\(5),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(6));

-- Location: LC_X7_Y4_N8
\Mult0|auto_generated|le5a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(4) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\input1~combout\(4) $ (((\Mult0|auto_generated|cs1a\(2)))))) # (!\Mult0|auto_generated|cs2a\(2) & (((!\input1~combout\(3) & \Mult0|auto_generated|cs1a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(2),
	datab => \input1~combout\(4),
	datac => \input1~combout\(3),
	datad => \Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(4));

-- Location: LC_X7_Y5_N5
\Mult0|auto_generated|add24_result[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[2]~10_combout\ = \Mult0|auto_generated|le4a\(6) $ (\Mult0|auto_generated|le5a\(4) $ ((!\Mult0|auto_generated|add24_result[1]~7\)))
-- \Mult0|auto_generated|add24_result[2]~12\ = CARRY((\Mult0|auto_generated|le4a\(6) & ((\Mult0|auto_generated|le5a\(4)) # (!\Mult0|auto_generated|add24_result[1]~7\))) # (!\Mult0|auto_generated|le4a\(6) & (\Mult0|auto_generated|le5a\(4) & 
-- !\Mult0|auto_generated|add24_result[1]~7\)))
-- \Mult0|auto_generated|add24_result[2]~12COUT1_122\ = CARRY((\Mult0|auto_generated|le4a\(6) & ((\Mult0|auto_generated|le5a\(4)) # (!\Mult0|auto_generated|add24_result[1]~7\))) # (!\Mult0|auto_generated|le4a\(6) & (\Mult0|auto_generated|le5a\(4) & 
-- !\Mult0|auto_generated|add24_result[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(6),
	datab => \Mult0|auto_generated|le5a\(4),
	cin => \Mult0|auto_generated|add24_result[1]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[2]~10_combout\,
	cout0 => \Mult0|auto_generated|add24_result[2]~12\,
	cout1 => \Mult0|auto_generated|add24_result[2]~12COUT1_122\);

-- Location: LC_X7_Y6_N6
\Mult0|auto_generated|op_2~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~30_combout\ = \Mult0|auto_generated|le7a\(0) $ (\Mult0|auto_generated|add24_result[2]~10_combout\ $ ((!(!\Mult0|auto_generated|op_2~22\ & \Mult0|auto_generated|op_2~27\) # (\Mult0|auto_generated|op_2~22\ & 
-- \Mult0|auto_generated|op_2~27COUT1_155\))))
-- \Mult0|auto_generated|op_2~32\ = CARRY((\Mult0|auto_generated|le7a\(0) & ((\Mult0|auto_generated|add24_result[2]~10_combout\) # (!\Mult0|auto_generated|op_2~27\))) # (!\Mult0|auto_generated|le7a\(0) & (\Mult0|auto_generated|add24_result[2]~10_combout\ & 
-- !\Mult0|auto_generated|op_2~27\)))
-- \Mult0|auto_generated|op_2~32COUT1_156\ = CARRY((\Mult0|auto_generated|le7a\(0) & ((\Mult0|auto_generated|add24_result[2]~10_combout\) # (!\Mult0|auto_generated|op_2~27COUT1_155\))) # (!\Mult0|auto_generated|le7a\(0) & 
-- (\Mult0|auto_generated|add24_result[2]~10_combout\ & !\Mult0|auto_generated|op_2~27COUT1_155\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(0),
	datab => \Mult0|auto_generated|add24_result[2]~10_combout\,
	cin => \Mult0|auto_generated|op_2~22\,
	cin0 => \Mult0|auto_generated|op_2~27\,
	cin1 => \Mult0|auto_generated|op_2~27COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~30_combout\,
	cout0 => \Mult0|auto_generated|op_2~32\,
	cout1 => \Mult0|auto_generated|op_2~32COUT1_156\);

-- Location: LC_X10_Y6_N0
\Mult0|auto_generated|le6a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(2) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\input1~combout\(2) $ (((\Mult0|auto_generated|cs1a\(3)))))) # (!\Mult0|auto_generated|cs2a\(3) & (((!\input1~combout\(1) & \Mult0|auto_generated|cs1a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(3),
	datab => \input1~combout\(2),
	datac => \input1~combout\(1),
	datad => \Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(2));

-- Location: LC_X12_Y2_N8
\Mult0|auto_generated|le3a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(8) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ (((\input1~combout\(8)))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & (!\input1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(0),
	datab => \input1~combout\(7),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(8));

-- Location: LC_X10_Y3_N1
\Mult0|auto_generated|add28_result[0]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[0]~0_combout\ = \Mult0|auto_generated|cs1a\(4) $ ((\Mult0|auto_generated|le3a\(8)))
-- \Mult0|auto_generated|add28_result[0]~2\ = CARRY((\Mult0|auto_generated|cs1a\(4) & (\Mult0|auto_generated|le3a\(8))))
-- \Mult0|auto_generated|add28_result[0]~2COUT1_91\ = CARRY((\Mult0|auto_generated|cs1a\(4) & (\Mult0|auto_generated|le3a\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \Mult0|auto_generated|le3a\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[0]~0_combout\,
	cout0 => \Mult0|auto_generated|add28_result[0]~2\,
	cout1 => \Mult0|auto_generated|add28_result[0]~2COUT1_91\);

-- Location: LC_X10_Y7_N5
\Mult0|auto_generated|op_3~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~20_combout\ = \Mult0|auto_generated|le6a\(2) $ (\Mult0|auto_generated|add28_result[0]~0_combout\ $ ((!\Mult0|auto_generated|op_3~17\)))
-- \Mult0|auto_generated|op_3~22\ = CARRY((\Mult0|auto_generated|le6a\(2) & ((\Mult0|auto_generated|add28_result[0]~0_combout\) # (!\Mult0|auto_generated|op_3~17\))) # (!\Mult0|auto_generated|le6a\(2) & (\Mult0|auto_generated|add28_result[0]~0_combout\ & 
-- !\Mult0|auto_generated|op_3~17\)))
-- \Mult0|auto_generated|op_3~22COUT1_144\ = CARRY((\Mult0|auto_generated|le6a\(2) & ((\Mult0|auto_generated|add28_result[0]~0_combout\) # (!\Mult0|auto_generated|op_3~17\))) # (!\Mult0|auto_generated|le6a\(2) & 
-- (\Mult0|auto_generated|add28_result[0]~0_combout\ & !\Mult0|auto_generated|op_3~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(2),
	datab => \Mult0|auto_generated|add28_result[0]~0_combout\,
	cin => \Mult0|auto_generated|op_3~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~20_combout\,
	cout0 => \Mult0|auto_generated|op_3~22\,
	cout1 => \Mult0|auto_generated|op_3~22COUT1_144\);

-- Location: LC_X7_Y7_N2
\Mult0|auto_generated|op_1~40\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~40_combout\ = \Mult0|auto_generated|op_2~30_combout\ $ (\Mult0|auto_generated|op_3~20_combout\ $ ((!(!\Mult0|auto_generated|op_1~27\ & \Mult0|auto_generated|op_1~37\) # (\Mult0|auto_generated|op_1~27\ & 
-- \Mult0|auto_generated|op_1~37COUT1_166\))))
-- \Mult0|auto_generated|op_1~42\ = CARRY((\Mult0|auto_generated|op_2~30_combout\ & ((\Mult0|auto_generated|op_3~20_combout\) # (!\Mult0|auto_generated|op_1~37\))) # (!\Mult0|auto_generated|op_2~30_combout\ & (\Mult0|auto_generated|op_3~20_combout\ & 
-- !\Mult0|auto_generated|op_1~37\)))
-- \Mult0|auto_generated|op_1~42COUT1_167\ = CARRY((\Mult0|auto_generated|op_2~30_combout\ & ((\Mult0|auto_generated|op_3~20_combout\) # (!\Mult0|auto_generated|op_1~37COUT1_166\))) # (!\Mult0|auto_generated|op_2~30_combout\ & 
-- (\Mult0|auto_generated|op_3~20_combout\ & !\Mult0|auto_generated|op_1~37COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~30_combout\,
	datab => \Mult0|auto_generated|op_3~20_combout\,
	cin => \Mult0|auto_generated|op_1~27\,
	cin0 => \Mult0|auto_generated|op_1~37\,
	cin1 => \Mult0|auto_generated|op_1~37COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~40_combout\,
	cout0 => \Mult0|auto_generated|op_1~42\,
	cout1 => \Mult0|auto_generated|op_1~42COUT1_167\);

-- Location: LC_X5_Y5_N6
\Mux15~27\ : maxii_lcell
-- Equation(s):
-- \Mux15~27_combout\ = \sel~combout\(1) $ (((\sel~combout\(2) & ((\input2~combout\(8)) # (\input1~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(8),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~27_combout\);

-- Location: LC_X4_Y5_N0
\Add0~40\ : maxii_lcell
-- Equation(s):
-- \Add0~40_combout\ = \input2~combout\(8) $ (\input1~combout\(8) $ ((!\Add0~37\)))
-- \Add0~42\ = CARRY((\input2~combout\(8) & ((\input1~combout\(8)) # (!\Add0~37\))) # (!\input2~combout\(8) & (\input1~combout\(8) & !\Add0~37\)))
-- \Add0~42COUT1_92\ = CARRY((\input2~combout\(8) & ((\input1~combout\(8)) # (!\Add0~37\))) # (!\input2~combout\(8) & (\input1~combout\(8) & !\Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(8),
	datab => \input1~combout\(8),
	cin => \Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_92\);

-- Location: LC_X5_Y5_N2
\Mux15~28\ : maxii_lcell
-- Equation(s):
-- \Mux15~28_combout\ = (\sel~combout\(2) & (((\Mux15~27_combout\)))) # (!\sel~combout\(2) & ((\Mux15~27_combout\ & (\Mult0|auto_generated|op_1~40_combout\)) # (!\Mux15~27_combout\ & ((\Add0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~40_combout\,
	datab => \sel~combout\(2),
	datac => \Mux15~27_combout\,
	datad => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~28_combout\);

-- Location: LC_X5_Y5_N3
\Mux7~0\ : maxii_lcell
-- Equation(s):
-- \Mux7~0_combout\ = (\sel~combout\(0) & ((\Mux15~38_combout\) # ((\sel~combout\(3))))) # (!\sel~combout\(0) & (((!\sel~combout\(3) & \Mux15~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ada8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \Mux15~38_combout\,
	datac => \sel~combout\(3),
	datad => \Mux15~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~0_combout\);

-- Location: LC_X5_Y5_N1
\Mux15~26\ : maxii_lcell
-- Equation(s):
-- \Mux15~26_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\input1~combout\(0)))) # (!\sel~combout\(1) & (\input1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~26_combout\);

-- Location: LC_X5_Y5_N4
\Mux15~29\ : maxii_lcell
-- Equation(s):
-- \Mux15~29_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & (\input1~combout\(7))) # (!\sel~combout\(1) & ((\input1~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~29_combout\);

-- Location: LC_X5_Y5_N5
\Mux7~1\ : maxii_lcell
-- Equation(s):
-- \Mux7~1_combout\ = (\Mux7~0_combout\ & (((\Mux15~29_combout\) # (!\sel~combout\(3))))) # (!\Mux7~0_combout\ & (\Mux15~26_combout\ & (\sel~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~0_combout\,
	datab => \Mux15~26_combout\,
	datac => \sel~combout\(3),
	datad => \Mux15~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux7~1_combout\);

-- Location: LC_X2_Y7_N9
\Mux6~0\ : maxii_lcell
-- Equation(s):
-- \Mux6~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~14_combout\))) # (!\sel~combout\(1) & (\Mux15~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \Mux15~25_combout\,
	datac => \sel~combout\(1),
	datad => \Mux15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~0_combout\);

-- Location: LC_X1_Y7_N8
\Mux6~1\ : maxii_lcell
-- Equation(s):
-- \Mux6~1_combout\ = (\sel~combout\(0) & ((\Mux6~0_combout\ & (\Mux15~20_combout\)) # (!\Mux6~0_combout\ & ((\Mux15~13_combout\))))) # (!\sel~combout\(0) & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~20_combout\,
	datab => \sel~combout\(0),
	datac => \Mux6~0_combout\,
	datad => \Mux15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~1_combout\);

-- Location: LC_X4_Y5_N1
\Add0~45\ : maxii_lcell
-- Equation(s):
-- \Add0~45_combout\ = \input2~combout\(9) $ (\input1~combout\(9) $ (((!\Add0~37\ & \Add0~42\) # (\Add0~37\ & \Add0~42COUT1_92\))))
-- \Add0~47\ = CARRY((\input2~combout\(9) & (!\input1~combout\(9) & !\Add0~42\)) # (!\input2~combout\(9) & ((!\Add0~42\) # (!\input1~combout\(9)))))
-- \Add0~47COUT1_93\ = CARRY((\input2~combout\(9) & (!\input1~combout\(9) & !\Add0~42COUT1_92\)) # (!\input2~combout\(9) & ((!\Add0~42COUT1_92\) # (!\input1~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(9),
	datab => \input1~combout\(9),
	cin => \Add0~37\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_93\);

-- Location: LC_X7_Y4_N7
\Mult0|auto_generated|le5a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(5) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) $ (((\input1~combout\(5)))))) # (!\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) & (!\input1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(2),
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \input1~combout\(4),
	datad => \input1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(5));

-- Location: LC_X6_Y6_N1
\Mult0|auto_generated|le4a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(7) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\input1~combout\(7) $ ((\Mult0|auto_generated|cs1a\(1))))) # (!\Mult0|auto_generated|cs2a\(1) & (((\Mult0|auto_generated|cs1a\(1) & !\input1~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(1),
	datab => \input1~combout\(7),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \input1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(7));

-- Location: LC_X7_Y5_N6
\Mult0|auto_generated|add24_result[3]~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[3]~15_combout\ = \Mult0|auto_generated|le5a\(5) $ (\Mult0|auto_generated|le4a\(7) $ (((!\Mult0|auto_generated|add24_result[1]~7\ & \Mult0|auto_generated|add24_result[2]~12\) # (\Mult0|auto_generated|add24_result[1]~7\ & 
-- \Mult0|auto_generated|add24_result[2]~12COUT1_122\))))
-- \Mult0|auto_generated|add24_result[3]~17\ = CARRY((\Mult0|auto_generated|le5a\(5) & (!\Mult0|auto_generated|le4a\(7) & !\Mult0|auto_generated|add24_result[2]~12\)) # (!\Mult0|auto_generated|le5a\(5) & ((!\Mult0|auto_generated|add24_result[2]~12\) # 
-- (!\Mult0|auto_generated|le4a\(7)))))
-- \Mult0|auto_generated|add24_result[3]~17COUT1_123\ = CARRY((\Mult0|auto_generated|le5a\(5) & (!\Mult0|auto_generated|le4a\(7) & !\Mult0|auto_generated|add24_result[2]~12COUT1_122\)) # (!\Mult0|auto_generated|le5a\(5) & 
-- ((!\Mult0|auto_generated|add24_result[2]~12COUT1_122\) # (!\Mult0|auto_generated|le4a\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(5),
	datab => \Mult0|auto_generated|le4a\(7),
	cin => \Mult0|auto_generated|add24_result[1]~7\,
	cin0 => \Mult0|auto_generated|add24_result[2]~12\,
	cin1 => \Mult0|auto_generated|add24_result[2]~12COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[3]~15_combout\,
	cout0 => \Mult0|auto_generated|add24_result[3]~17\,
	cout1 => \Mult0|auto_generated|add24_result[3]~17COUT1_123\);

-- Location: LC_X6_Y5_N2
\Mult0|auto_generated|le7a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(1) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ ((\input1~combout\(1))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & ((!\input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(1),
	datac => \Mult0|auto_generated|cs2a\(4),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(1));

-- Location: LC_X7_Y6_N7
\Mult0|auto_generated|op_2~35\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~35_combout\ = \Mult0|auto_generated|add24_result[3]~15_combout\ $ (\Mult0|auto_generated|le7a\(1) $ (((!\Mult0|auto_generated|op_2~22\ & \Mult0|auto_generated|op_2~32\) # (\Mult0|auto_generated|op_2~22\ & 
-- \Mult0|auto_generated|op_2~32COUT1_156\))))
-- \Mult0|auto_generated|op_2~37\ = CARRY((\Mult0|auto_generated|add24_result[3]~15_combout\ & (!\Mult0|auto_generated|le7a\(1) & !\Mult0|auto_generated|op_2~32\)) # (!\Mult0|auto_generated|add24_result[3]~15_combout\ & ((!\Mult0|auto_generated|op_2~32\) # 
-- (!\Mult0|auto_generated|le7a\(1)))))
-- \Mult0|auto_generated|op_2~37COUT1_157\ = CARRY((\Mult0|auto_generated|add24_result[3]~15_combout\ & (!\Mult0|auto_generated|le7a\(1) & !\Mult0|auto_generated|op_2~32COUT1_156\)) # (!\Mult0|auto_generated|add24_result[3]~15_combout\ & 
-- ((!\Mult0|auto_generated|op_2~32COUT1_156\) # (!\Mult0|auto_generated|le7a\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[3]~15_combout\,
	datab => \Mult0|auto_generated|le7a\(1),
	cin => \Mult0|auto_generated|op_2~22\,
	cin0 => \Mult0|auto_generated|op_2~32\,
	cin1 => \Mult0|auto_generated|op_2~32COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~35_combout\,
	cout0 => \Mult0|auto_generated|op_2~37\,
	cout1 => \Mult0|auto_generated|op_2~37COUT1_157\);

-- Location: LC_X10_Y6_N8
\Mult0|auto_generated|le6a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(3) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ ((\input1~combout\(3))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & ((!\input1~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \input1~combout\(3),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(3));

-- Location: LC_X12_Y2_N7
\Mult0|auto_generated|le3a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(9) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ (((\input1~combout\(9)))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & (!\input1~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(0),
	datab => \input1~combout\(8),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(9));

-- Location: LC_X10_Y3_N2
\Mult0|auto_generated|add28_result[1]~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[1]~5_combout\ = (\Mult0|auto_generated|le3a\(9) $ ((\Mult0|auto_generated|add28_result[0]~2\)))
-- \Mult0|auto_generated|add28_result[1]~7\ = CARRY(((!\Mult0|auto_generated|add28_result[0]~2\) # (!\Mult0|auto_generated|le3a\(9))))
-- \Mult0|auto_generated|add28_result[1]~7COUT1_92\ = CARRY(((!\Mult0|auto_generated|add28_result[0]~2COUT1_91\) # (!\Mult0|auto_generated|le3a\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(9),
	cin0 => \Mult0|auto_generated|add28_result[0]~2\,
	cin1 => \Mult0|auto_generated|add28_result[0]~2COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[1]~5_combout\,
	cout0 => \Mult0|auto_generated|add28_result[1]~7\,
	cout1 => \Mult0|auto_generated|add28_result[1]~7COUT1_92\);

-- Location: LC_X10_Y7_N6
\Mult0|auto_generated|op_3~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~25_combout\ = \Mult0|auto_generated|le6a\(3) $ (\Mult0|auto_generated|add28_result[1]~5_combout\ $ (((!\Mult0|auto_generated|op_3~17\ & \Mult0|auto_generated|op_3~22\) # (\Mult0|auto_generated|op_3~17\ & 
-- \Mult0|auto_generated|op_3~22COUT1_144\))))
-- \Mult0|auto_generated|op_3~27\ = CARRY((\Mult0|auto_generated|le6a\(3) & (!\Mult0|auto_generated|add28_result[1]~5_combout\ & !\Mult0|auto_generated|op_3~22\)) # (!\Mult0|auto_generated|le6a\(3) & ((!\Mult0|auto_generated|op_3~22\) # 
-- (!\Mult0|auto_generated|add28_result[1]~5_combout\))))
-- \Mult0|auto_generated|op_3~27COUT1_145\ = CARRY((\Mult0|auto_generated|le6a\(3) & (!\Mult0|auto_generated|add28_result[1]~5_combout\ & !\Mult0|auto_generated|op_3~22COUT1_144\)) # (!\Mult0|auto_generated|le6a\(3) & 
-- ((!\Mult0|auto_generated|op_3~22COUT1_144\) # (!\Mult0|auto_generated|add28_result[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(3),
	datab => \Mult0|auto_generated|add28_result[1]~5_combout\,
	cin => \Mult0|auto_generated|op_3~17\,
	cin0 => \Mult0|auto_generated|op_3~22\,
	cin1 => \Mult0|auto_generated|op_3~22COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~25_combout\,
	cout0 => \Mult0|auto_generated|op_3~27\,
	cout1 => \Mult0|auto_generated|op_3~27COUT1_145\);

-- Location: LC_X7_Y7_N3
\Mult0|auto_generated|op_1~45\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~45_combout\ = \Mult0|auto_generated|op_2~35_combout\ $ (\Mult0|auto_generated|op_3~25_combout\ $ (((!\Mult0|auto_generated|op_1~27\ & \Mult0|auto_generated|op_1~42\) # (\Mult0|auto_generated|op_1~27\ & 
-- \Mult0|auto_generated|op_1~42COUT1_167\))))
-- \Mult0|auto_generated|op_1~47\ = CARRY((\Mult0|auto_generated|op_2~35_combout\ & (!\Mult0|auto_generated|op_3~25_combout\ & !\Mult0|auto_generated|op_1~42\)) # (!\Mult0|auto_generated|op_2~35_combout\ & ((!\Mult0|auto_generated|op_1~42\) # 
-- (!\Mult0|auto_generated|op_3~25_combout\))))
-- \Mult0|auto_generated|op_1~47COUT1_168\ = CARRY((\Mult0|auto_generated|op_2~35_combout\ & (!\Mult0|auto_generated|op_3~25_combout\ & !\Mult0|auto_generated|op_1~42COUT1_167\)) # (!\Mult0|auto_generated|op_2~35_combout\ & 
-- ((!\Mult0|auto_generated|op_1~42COUT1_167\) # (!\Mult0|auto_generated|op_3~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~35_combout\,
	datab => \Mult0|auto_generated|op_3~25_combout\,
	cin => \Mult0|auto_generated|op_1~27\,
	cin0 => \Mult0|auto_generated|op_1~42\,
	cin1 => \Mult0|auto_generated|op_1~42COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~45_combout\,
	cout0 => \Mult0|auto_generated|op_1~47\,
	cout1 => \Mult0|auto_generated|op_1~47COUT1_168\);

-- Location: LC_X4_Y5_N9
\Mux6~2\ : maxii_lcell
-- Equation(s):
-- \Mux6~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\Mult0|auto_generated|op_1~45_combout\))) # (!\sel~combout\(1) & (\Add0~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Add0~45_combout\,
	datac => \sel~combout\(1),
	datad => \Mult0|auto_generated|op_1~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~2_combout\);

-- Location: LC_X1_Y5_N7
\Mux6~6\ : maxii_lcell
-- Equation(s):
-- \Mux6~6_combout\ = (\sel~combout\(2) & (\input1~combout\(9) $ (((\sel~combout\(1)) # (\input2~combout\(9)))))) # (!\sel~combout\(2) & (((\input2~combout\(9) & \input1~combout\(9))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53b9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \input2~combout\(9),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~6_combout\);

-- Location: LC_X4_Y4_N1
\Add1~45\ : maxii_lcell
-- Equation(s):
-- \Add1~45_combout\ = \input1~combout\(9) $ (\input2~combout\(9) $ ((!(!\Add1~37\ & \Add1~42\) # (\Add1~37\ & \Add1~42COUT1_87\))))
-- \Add1~47\ = CARRY((\input1~combout\(9) & (\input2~combout\(9) & !\Add1~42\)) # (!\input1~combout\(9) & ((\input2~combout\(9)) # (!\Add1~42\))))
-- \Add1~47COUT1_88\ = CARRY((\input1~combout\(9) & (\input2~combout\(9) & !\Add1~42COUT1_87\)) # (!\input1~combout\(9) & ((\input2~combout\(9)) # (!\Add1~42COUT1_87\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(9),
	datab => \input2~combout\(9),
	cin => \Add1~37\,
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout0 => \Add1~47\,
	cout1 => \Add1~47COUT1_88\);

-- Location: LC_X1_Y5_N9
\Mux6~7\ : maxii_lcell
-- Equation(s):
-- \Mux6~7_combout\ = (\Mux6~6_combout\ & ((\sel~combout\(2)) # ((\sel~combout\(1)) # (\Add1~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \Mux6~6_combout\,
	datad => \Add1~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~7_combout\);

-- Location: LC_X1_Y5_N1
\Mux6~3\ : maxii_lcell
-- Equation(s):
-- \Mux6~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(9)) # (\input1~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \sel~combout\(1),
	datac => \input2~combout\(9),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~3_combout\);

-- Location: LC_X1_Y5_N5
\Mux6~4\ : maxii_lcell
-- Equation(s):
-- \Mux6~4_combout\ = (\sel~combout\(0) & (((\Mux6~7_combout\)))) # (!\sel~combout\(0) & ((\Mux6~2_combout\) # ((\Mux6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~2_combout\,
	datab => \Mux6~7_combout\,
	datac => \sel~combout\(0),
	datad => \Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~4_combout\);

-- Location: LC_X1_Y5_N4
\Mux6~5\ : maxii_lcell
-- Equation(s):
-- \Mux6~5_combout\ = ((\sel~combout\(3) & (\Mux6~1_combout\)) # (!\sel~combout\(3) & ((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~1_combout\,
	datac => \Mux6~4_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux6~5_combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(10),
	combout => \input2~combout\(10));

-- Location: LC_X5_Y7_N8
\Mux5~3\ : maxii_lcell
-- Equation(s):
-- \Mux5~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(10)) # (\input1~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(10),
	datac => \sel~combout\(1),
	datad => \input1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~3_combout\);

-- Location: LC_X5_Y7_N7
\Mux5~6\ : maxii_lcell
-- Equation(s):
-- \Mux5~6_combout\ = (\sel~combout\(2) & (\input1~combout\(10) $ (((\input2~combout\(10)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(10) & \input1~combout\(10))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "47ad",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \input2~combout\(10),
	datac => \sel~combout\(1),
	datad => \input1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~6_combout\);

-- Location: LC_X4_Y4_N2
\Add1~50\ : maxii_lcell
-- Equation(s):
-- \Add1~50_combout\ = \input1~combout\(10) $ (\input2~combout\(10) $ (((!\Add1~37\ & \Add1~47\) # (\Add1~37\ & \Add1~47COUT1_88\))))
-- \Add1~52\ = CARRY((\input1~combout\(10) & ((!\Add1~47\) # (!\input2~combout\(10)))) # (!\input1~combout\(10) & (!\input2~combout\(10) & !\Add1~47\)))
-- \Add1~52COUT1_89\ = CARRY((\input1~combout\(10) & ((!\Add1~47COUT1_88\) # (!\input2~combout\(10)))) # (!\input1~combout\(10) & (!\input2~combout\(10) & !\Add1~47COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(10),
	datab => \input2~combout\(10),
	cin => \Add1~37\,
	cin0 => \Add1~47\,
	cin1 => \Add1~47COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~50_combout\,
	cout0 => \Add1~52\,
	cout1 => \Add1~52COUT1_89\);

-- Location: LC_X5_Y7_N4
\Mux5~7\ : maxii_lcell
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~6_combout\ & ((\sel~combout\(2)) # ((\Add1~50_combout\) # (\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Mux5~6_combout\,
	datac => \Add1~50_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~7_combout\);

-- Location: LC_X4_Y5_N2
\Add0~50\ : maxii_lcell
-- Equation(s):
-- \Add0~50_combout\ = \input2~combout\(10) $ (\input1~combout\(10) $ ((!(!\Add0~37\ & \Add0~47\) # (\Add0~37\ & \Add0~47COUT1_93\))))
-- \Add0~52\ = CARRY((\input2~combout\(10) & ((\input1~combout\(10)) # (!\Add0~47\))) # (!\input2~combout\(10) & (\input1~combout\(10) & !\Add0~47\)))
-- \Add0~52COUT1_94\ = CARRY((\input2~combout\(10) & ((\input1~combout\(10)) # (!\Add0~47COUT1_93\))) # (!\input2~combout\(10) & (\input1~combout\(10) & !\Add0~47COUT1_93\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(10),
	datab => \input1~combout\(10),
	cin => \Add0~37\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_94\);

-- Location: LC_X10_Y4_N5
\Mult0|auto_generated|le4a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(8) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\input1~combout\(8) $ (((\Mult0|auto_generated|cs1a\(1)))))) # (!\Mult0|auto_generated|cs2a\(1) & (((!\input1~combout\(7) & \Mult0|auto_generated|cs1a\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(8),
	datab => \input1~combout\(7),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(8));

-- Location: LC_X10_Y4_N2
\Mult0|auto_generated|le5a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(6) = LCELL((\Mult0|auto_generated|cs2a\(2) & ((\input1~combout\(6) $ (\Mult0|auto_generated|cs1a\(2))))) # (!\Mult0|auto_generated|cs2a\(2) & (!\input1~combout\(5) & ((\Mult0|auto_generated|cs1a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ba0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(2),
	datab => \input1~combout\(5),
	datac => \input1~combout\(6),
	datad => \Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(6));

-- Location: LC_X10_Y3_N3
\Mult0|auto_generated|add28_result[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[2]~10_combout\ = \Mult0|auto_generated|le4a\(8) $ (\Mult0|auto_generated|le5a\(6) $ ((!\Mult0|auto_generated|add28_result[1]~7\)))
-- \Mult0|auto_generated|add28_result[2]~12\ = CARRY((\Mult0|auto_generated|le4a\(8) & ((\Mult0|auto_generated|le5a\(6)) # (!\Mult0|auto_generated|add28_result[1]~7\))) # (!\Mult0|auto_generated|le4a\(8) & (\Mult0|auto_generated|le5a\(6) & 
-- !\Mult0|auto_generated|add28_result[1]~7\)))
-- \Mult0|auto_generated|add28_result[2]~12COUT1_93\ = CARRY((\Mult0|auto_generated|le4a\(8) & ((\Mult0|auto_generated|le5a\(6)) # (!\Mult0|auto_generated|add28_result[1]~7COUT1_92\))) # (!\Mult0|auto_generated|le4a\(8) & (\Mult0|auto_generated|le5a\(6) & 
-- !\Mult0|auto_generated|add28_result[1]~7COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(8),
	datab => \Mult0|auto_generated|le5a\(6),
	cin0 => \Mult0|auto_generated|add28_result[1]~7\,
	cin1 => \Mult0|auto_generated|add28_result[1]~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[2]~10_combout\,
	cout0 => \Mult0|auto_generated|add28_result[2]~12\,
	cout1 => \Mult0|auto_generated|add28_result[2]~12COUT1_93\);

-- Location: LC_X6_Y5_N5
\Mult0|auto_generated|le7a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(2) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ ((\input1~combout\(2))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & ((!\input1~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "486a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \Mult0|auto_generated|cs2a\(4),
	datac => \input1~combout\(2),
	datad => \input1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(2));

-- Location: LC_X7_Y5_N0
\Mult0|auto_generated|le6a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(4) = LCELL((\Mult0|auto_generated|cs2a\(3) & ((\input1~combout\(4) $ (\Mult0|auto_generated|cs1a\(3))))) # (!\Mult0|auto_generated|cs2a\(3) & (!\input1~combout\(3) & ((\Mult0|auto_generated|cs1a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(3),
	datab => \input1~combout\(4),
	datac => \Mult0|auto_generated|cs1a\(3),
	datad => \Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(4));

-- Location: LC_X7_Y5_N7
\Mult0|auto_generated|add24_result[4]~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[4]~20_combout\ = \Mult0|auto_generated|le7a\(2) $ (\Mult0|auto_generated|le6a\(4) $ ((!(!\Mult0|auto_generated|add24_result[1]~7\ & \Mult0|auto_generated|add24_result[3]~17\) # (\Mult0|auto_generated|add24_result[1]~7\ & 
-- \Mult0|auto_generated|add24_result[3]~17COUT1_123\))))
-- \Mult0|auto_generated|add24_result[4]~22\ = CARRY((\Mult0|auto_generated|le7a\(2) & ((\Mult0|auto_generated|le6a\(4)) # (!\Mult0|auto_generated|add24_result[3]~17\))) # (!\Mult0|auto_generated|le7a\(2) & (\Mult0|auto_generated|le6a\(4) & 
-- !\Mult0|auto_generated|add24_result[3]~17\)))
-- \Mult0|auto_generated|add24_result[4]~22COUT1_124\ = CARRY((\Mult0|auto_generated|le7a\(2) & ((\Mult0|auto_generated|le6a\(4)) # (!\Mult0|auto_generated|add24_result[3]~17COUT1_123\))) # (!\Mult0|auto_generated|le7a\(2) & (\Mult0|auto_generated|le6a\(4) & 
-- !\Mult0|auto_generated|add24_result[3]~17COUT1_123\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(2),
	datab => \Mult0|auto_generated|le6a\(4),
	cin => \Mult0|auto_generated|add24_result[1]~7\,
	cin0 => \Mult0|auto_generated|add24_result[3]~17\,
	cin1 => \Mult0|auto_generated|add24_result[3]~17COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[4]~20_combout\,
	cout0 => \Mult0|auto_generated|add24_result[4]~22\,
	cout1 => \Mult0|auto_generated|add24_result[4]~22COUT1_124\);

-- Location: LC_X7_Y6_N8
\Mult0|auto_generated|op_2~40\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~40_combout\ = \Mult0|auto_generated|add28_result[2]~10_combout\ $ (\Mult0|auto_generated|add24_result[4]~20_combout\ $ ((!(!\Mult0|auto_generated|op_2~22\ & \Mult0|auto_generated|op_2~37\) # (\Mult0|auto_generated|op_2~22\ & 
-- \Mult0|auto_generated|op_2~37COUT1_157\))))
-- \Mult0|auto_generated|op_2~42\ = CARRY((\Mult0|auto_generated|add28_result[2]~10_combout\ & ((\Mult0|auto_generated|add24_result[4]~20_combout\) # (!\Mult0|auto_generated|op_2~37\))) # (!\Mult0|auto_generated|add28_result[2]~10_combout\ & 
-- (\Mult0|auto_generated|add24_result[4]~20_combout\ & !\Mult0|auto_generated|op_2~37\)))
-- \Mult0|auto_generated|op_2~42COUT1_158\ = CARRY((\Mult0|auto_generated|add28_result[2]~10_combout\ & ((\Mult0|auto_generated|add24_result[4]~20_combout\) # (!\Mult0|auto_generated|op_2~37COUT1_157\))) # (!\Mult0|auto_generated|add28_result[2]~10_combout\ 
-- & (\Mult0|auto_generated|add24_result[4]~20_combout\ & !\Mult0|auto_generated|op_2~37COUT1_157\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add28_result[2]~10_combout\,
	datab => \Mult0|auto_generated|add24_result[4]~20_combout\,
	cin => \Mult0|auto_generated|op_2~22\,
	cin0 => \Mult0|auto_generated|op_2~37\,
	cin1 => \Mult0|auto_generated|op_2~37COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~40_combout\,
	cout0 => \Mult0|auto_generated|op_2~42\,
	cout1 => \Mult0|auto_generated|op_2~42COUT1_158\);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(11),
	combout => \input2~combout\(11));

-- Location: LC_X6_Y4_N5
\Mult0|auto_generated|cs1a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(5) = \input2~combout\(11) $ (((\input2~combout\(10) & (\Mult0|auto_generated|cs1a[4]~COUT\))))
-- \Mult0|auto_generated|cs1a[5]~COUT\ = CARRY((!\input2~combout\(11) & ((!\Mult0|auto_generated|cs1a[4]~COUT\) # (!\input2~combout\(10)))))
-- \Mult0|auto_generated|cs1a[5]~COUTCOUT1_21\ = CARRY((!\input2~combout\(11) & ((!\Mult0|auto_generated|cs1a[4]~COUT\) # (!\input2~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "6a15",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(11),
	datab => \input2~combout\(10),
	cin => \Mult0|auto_generated|cs1a[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(5),
	cout0 => \Mult0|auto_generated|cs1a[5]~COUT\,
	cout1 => \Mult0|auto_generated|cs1a[5]~COUTCOUT1_21\);

-- Location: LC_X5_Y4_N5
\Mult0|auto_generated|cs2a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(5) = (\input2~combout\(10) $ ((\Mult0|auto_generated|cs2a[4]~COUT\)))
-- \Mult0|auto_generated|cs2a[5]~COUT\ = CARRY((!\input2~combout\(11) & ((!\Mult0|auto_generated|cs2a[4]~COUT\) # (!\input2~combout\(10)))))
-- \Mult0|auto_generated|cs2a[5]~COUTCOUT1_21\ = CARRY((!\input2~combout\(11) & ((!\Mult0|auto_generated|cs2a[4]~COUT\) # (!\input2~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c15",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(11),
	datab => \input2~combout\(10),
	cin => \Mult0|auto_generated|cs2a[4]~COUT\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(5),
	cout0 => \Mult0|auto_generated|cs2a[5]~COUT\,
	cout1 => \Mult0|auto_generated|cs2a[5]~COUTCOUT1_21\);

-- Location: LC_X12_Y5_N7
\Mult0|auto_generated|le8a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(0) = LCELL((\Mult0|auto_generated|cs1a\(5) $ (((\input1~combout\(0) & \Mult0|auto_generated|cs2a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \input1~combout\(0),
	datad => \Mult0|auto_generated|cs2a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(0));

-- Location: LC_X12_Y2_N4
\Mult0|auto_generated|le3a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(10) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ ((\input1~combout\(10))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & ((!\input1~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(0),
	datab => \input1~combout\(10),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(10));

-- Location: LC_X11_Y4_N3
\Mult0|auto_generated|add32_result[0]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[0]~0_combout\ = \Mult0|auto_generated|le3a\(10) $ ((\Mult0|auto_generated|cs1a\(5)))
-- \Mult0|auto_generated|add32_result[0]~2\ = CARRY((\Mult0|auto_generated|le3a\(10) & (\Mult0|auto_generated|cs1a\(5))))
-- \Mult0|auto_generated|add32_result[0]~2COUT1_71\ = CARRY((\Mult0|auto_generated|le3a\(10) & (\Mult0|auto_generated|cs1a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(10),
	datab => \Mult0|auto_generated|cs1a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[0]~0_combout\,
	cout0 => \Mult0|auto_generated|add32_result[0]~2\,
	cout1 => \Mult0|auto_generated|add32_result[0]~2COUT1_71\);

-- Location: LC_X10_Y7_N7
\Mult0|auto_generated|op_3~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~30_combout\ = \Mult0|auto_generated|le8a\(0) $ (\Mult0|auto_generated|add32_result[0]~0_combout\ $ ((!(!\Mult0|auto_generated|op_3~17\ & \Mult0|auto_generated|op_3~27\) # (\Mult0|auto_generated|op_3~17\ & 
-- \Mult0|auto_generated|op_3~27COUT1_145\))))
-- \Mult0|auto_generated|op_3~32\ = CARRY((\Mult0|auto_generated|le8a\(0) & ((\Mult0|auto_generated|add32_result[0]~0_combout\) # (!\Mult0|auto_generated|op_3~27\))) # (!\Mult0|auto_generated|le8a\(0) & (\Mult0|auto_generated|add32_result[0]~0_combout\ & 
-- !\Mult0|auto_generated|op_3~27\)))
-- \Mult0|auto_generated|op_3~32COUT1_146\ = CARRY((\Mult0|auto_generated|le8a\(0) & ((\Mult0|auto_generated|add32_result[0]~0_combout\) # (!\Mult0|auto_generated|op_3~27COUT1_145\))) # (!\Mult0|auto_generated|le8a\(0) & 
-- (\Mult0|auto_generated|add32_result[0]~0_combout\ & !\Mult0|auto_generated|op_3~27COUT1_145\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le8a\(0),
	datab => \Mult0|auto_generated|add32_result[0]~0_combout\,
	cin => \Mult0|auto_generated|op_3~17\,
	cin0 => \Mult0|auto_generated|op_3~27\,
	cin1 => \Mult0|auto_generated|op_3~27COUT1_145\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~30_combout\,
	cout0 => \Mult0|auto_generated|op_3~32\,
	cout1 => \Mult0|auto_generated|op_3~32COUT1_146\);

-- Location: LC_X7_Y7_N4
\Mult0|auto_generated|op_1~50\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~50_combout\ = \Mult0|auto_generated|op_2~40_combout\ $ (\Mult0|auto_generated|op_3~30_combout\ $ ((!(!\Mult0|auto_generated|op_1~27\ & \Mult0|auto_generated|op_1~47\) # (\Mult0|auto_generated|op_1~27\ & 
-- \Mult0|auto_generated|op_1~47COUT1_168\))))
-- \Mult0|auto_generated|op_1~52\ = CARRY((\Mult0|auto_generated|op_2~40_combout\ & ((\Mult0|auto_generated|op_3~30_combout\) # (!\Mult0|auto_generated|op_1~47COUT1_168\))) # (!\Mult0|auto_generated|op_2~40_combout\ & (\Mult0|auto_generated|op_3~30_combout\ 
-- & !\Mult0|auto_generated|op_1~47COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~40_combout\,
	datab => \Mult0|auto_generated|op_3~30_combout\,
	cin => \Mult0|auto_generated|op_1~27\,
	cin0 => \Mult0|auto_generated|op_1~47\,
	cin1 => \Mult0|auto_generated|op_1~47COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~50_combout\,
	cout => \Mult0|auto_generated|op_1~52\);

-- Location: LC_X5_Y7_N1
\Mux5~2\ : maxii_lcell
-- Equation(s):
-- \Mux5~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\Mult0|auto_generated|op_1~50_combout\))) # (!\sel~combout\(1) & (\Add0~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Add0~50_combout\,
	datac => \Mult0|auto_generated|op_1~50_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~2_combout\);

-- Location: LC_X5_Y7_N6
\Mux5~4\ : maxii_lcell
-- Equation(s):
-- \Mux5~4_combout\ = (\sel~combout\(0) & (((\Mux5~7_combout\)))) # (!\sel~combout\(0) & ((\Mux5~3_combout\) # ((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \sel~combout\(0),
	datac => \Mux5~7_combout\,
	datad => \Mux5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~4_combout\);

-- Location: LC_X1_Y5_N3
\Mux5~0\ : maxii_lcell
-- Equation(s):
-- \Mux5~0_combout\ = (\sel~combout\(0) & (\sel~combout\(1))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~8_combout\))) # (!\sel~combout\(1) & (\Mux15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \sel~combout\(1),
	datac => \Mux15~9_combout\,
	datad => \Mux15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X1_Y5_N6
\Mux5~1\ : maxii_lcell
-- Equation(s):
-- \Mux5~1_combout\ = (\Mux5~0_combout\ & (((\Mux15~19_combout\) # (!\sel~combout\(0))))) # (!\Mux5~0_combout\ & (\Mux15~17_combout\ & (\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea4a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \Mux15~17_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~1_combout\);

-- Location: LC_X1_Y5_N8
\Mux5~5\ : maxii_lcell
-- Equation(s):
-- \Mux5~5_combout\ = ((\sel~combout\(3) & ((\Mux5~1_combout\))) # (!\sel~combout\(3) & (\Mux5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datac => \Mux5~1_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~5_combout\);

-- Location: LC_X1_Y7_N3
\Mux4~0\ : maxii_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & (\Mux15~12_combout\)) # (!\sel~combout\(1) & ((\Mux15~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~12_combout\,
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \Mux15~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X1_Y6_N3
\Mux4~1\ : maxii_lcell
-- Equation(s):
-- \Mux4~1_combout\ = (\Mux4~0_combout\ & ((\Mux15~16_combout\) # ((!\sel~combout\(0))))) # (!\Mux4~0_combout\ & (((\sel~combout\(0) & \Mux15~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "da8a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \Mux15~16_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~1_combout\);

-- Location: LC_X4_Y4_N3
\Add1~55\ : maxii_lcell
-- Equation(s):
-- \Add1~55_combout\ = \input2~combout\(11) $ (\input1~combout\(11) $ ((!(!\Add1~37\ & \Add1~52\) # (\Add1~37\ & \Add1~52COUT1_89\))))
-- \Add1~57\ = CARRY((\input2~combout\(11) & ((!\Add1~52\) # (!\input1~combout\(11)))) # (!\input2~combout\(11) & (!\input1~combout\(11) & !\Add1~52\)))
-- \Add1~57COUT1_90\ = CARRY((\input2~combout\(11) & ((!\Add1~52COUT1_89\) # (!\input1~combout\(11)))) # (!\input2~combout\(11) & (!\input1~combout\(11) & !\Add1~52COUT1_89\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(11),
	datab => \input1~combout\(11),
	cin => \Add1~37\,
	cin0 => \Add1~52\,
	cin1 => \Add1~52COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~55_combout\,
	cout0 => \Add1~57\,
	cout1 => \Add1~57COUT1_90\);

-- Location: LC_X1_Y4_N9
\Mux4~6\ : maxii_lcell
-- Equation(s):
-- \Mux4~6_combout\ = (\sel~combout\(2) & (\input1~combout\(11) $ (((\input2~combout\(11)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(11) & \input1~combout\(11))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1eb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(11),
	datab => \sel~combout\(1),
	datac => \input1~combout\(11),
	datad => \sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~6_combout\);

-- Location: LC_X1_Y4_N3
\Mux4~7\ : maxii_lcell
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & ((\Add1~55_combout\) # ((\sel~combout\(1)) # (\sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~55_combout\,
	datab => \Mux4~6_combout\,
	datac => \sel~combout\(1),
	datad => \sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~7_combout\);

-- Location: LC_X1_Y4_N2
\Mux4~3\ : maxii_lcell
-- Equation(s):
-- \Mux4~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(11)) # (\input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3600",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(11),
	datab => \sel~combout\(1),
	datac => \input1~combout\(11),
	datad => \sel~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~3_combout\);

-- Location: LC_X4_Y5_N3
\Add0~55\ : maxii_lcell
-- Equation(s):
-- \Add0~55_combout\ = \input1~combout\(11) $ (\input2~combout\(11) $ (((!\Add0~37\ & \Add0~52\) # (\Add0~37\ & \Add0~52COUT1_94\))))
-- \Add0~57\ = CARRY((\input1~combout\(11) & (!\input2~combout\(11) & !\Add0~52\)) # (!\input1~combout\(11) & ((!\Add0~52\) # (!\input2~combout\(11)))))
-- \Add0~57COUT1_95\ = CARRY((\input1~combout\(11) & (!\input2~combout\(11) & !\Add0~52COUT1_94\)) # (!\input1~combout\(11) & ((!\Add0~52COUT1_94\) # (!\input2~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(11),
	datab => \input2~combout\(11),
	cin => \Add0~37\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout0 => \Add0~57\,
	cout1 => \Add0~57COUT1_95\);

-- Location: LC_X6_Y5_N8
\Mult0|auto_generated|le7a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(3) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ (((\input1~combout\(3)))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & (!\input1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "468a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \Mult0|auto_generated|cs2a\(4),
	datac => \input1~combout\(2),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(3));

-- Location: LC_X7_Y5_N2
\Mult0|auto_generated|le6a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(5) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ (((\input1~combout\(5)))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & (!\input1~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "468a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \Mult0|auto_generated|cs2a\(3),
	datac => \input1~combout\(4),
	datad => \input1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(5));

-- Location: LC_X7_Y5_N8
\Mult0|auto_generated|add24_result[5]~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[5]~25_combout\ = \Mult0|auto_generated|le7a\(3) $ (\Mult0|auto_generated|le6a\(5) $ (((!\Mult0|auto_generated|add24_result[1]~7\ & \Mult0|auto_generated|add24_result[4]~22\) # (\Mult0|auto_generated|add24_result[1]~7\ & 
-- \Mult0|auto_generated|add24_result[4]~22COUT1_124\))))
-- \Mult0|auto_generated|add24_result[5]~27\ = CARRY((\Mult0|auto_generated|le7a\(3) & (!\Mult0|auto_generated|le6a\(5) & !\Mult0|auto_generated|add24_result[4]~22\)) # (!\Mult0|auto_generated|le7a\(3) & ((!\Mult0|auto_generated|add24_result[4]~22\) # 
-- (!\Mult0|auto_generated|le6a\(5)))))
-- \Mult0|auto_generated|add24_result[5]~27COUT1_125\ = CARRY((\Mult0|auto_generated|le7a\(3) & (!\Mult0|auto_generated|le6a\(5) & !\Mult0|auto_generated|add24_result[4]~22COUT1_124\)) # (!\Mult0|auto_generated|le7a\(3) & 
-- ((!\Mult0|auto_generated|add24_result[4]~22COUT1_124\) # (!\Mult0|auto_generated|le6a\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(3),
	datab => \Mult0|auto_generated|le6a\(5),
	cin => \Mult0|auto_generated|add24_result[1]~7\,
	cin0 => \Mult0|auto_generated|add24_result[4]~22\,
	cin1 => \Mult0|auto_generated|add24_result[4]~22COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[5]~25_combout\,
	cout0 => \Mult0|auto_generated|add24_result[5]~27\,
	cout1 => \Mult0|auto_generated|add24_result[5]~27COUT1_125\);

-- Location: LC_X6_Y4_N9
\Mult0|auto_generated|le8a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(1) = LCELL((\Mult0|auto_generated|cs2a\(5) & ((\input1~combout\(1) $ (\Mult0|auto_generated|cs1a\(5))))) # (!\Mult0|auto_generated|cs2a\(5) & (!\input1~combout\(0) & ((\Mult0|auto_generated|cs1a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(0),
	datab => \input1~combout\(1),
	datac => \Mult0|auto_generated|cs1a\(5),
	datad => \Mult0|auto_generated|cs2a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(1));

-- Location: LC_X7_Y6_N9
\Mult0|auto_generated|op_2~45\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~45_combout\ = \Mult0|auto_generated|add24_result[5]~25_combout\ $ (\Mult0|auto_generated|le8a\(1) $ (((!\Mult0|auto_generated|op_2~22\ & \Mult0|auto_generated|op_2~42\) # (\Mult0|auto_generated|op_2~22\ & 
-- \Mult0|auto_generated|op_2~42COUT1_158\))))
-- \Mult0|auto_generated|op_2~47\ = CARRY((\Mult0|auto_generated|add24_result[5]~25_combout\ & (!\Mult0|auto_generated|le8a\(1) & !\Mult0|auto_generated|op_2~42COUT1_158\)) # (!\Mult0|auto_generated|add24_result[5]~25_combout\ & 
-- ((!\Mult0|auto_generated|op_2~42COUT1_158\) # (!\Mult0|auto_generated|le8a\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[5]~25_combout\,
	datab => \Mult0|auto_generated|le8a\(1),
	cin => \Mult0|auto_generated|op_2~22\,
	cin0 => \Mult0|auto_generated|op_2~42\,
	cin1 => \Mult0|auto_generated|op_2~42COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~45_combout\,
	cout => \Mult0|auto_generated|op_2~47\);

-- Location: LC_X10_Y4_N8
\Mult0|auto_generated|le4a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(9) = LCELL((\Mult0|auto_generated|cs2a\(1) & ((\Mult0|auto_generated|cs1a\(1) $ (\input1~combout\(9))))) # (!\Mult0|auto_generated|cs2a\(1) & (!\input1~combout\(8) & (\Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(8),
	datab => \Mult0|auto_generated|cs2a\(1),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(9));

-- Location: LC_X10_Y4_N3
\Mult0|auto_generated|le5a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(7) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\input1~combout\(7) $ (((\Mult0|auto_generated|cs1a\(2)))))) # (!\Mult0|auto_generated|cs2a\(2) & (((!\input1~combout\(6) & \Mult0|auto_generated|cs1a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(2),
	datab => \input1~combout\(7),
	datac => \input1~combout\(6),
	datad => \Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(7));

-- Location: LC_X10_Y3_N4
\Mult0|auto_generated|add28_result[3]~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[3]~15_combout\ = \Mult0|auto_generated|le4a\(9) $ (\Mult0|auto_generated|le5a\(7) $ ((\Mult0|auto_generated|add28_result[2]~12\)))
-- \Mult0|auto_generated|add28_result[3]~17\ = CARRY((\Mult0|auto_generated|le4a\(9) & (!\Mult0|auto_generated|le5a\(7) & !\Mult0|auto_generated|add28_result[2]~12COUT1_93\)) # (!\Mult0|auto_generated|le4a\(9) & 
-- ((!\Mult0|auto_generated|add28_result[2]~12COUT1_93\) # (!\Mult0|auto_generated|le5a\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(9),
	datab => \Mult0|auto_generated|le5a\(7),
	cin0 => \Mult0|auto_generated|add28_result[2]~12\,
	cin1 => \Mult0|auto_generated|add28_result[2]~12COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[3]~15_combout\,
	cout => \Mult0|auto_generated|add28_result[3]~17\);

-- Location: LC_X12_Y2_N5
\Mult0|auto_generated|le3a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(11) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ (((\input1~combout\(11)))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & (!\input1~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(0),
	datab => \input1~combout\(10),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(11));

-- Location: LC_X11_Y4_N4
\Mult0|auto_generated|add32_result[1]~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[1]~5_combout\ = \Mult0|auto_generated|le3a\(11) $ ((((\Mult0|auto_generated|add32_result[0]~2\))))
-- \Mult0|auto_generated|add32_result[1]~7\ = CARRY(((!\Mult0|auto_generated|add32_result[0]~2COUT1_71\)) # (!\Mult0|auto_generated|le3a\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(11),
	cin0 => \Mult0|auto_generated|add32_result[0]~2\,
	cin1 => \Mult0|auto_generated|add32_result[0]~2COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[1]~5_combout\,
	cout => \Mult0|auto_generated|add32_result[1]~7\);

-- Location: LC_X10_Y7_N8
\Mult0|auto_generated|op_3~35\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~35_combout\ = \Mult0|auto_generated|add28_result[3]~15_combout\ $ (\Mult0|auto_generated|add32_result[1]~5_combout\ $ (((!\Mult0|auto_generated|op_3~17\ & \Mult0|auto_generated|op_3~32\) # (\Mult0|auto_generated|op_3~17\ & 
-- \Mult0|auto_generated|op_3~32COUT1_146\))))
-- \Mult0|auto_generated|op_3~37\ = CARRY((\Mult0|auto_generated|add28_result[3]~15_combout\ & (!\Mult0|auto_generated|add32_result[1]~5_combout\ & !\Mult0|auto_generated|op_3~32\)) # (!\Mult0|auto_generated|add28_result[3]~15_combout\ & 
-- ((!\Mult0|auto_generated|op_3~32\) # (!\Mult0|auto_generated|add32_result[1]~5_combout\))))
-- \Mult0|auto_generated|op_3~37COUT1_147\ = CARRY((\Mult0|auto_generated|add28_result[3]~15_combout\ & (!\Mult0|auto_generated|add32_result[1]~5_combout\ & !\Mult0|auto_generated|op_3~32COUT1_146\)) # (!\Mult0|auto_generated|add28_result[3]~15_combout\ & 
-- ((!\Mult0|auto_generated|op_3~32COUT1_146\) # (!\Mult0|auto_generated|add32_result[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add28_result[3]~15_combout\,
	datab => \Mult0|auto_generated|add32_result[1]~5_combout\,
	cin => \Mult0|auto_generated|op_3~17\,
	cin0 => \Mult0|auto_generated|op_3~32\,
	cin1 => \Mult0|auto_generated|op_3~32COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~35_combout\,
	cout0 => \Mult0|auto_generated|op_3~37\,
	cout1 => \Mult0|auto_generated|op_3~37COUT1_147\);

-- Location: LC_X7_Y7_N5
\Mult0|auto_generated|op_1~55\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~55_combout\ = \Mult0|auto_generated|op_2~45_combout\ $ (\Mult0|auto_generated|op_3~35_combout\ $ ((\Mult0|auto_generated|op_1~52\)))
-- \Mult0|auto_generated|op_1~57\ = CARRY((\Mult0|auto_generated|op_2~45_combout\ & (!\Mult0|auto_generated|op_3~35_combout\ & !\Mult0|auto_generated|op_1~52\)) # (!\Mult0|auto_generated|op_2~45_combout\ & ((!\Mult0|auto_generated|op_1~52\) # 
-- (!\Mult0|auto_generated|op_3~35_combout\))))
-- \Mult0|auto_generated|op_1~57COUT1_169\ = CARRY((\Mult0|auto_generated|op_2~45_combout\ & (!\Mult0|auto_generated|op_3~35_combout\ & !\Mult0|auto_generated|op_1~52\)) # (!\Mult0|auto_generated|op_2~45_combout\ & ((!\Mult0|auto_generated|op_1~52\) # 
-- (!\Mult0|auto_generated|op_3~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~45_combout\,
	datab => \Mult0|auto_generated|op_3~35_combout\,
	cin => \Mult0|auto_generated|op_1~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~55_combout\,
	cout0 => \Mult0|auto_generated|op_1~57\,
	cout1 => \Mult0|auto_generated|op_1~57COUT1_169\);

-- Location: LC_X5_Y5_N7
\Mux4~2\ : maxii_lcell
-- Equation(s):
-- \Mux4~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\Mult0|auto_generated|op_1~55_combout\))) # (!\sel~combout\(1) & (\Add0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \Add0~55_combout\,
	datac => \sel~combout\(2),
	datad => \Mult0|auto_generated|op_1~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~2_combout\);

-- Location: LC_X1_Y4_N4
\Mux4~4\ : maxii_lcell
-- Equation(s):
-- \Mux4~4_combout\ = (\sel~combout\(0) & (\Mux4~7_combout\)) # (!\sel~combout\(0) & (((\Mux4~3_combout\) # (\Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~7_combout\,
	datab => \Mux4~3_combout\,
	datac => \sel~combout\(0),
	datad => \Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~4_combout\);

-- Location: LC_X1_Y4_N8
\Mux4~5\ : maxii_lcell
-- Equation(s):
-- \Mux4~5_combout\ = ((\sel~combout\(3) & (\Mux4~1_combout\)) # (!\sel~combout\(3) & ((\Mux4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux4~1_combout\,
	datac => \Mux4~4_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~5_combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(12),
	combout => \input2~combout\(12));

-- Location: LC_X4_Y4_N4
\Add1~60\ : maxii_lcell
-- Equation(s):
-- \Add1~60_combout\ = \input1~combout\(12) $ (\input2~combout\(12) $ (((!\Add1~37\ & \Add1~57\) # (\Add1~37\ & \Add1~57COUT1_90\))))
-- \Add1~62\ = CARRY((\input1~combout\(12) & ((!\Add1~57COUT1_90\) # (!\input2~combout\(12)))) # (!\input1~combout\(12) & (!\input2~combout\(12) & !\Add1~57COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(12),
	datab => \input2~combout\(12),
	cin => \Add1~37\,
	cin0 => \Add1~57\,
	cin1 => \Add1~57COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~60_combout\,
	cout => \Add1~62\);

-- Location: LC_X4_Y7_N8
\Mux3~6\ : maxii_lcell
-- Equation(s):
-- \Mux3~6_combout\ = (\sel~combout\(2) & (\input1~combout\(12) $ (((\sel~combout\(1)) # (\input2~combout\(12)))))) # (!\sel~combout\(2) & (((\input1~combout\(12) & \input2~combout\(12))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "674b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(12),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input2~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~6_combout\);

-- Location: LC_X4_Y7_N5
\Mux3~7\ : maxii_lcell
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~6_combout\ & ((\Add1~60_combout\) # ((\sel~combout\(2)) # (\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~60_combout\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \Mux3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~7_combout\);

-- Location: LC_X4_Y7_N7
\Mux3~3\ : maxii_lcell
-- Equation(s):
-- \Mux3~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input1~combout\(12)) # (\input2~combout\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(12),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input2~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~3_combout\);

-- Location: LC_X6_Y5_N9
\Mult0|auto_generated|le8a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(2) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) $ ((\input1~combout\(2))))) # (!\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) & ((!\input1~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(5),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \input1~combout\(2),
	datad => \input1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(2));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(13),
	combout => \input2~combout\(13));

-- Location: LC_X5_Y4_N6
\Mult0|auto_generated|cs2a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(6) = \input2~combout\(12) $ ((((!(!\Mult0|auto_generated|cs2a[4]~COUT\ & \Mult0|auto_generated|cs2a[5]~COUT\) # (\Mult0|auto_generated|cs2a[4]~COUT\ & \Mult0|auto_generated|cs2a[5]~COUTCOUT1_21\)))))
-- \Mult0|auto_generated|cs2a[6]~COUT\ = CARRY((\input2~combout\(13)) # ((\input2~combout\(12) & !\Mult0|auto_generated|cs2a[5]~COUT\)))
-- \Mult0|auto_generated|cs2a[6]~COUTCOUT1_22\ = CARRY((\input2~combout\(13)) # ((\input2~combout\(12) & !\Mult0|auto_generated|cs2a[5]~COUTCOUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(12),
	datab => \input2~combout\(13),
	cin => \Mult0|auto_generated|cs2a[4]~COUT\,
	cin0 => \Mult0|auto_generated|cs2a[5]~COUT\,
	cin1 => \Mult0|auto_generated|cs2a[5]~COUTCOUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(6),
	cout0 => \Mult0|auto_generated|cs2a[6]~COUT\,
	cout1 => \Mult0|auto_generated|cs2a[6]~COUTCOUT1_22\);

-- Location: LC_X6_Y4_N6
\Mult0|auto_generated|cs1a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(6) = \input2~combout\(13) $ (((\input2~combout\(12) & (!(!\Mult0|auto_generated|cs1a[4]~COUT\ & \Mult0|auto_generated|cs1a[5]~COUT\) # (\Mult0|auto_generated|cs1a[4]~COUT\ & \Mult0|auto_generated|cs1a[5]~COUTCOUT1_21\)))))
-- \Mult0|auto_generated|cs1a[6]~COUT\ = CARRY((\input2~combout\(13)) # ((\input2~combout\(12) & !\Mult0|auto_generated|cs1a[5]~COUT\)))
-- \Mult0|auto_generated|cs1a[6]~COUTCOUT1_22\ = CARRY((\input2~combout\(13)) # ((\input2~combout\(12) & !\Mult0|auto_generated|cs1a[5]~COUTCOUT1_21\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c6ce",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(12),
	datab => \input2~combout\(13),
	cin => \Mult0|auto_generated|cs1a[4]~COUT\,
	cin0 => \Mult0|auto_generated|cs1a[5]~COUT\,
	cin1 => \Mult0|auto_generated|cs1a[5]~COUTCOUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(6),
	cout0 => \Mult0|auto_generated|cs1a[6]~COUT\,
	cout1 => \Mult0|auto_generated|cs1a[6]~COUTCOUT1_22\);

-- Location: LC_X7_Y5_N1
\Mult0|auto_generated|le9a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(0) = LCELL((\Mult0|auto_generated|cs1a\(6) $ (((\Mult0|auto_generated|cs2a\(6) & \input1~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3fc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|cs2a\(6),
	datac => \input1~combout\(0),
	datad => \Mult0|auto_generated|cs1a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(0));

-- Location: LC_X7_Y5_N9
\Mult0|auto_generated|add24_result[6]~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[6]~30_combout\ = \Mult0|auto_generated|le8a\(2) $ (\Mult0|auto_generated|le9a\(0) $ ((!(!\Mult0|auto_generated|add24_result[1]~7\ & \Mult0|auto_generated|add24_result[5]~27\) # (\Mult0|auto_generated|add24_result[1]~7\ & 
-- \Mult0|auto_generated|add24_result[5]~27COUT1_125\))))
-- \Mult0|auto_generated|add24_result[6]~32\ = CARRY((\Mult0|auto_generated|le8a\(2) & ((\Mult0|auto_generated|le9a\(0)) # (!\Mult0|auto_generated|add24_result[5]~27COUT1_125\))) # (!\Mult0|auto_generated|le8a\(2) & (\Mult0|auto_generated|le9a\(0) & 
-- !\Mult0|auto_generated|add24_result[5]~27COUT1_125\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le8a\(2),
	datab => \Mult0|auto_generated|le9a\(0),
	cin => \Mult0|auto_generated|add24_result[1]~7\,
	cin0 => \Mult0|auto_generated|add24_result[5]~27\,
	cin1 => \Mult0|auto_generated|add24_result[5]~27COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[6]~30_combout\,
	cout => \Mult0|auto_generated|add24_result[6]~32\);

-- Location: LC_X12_Y3_N9
\Mult0|auto_generated|le6a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(6) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ (((\input1~combout\(6)))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & (!\input1~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(3),
	datab => \Mult0|auto_generated|cs1a\(3),
	datac => \input1~combout\(5),
	datad => \input1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(6));

-- Location: LC_X11_Y5_N9
\Mult0|auto_generated|le7a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(4) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ ((\input1~combout\(4))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & ((!\input1~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(4),
	datac => \input1~combout\(3),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(4));

-- Location: LC_X10_Y3_N5
\Mult0|auto_generated|add28_result[4]~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[4]~20_combout\ = \Mult0|auto_generated|le6a\(6) $ (\Mult0|auto_generated|le7a\(4) $ ((!\Mult0|auto_generated|add28_result[3]~17\)))
-- \Mult0|auto_generated|add28_result[4]~22\ = CARRY((\Mult0|auto_generated|le6a\(6) & ((\Mult0|auto_generated|le7a\(4)) # (!\Mult0|auto_generated|add28_result[3]~17\))) # (!\Mult0|auto_generated|le6a\(6) & (\Mult0|auto_generated|le7a\(4) & 
-- !\Mult0|auto_generated|add28_result[3]~17\)))
-- \Mult0|auto_generated|add28_result[4]~22COUT1_94\ = CARRY((\Mult0|auto_generated|le6a\(6) & ((\Mult0|auto_generated|le7a\(4)) # (!\Mult0|auto_generated|add28_result[3]~17\))) # (!\Mult0|auto_generated|le6a\(6) & (\Mult0|auto_generated|le7a\(4) & 
-- !\Mult0|auto_generated|add28_result[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(6),
	datab => \Mult0|auto_generated|le7a\(4),
	cin => \Mult0|auto_generated|add28_result[3]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[4]~20_combout\,
	cout0 => \Mult0|auto_generated|add28_result[4]~22\,
	cout1 => \Mult0|auto_generated|add28_result[4]~22COUT1_94\);

-- Location: LC_X8_Y6_N0
\Mult0|auto_generated|op_2~50\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~50_combout\ = \Mult0|auto_generated|add24_result[6]~30_combout\ $ (\Mult0|auto_generated|add28_result[4]~20_combout\ $ ((!\Mult0|auto_generated|op_2~47\)))
-- \Mult0|auto_generated|op_2~52\ = CARRY((\Mult0|auto_generated|add24_result[6]~30_combout\ & ((\Mult0|auto_generated|add28_result[4]~20_combout\) # (!\Mult0|auto_generated|op_2~47\))) # (!\Mult0|auto_generated|add24_result[6]~30_combout\ & 
-- (\Mult0|auto_generated|add28_result[4]~20_combout\ & !\Mult0|auto_generated|op_2~47\)))
-- \Mult0|auto_generated|op_2~52COUT1_159\ = CARRY((\Mult0|auto_generated|add24_result[6]~30_combout\ & ((\Mult0|auto_generated|add28_result[4]~20_combout\) # (!\Mult0|auto_generated|op_2~47\))) # (!\Mult0|auto_generated|add24_result[6]~30_combout\ & 
-- (\Mult0|auto_generated|add28_result[4]~20_combout\ & !\Mult0|auto_generated|op_2~47\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[6]~30_combout\,
	datab => \Mult0|auto_generated|add28_result[4]~20_combout\,
	cin => \Mult0|auto_generated|op_2~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~50_combout\,
	cout0 => \Mult0|auto_generated|op_2~52\,
	cout1 => \Mult0|auto_generated|op_2~52COUT1_159\);

-- Location: LC_X12_Y2_N6
\Mult0|auto_generated|le3a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(12) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ ((\input1~combout\(12))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & ((!\input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(0),
	datab => \input1~combout\(12),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(12));

-- Location: LC_X11_Y6_N2
\Mult0|auto_generated|add36_result[0]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[0]~0_combout\ = \Mult0|auto_generated|cs1a\(6) $ ((\Mult0|auto_generated|le3a\(12)))
-- \Mult0|auto_generated|add36_result[0]~2\ = CARRY((\Mult0|auto_generated|cs1a\(6) & (\Mult0|auto_generated|le3a\(12))))
-- \Mult0|auto_generated|add36_result[0]~2COUT1_81\ = CARRY((\Mult0|auto_generated|cs1a\(6) & (\Mult0|auto_generated|le3a\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(6),
	datab => \Mult0|auto_generated|le3a\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[0]~0_combout\,
	cout0 => \Mult0|auto_generated|add36_result[0]~2\,
	cout1 => \Mult0|auto_generated|add36_result[0]~2COUT1_81\);

-- Location: LC_X10_Y4_N0
\Mult0|auto_generated|le5a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(8) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) $ (((\input1~combout\(8)))))) # (!\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) & (!\input1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(2),
	datab => \input1~combout\(7),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(8));

-- Location: LC_X10_Y4_N6
\Mult0|auto_generated|le4a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(10) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ (((\input1~combout\(10)))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & (!\input1~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(1),
	datab => \input1~combout\(9),
	datac => \input1~combout\(10),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(10));

-- Location: LC_X11_Y4_N5
\Mult0|auto_generated|add32_result[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[2]~10_combout\ = \Mult0|auto_generated|le5a\(8) $ (\Mult0|auto_generated|le4a\(10) $ ((!\Mult0|auto_generated|add32_result[1]~7\)))
-- \Mult0|auto_generated|add32_result[2]~12\ = CARRY((\Mult0|auto_generated|le5a\(8) & ((\Mult0|auto_generated|le4a\(10)) # (!\Mult0|auto_generated|add32_result[1]~7\))) # (!\Mult0|auto_generated|le5a\(8) & (\Mult0|auto_generated|le4a\(10) & 
-- !\Mult0|auto_generated|add32_result[1]~7\)))
-- \Mult0|auto_generated|add32_result[2]~12COUT1_72\ = CARRY((\Mult0|auto_generated|le5a\(8) & ((\Mult0|auto_generated|le4a\(10)) # (!\Mult0|auto_generated|add32_result[1]~7\))) # (!\Mult0|auto_generated|le5a\(8) & (\Mult0|auto_generated|le4a\(10) & 
-- !\Mult0|auto_generated|add32_result[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(8),
	datab => \Mult0|auto_generated|le4a\(10),
	cin => \Mult0|auto_generated|add32_result[1]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[2]~10_combout\,
	cout0 => \Mult0|auto_generated|add32_result[2]~12\,
	cout1 => \Mult0|auto_generated|add32_result[2]~12COUT1_72\);

-- Location: LC_X10_Y7_N9
\Mult0|auto_generated|op_3~40\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~40_combout\ = \Mult0|auto_generated|add36_result[0]~0_combout\ $ (\Mult0|auto_generated|add32_result[2]~10_combout\ $ ((!(!\Mult0|auto_generated|op_3~17\ & \Mult0|auto_generated|op_3~37\) # (\Mult0|auto_generated|op_3~17\ & 
-- \Mult0|auto_generated|op_3~37COUT1_147\))))
-- \Mult0|auto_generated|op_3~42\ = CARRY((\Mult0|auto_generated|add36_result[0]~0_combout\ & ((\Mult0|auto_generated|add32_result[2]~10_combout\) # (!\Mult0|auto_generated|op_3~37COUT1_147\))) # (!\Mult0|auto_generated|add36_result[0]~0_combout\ & 
-- (\Mult0|auto_generated|add32_result[2]~10_combout\ & !\Mult0|auto_generated|op_3~37COUT1_147\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[0]~0_combout\,
	datab => \Mult0|auto_generated|add32_result[2]~10_combout\,
	cin => \Mult0|auto_generated|op_3~17\,
	cin0 => \Mult0|auto_generated|op_3~37\,
	cin1 => \Mult0|auto_generated|op_3~37COUT1_147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~40_combout\,
	cout => \Mult0|auto_generated|op_3~42\);

-- Location: LC_X7_Y7_N6
\Mult0|auto_generated|op_1~60\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~60_combout\ = \Mult0|auto_generated|op_2~50_combout\ $ (\Mult0|auto_generated|op_3~40_combout\ $ ((!(!\Mult0|auto_generated|op_1~52\ & \Mult0|auto_generated|op_1~57\) # (\Mult0|auto_generated|op_1~52\ & 
-- \Mult0|auto_generated|op_1~57COUT1_169\))))
-- \Mult0|auto_generated|op_1~62\ = CARRY((\Mult0|auto_generated|op_2~50_combout\ & ((\Mult0|auto_generated|op_3~40_combout\) # (!\Mult0|auto_generated|op_1~57\))) # (!\Mult0|auto_generated|op_2~50_combout\ & (\Mult0|auto_generated|op_3~40_combout\ & 
-- !\Mult0|auto_generated|op_1~57\)))
-- \Mult0|auto_generated|op_1~62COUT1_170\ = CARRY((\Mult0|auto_generated|op_2~50_combout\ & ((\Mult0|auto_generated|op_3~40_combout\) # (!\Mult0|auto_generated|op_1~57COUT1_169\))) # (!\Mult0|auto_generated|op_2~50_combout\ & 
-- (\Mult0|auto_generated|op_3~40_combout\ & !\Mult0|auto_generated|op_1~57COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~50_combout\,
	datab => \Mult0|auto_generated|op_3~40_combout\,
	cin => \Mult0|auto_generated|op_1~52\,
	cin0 => \Mult0|auto_generated|op_1~57\,
	cin1 => \Mult0|auto_generated|op_1~57COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~60_combout\,
	cout0 => \Mult0|auto_generated|op_1~62\,
	cout1 => \Mult0|auto_generated|op_1~62COUT1_170\);

-- Location: LC_X4_Y5_N4
\Add0~60\ : maxii_lcell
-- Equation(s):
-- \Add0~60_combout\ = \input2~combout\(12) $ (\input1~combout\(12) $ ((!(!\Add0~37\ & \Add0~57\) # (\Add0~37\ & \Add0~57COUT1_95\))))
-- \Add0~62\ = CARRY((\input2~combout\(12) & ((\input1~combout\(12)) # (!\Add0~57COUT1_95\))) # (!\input2~combout\(12) & (\input1~combout\(12) & !\Add0~57COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(12),
	datab => \input1~combout\(12),
	cin => \Add0~37\,
	cin0 => \Add0~57\,
	cin1 => \Add0~57COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout => \Add0~62\);

-- Location: LC_X4_Y7_N3
\Mux3~2\ : maxii_lcell
-- Equation(s):
-- \Mux3~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & (\Mult0|auto_generated|op_1~60_combout\)) # (!\sel~combout\(1) & ((\Add0~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~60_combout\,
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~2_combout\);

-- Location: LC_X4_Y7_N4
\Mux3~4\ : maxii_lcell
-- Equation(s):
-- \Mux3~4_combout\ = (\sel~combout\(0) & (\Mux3~7_combout\)) # (!\sel~combout\(0) & (((\Mux3~3_combout\) # (\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Mux3~3_combout\,
	datac => \sel~combout\(0),
	datad => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~4_combout\);

-- Location: LC_X1_Y6_N1
\Mux3~0\ : maxii_lcell
-- Equation(s):
-- \Mux3~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & ((\Mux15~16_combout\))) # (!\sel~combout\(1) & (\Mux15~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \Mux15~17_combout\,
	datac => \Mux15~16_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~0_combout\);

-- Location: LC_X1_Y7_N9
\Mux3~1\ : maxii_lcell
-- Equation(s):
-- \Mux3~1_combout\ = (\sel~combout\(0) & ((\Mux3~0_combout\ & (\Mux15~12_combout\)) # (!\Mux3~0_combout\ & ((\Mux15~15_combout\))))) # (!\sel~combout\(0) & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bcb0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~12_combout\,
	datab => \sel~combout\(0),
	datac => \Mux3~0_combout\,
	datad => \Mux15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~1_combout\);

-- Location: LC_X4_Y7_N1
\Mux3~5\ : maxii_lcell
-- Equation(s):
-- \Mux3~5_combout\ = ((\sel~combout\(3) & ((\Mux3~1_combout\))) # (!\sel~combout\(3) & (\Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~4_combout\,
	datac => \sel~combout\(3),
	datad => \Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux3~5_combout\);

-- Location: LC_X4_Y5_N5
\Add0~65\ : maxii_lcell
-- Equation(s):
-- \Add0~65_combout\ = \input1~combout\(13) $ (\input2~combout\(13) $ ((\Add0~62\)))
-- \Add0~67\ = CARRY((\input1~combout\(13) & (!\input2~combout\(13) & !\Add0~62\)) # (!\input1~combout\(13) & ((!\Add0~62\) # (!\input2~combout\(13)))))
-- \Add0~67COUT1_96\ = CARRY((\input1~combout\(13) & (!\input2~combout\(13) & !\Add0~62\)) # (!\input1~combout\(13) & ((!\Add0~62\) # (!\input2~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(13),
	datab => \input2~combout\(13),
	cin => \Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_96\);

-- Location: LC_X5_Y6_N9
\Mult0|auto_generated|le3a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(13) = LCELL((\Mult0|auto_generated|cs2a\(0) & ((\Mult0|auto_generated|cs1a\(0) $ (\input1~combout\(13))))) # (!\Mult0|auto_generated|cs2a\(0) & (!\input1~combout\(12) & (\Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(12),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(13));

-- Location: LC_X11_Y6_N3
\Mult0|auto_generated|add36_result[1]~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[1]~5_combout\ = (\Mult0|auto_generated|le3a\(13) $ ((\Mult0|auto_generated|add36_result[0]~2\)))
-- \Mult0|auto_generated|add36_result[1]~7\ = CARRY(((!\Mult0|auto_generated|add36_result[0]~2\) # (!\Mult0|auto_generated|le3a\(13))))
-- \Mult0|auto_generated|add36_result[1]~7COUT1_82\ = CARRY(((!\Mult0|auto_generated|add36_result[0]~2COUT1_81\) # (!\Mult0|auto_generated|le3a\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|le3a\(13),
	cin0 => \Mult0|auto_generated|add36_result[0]~2\,
	cin1 => \Mult0|auto_generated|add36_result[0]~2COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[1]~5_combout\,
	cout0 => \Mult0|auto_generated|add36_result[1]~7\,
	cout1 => \Mult0|auto_generated|add36_result[1]~7COUT1_82\);

-- Location: LC_X9_Y4_N4
\Mult0|auto_generated|le5a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(9) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\input1~combout\(9) $ (((\Mult0|auto_generated|cs1a\(2)))))) # (!\Mult0|auto_generated|cs2a\(2) & (((!\input1~combout\(8) & \Mult0|auto_generated|cs1a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(9),
	datab => \input1~combout\(8),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(9));

-- Location: LC_X10_Y4_N4
\Mult0|auto_generated|le4a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(11) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ ((\input1~combout\(11))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & ((!\input1~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(1),
	datab => \input1~combout\(11),
	datac => \input1~combout\(10),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(11));

-- Location: LC_X11_Y4_N6
\Mult0|auto_generated|add32_result[3]~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[3]~15_combout\ = \Mult0|auto_generated|le5a\(9) $ (\Mult0|auto_generated|le4a\(11) $ (((!\Mult0|auto_generated|add32_result[1]~7\ & \Mult0|auto_generated|add32_result[2]~12\) # (\Mult0|auto_generated|add32_result[1]~7\ & 
-- \Mult0|auto_generated|add32_result[2]~12COUT1_72\))))
-- \Mult0|auto_generated|add32_result[3]~17\ = CARRY((\Mult0|auto_generated|le5a\(9) & (!\Mult0|auto_generated|le4a\(11) & !\Mult0|auto_generated|add32_result[2]~12\)) # (!\Mult0|auto_generated|le5a\(9) & ((!\Mult0|auto_generated|add32_result[2]~12\) # 
-- (!\Mult0|auto_generated|le4a\(11)))))
-- \Mult0|auto_generated|add32_result[3]~17COUT1_73\ = CARRY((\Mult0|auto_generated|le5a\(9) & (!\Mult0|auto_generated|le4a\(11) & !\Mult0|auto_generated|add32_result[2]~12COUT1_72\)) # (!\Mult0|auto_generated|le5a\(9) & 
-- ((!\Mult0|auto_generated|add32_result[2]~12COUT1_72\) # (!\Mult0|auto_generated|le4a\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(9),
	datab => \Mult0|auto_generated|le4a\(11),
	cin => \Mult0|auto_generated|add32_result[1]~7\,
	cin0 => \Mult0|auto_generated|add32_result[2]~12\,
	cin1 => \Mult0|auto_generated|add32_result[2]~12COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[3]~15_combout\,
	cout0 => \Mult0|auto_generated|add32_result[3]~17\,
	cout1 => \Mult0|auto_generated|add32_result[3]~17COUT1_73\);

-- Location: LC_X11_Y7_N0
\Mult0|auto_generated|op_3~45\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~45_combout\ = \Mult0|auto_generated|add36_result[1]~5_combout\ $ (\Mult0|auto_generated|add32_result[3]~15_combout\ $ ((\Mult0|auto_generated|op_3~42\)))
-- \Mult0|auto_generated|op_3~47\ = CARRY((\Mult0|auto_generated|add36_result[1]~5_combout\ & (!\Mult0|auto_generated|add32_result[3]~15_combout\ & !\Mult0|auto_generated|op_3~42\)) # (!\Mult0|auto_generated|add36_result[1]~5_combout\ & 
-- ((!\Mult0|auto_generated|op_3~42\) # (!\Mult0|auto_generated|add32_result[3]~15_combout\))))
-- \Mult0|auto_generated|op_3~47COUT1_148\ = CARRY((\Mult0|auto_generated|add36_result[1]~5_combout\ & (!\Mult0|auto_generated|add32_result[3]~15_combout\ & !\Mult0|auto_generated|op_3~42\)) # (!\Mult0|auto_generated|add36_result[1]~5_combout\ & 
-- ((!\Mult0|auto_generated|op_3~42\) # (!\Mult0|auto_generated|add32_result[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[1]~5_combout\,
	datab => \Mult0|auto_generated|add32_result[3]~15_combout\,
	cin => \Mult0|auto_generated|op_3~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~45_combout\,
	cout0 => \Mult0|auto_generated|op_3~47\,
	cout1 => \Mult0|auto_generated|op_3~47COUT1_148\);

-- Location: LC_X11_Y5_N4
\Mult0|auto_generated|le9a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(1) = LCELL((\Mult0|auto_generated|cs2a\(6) & ((\Mult0|auto_generated|cs1a\(6) $ (\input1~combout\(1))))) # (!\Mult0|auto_generated|cs2a\(6) & (!\input1~combout\(0) & (\Mult0|auto_generated|cs1a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(0),
	datab => \Mult0|auto_generated|cs2a\(6),
	datac => \Mult0|auto_generated|cs1a\(6),
	datad => \input1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(1));

-- Location: LC_X6_Y5_N3
\Mult0|auto_generated|le8a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(3) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) $ (((\input1~combout\(3)))))) # (!\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) & (!\input1~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(5),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \input1~combout\(2),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(3));

-- Location: LC_X8_Y5_N0
\Mult0|auto_generated|add24_result[7]~35\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[7]~35_combout\ = \Mult0|auto_generated|le9a\(1) $ (\Mult0|auto_generated|le8a\(3) $ ((\Mult0|auto_generated|add24_result[6]~32\)))
-- \Mult0|auto_generated|add24_result[7]~37\ = CARRY((\Mult0|auto_generated|le9a\(1) & (!\Mult0|auto_generated|le8a\(3) & !\Mult0|auto_generated|add24_result[6]~32\)) # (!\Mult0|auto_generated|le9a\(1) & ((!\Mult0|auto_generated|add24_result[6]~32\) # 
-- (!\Mult0|auto_generated|le8a\(3)))))
-- \Mult0|auto_generated|add24_result[7]~37COUT1_126\ = CARRY((\Mult0|auto_generated|le9a\(1) & (!\Mult0|auto_generated|le8a\(3) & !\Mult0|auto_generated|add24_result[6]~32\)) # (!\Mult0|auto_generated|le9a\(1) & ((!\Mult0|auto_generated|add24_result[6]~32\) 
-- # (!\Mult0|auto_generated|le8a\(3)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(1),
	datab => \Mult0|auto_generated|le8a\(3),
	cin => \Mult0|auto_generated|add24_result[6]~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[7]~35_combout\,
	cout0 => \Mult0|auto_generated|add24_result[7]~37\,
	cout1 => \Mult0|auto_generated|add24_result[7]~37COUT1_126\);

-- Location: LC_X10_Y4_N1
\Mult0|auto_generated|le6a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(7) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ ((\input1~combout\(7))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & ((!\input1~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \input1~combout\(7),
	datac => \input1~combout\(6),
	datad => \Mult0|auto_generated|cs2a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(7));

-- Location: LC_X10_Y3_N0
\Mult0|auto_generated|le7a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(5) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\input1~combout\(5) $ (((\Mult0|auto_generated|cs1a\(4)))))) # (!\Mult0|auto_generated|cs2a\(4) & (((!\input1~combout\(4) & \Mult0|auto_generated|cs1a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(5),
	datab => \input1~combout\(4),
	datac => \Mult0|auto_generated|cs1a\(4),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(5));

-- Location: LC_X10_Y3_N6
\Mult0|auto_generated|add28_result[5]~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[5]~25_combout\ = \Mult0|auto_generated|le6a\(7) $ (\Mult0|auto_generated|le7a\(5) $ (((!\Mult0|auto_generated|add28_result[3]~17\ & \Mult0|auto_generated|add28_result[4]~22\) # (\Mult0|auto_generated|add28_result[3]~17\ 
-- & \Mult0|auto_generated|add28_result[4]~22COUT1_94\))))
-- \Mult0|auto_generated|add28_result[5]~27\ = CARRY((\Mult0|auto_generated|le6a\(7) & (!\Mult0|auto_generated|le7a\(5) & !\Mult0|auto_generated|add28_result[4]~22\)) # (!\Mult0|auto_generated|le6a\(7) & ((!\Mult0|auto_generated|add28_result[4]~22\) # 
-- (!\Mult0|auto_generated|le7a\(5)))))
-- \Mult0|auto_generated|add28_result[5]~27COUT1_95\ = CARRY((\Mult0|auto_generated|le6a\(7) & (!\Mult0|auto_generated|le7a\(5) & !\Mult0|auto_generated|add28_result[4]~22COUT1_94\)) # (!\Mult0|auto_generated|le6a\(7) & 
-- ((!\Mult0|auto_generated|add28_result[4]~22COUT1_94\) # (!\Mult0|auto_generated|le7a\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(7),
	datab => \Mult0|auto_generated|le7a\(5),
	cin => \Mult0|auto_generated|add28_result[3]~17\,
	cin0 => \Mult0|auto_generated|add28_result[4]~22\,
	cin1 => \Mult0|auto_generated|add28_result[4]~22COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[5]~25_combout\,
	cout0 => \Mult0|auto_generated|add28_result[5]~27\,
	cout1 => \Mult0|auto_generated|add28_result[5]~27COUT1_95\);

-- Location: LC_X8_Y6_N1
\Mult0|auto_generated|op_2~55\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~55_combout\ = \Mult0|auto_generated|add24_result[7]~35_combout\ $ (\Mult0|auto_generated|add28_result[5]~25_combout\ $ (((!\Mult0|auto_generated|op_2~47\ & \Mult0|auto_generated|op_2~52\) # (\Mult0|auto_generated|op_2~47\ & 
-- \Mult0|auto_generated|op_2~52COUT1_159\))))
-- \Mult0|auto_generated|op_2~57\ = CARRY((\Mult0|auto_generated|add24_result[7]~35_combout\ & (!\Mult0|auto_generated|add28_result[5]~25_combout\ & !\Mult0|auto_generated|op_2~52\)) # (!\Mult0|auto_generated|add24_result[7]~35_combout\ & 
-- ((!\Mult0|auto_generated|op_2~52\) # (!\Mult0|auto_generated|add28_result[5]~25_combout\))))
-- \Mult0|auto_generated|op_2~57COUT1_160\ = CARRY((\Mult0|auto_generated|add24_result[7]~35_combout\ & (!\Mult0|auto_generated|add28_result[5]~25_combout\ & !\Mult0|auto_generated|op_2~52COUT1_159\)) # (!\Mult0|auto_generated|add24_result[7]~35_combout\ & 
-- ((!\Mult0|auto_generated|op_2~52COUT1_159\) # (!\Mult0|auto_generated|add28_result[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[7]~35_combout\,
	datab => \Mult0|auto_generated|add28_result[5]~25_combout\,
	cin => \Mult0|auto_generated|op_2~47\,
	cin0 => \Mult0|auto_generated|op_2~52\,
	cin1 => \Mult0|auto_generated|op_2~52COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~55_combout\,
	cout0 => \Mult0|auto_generated|op_2~57\,
	cout1 => \Mult0|auto_generated|op_2~57COUT1_160\);

-- Location: LC_X7_Y7_N7
\Mult0|auto_generated|op_1~65\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~65_combout\ = \Mult0|auto_generated|op_3~45_combout\ $ (\Mult0|auto_generated|op_2~55_combout\ $ (((!\Mult0|auto_generated|op_1~52\ & \Mult0|auto_generated|op_1~62\) # (\Mult0|auto_generated|op_1~52\ & 
-- \Mult0|auto_generated|op_1~62COUT1_170\))))
-- \Mult0|auto_generated|op_1~67\ = CARRY((\Mult0|auto_generated|op_3~45_combout\ & (!\Mult0|auto_generated|op_2~55_combout\ & !\Mult0|auto_generated|op_1~62\)) # (!\Mult0|auto_generated|op_3~45_combout\ & ((!\Mult0|auto_generated|op_1~62\) # 
-- (!\Mult0|auto_generated|op_2~55_combout\))))
-- \Mult0|auto_generated|op_1~67COUT1_171\ = CARRY((\Mult0|auto_generated|op_3~45_combout\ & (!\Mult0|auto_generated|op_2~55_combout\ & !\Mult0|auto_generated|op_1~62COUT1_170\)) # (!\Mult0|auto_generated|op_3~45_combout\ & 
-- ((!\Mult0|auto_generated|op_1~62COUT1_170\) # (!\Mult0|auto_generated|op_2~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~45_combout\,
	datab => \Mult0|auto_generated|op_2~55_combout\,
	cin => \Mult0|auto_generated|op_1~52\,
	cin0 => \Mult0|auto_generated|op_1~62\,
	cin1 => \Mult0|auto_generated|op_1~62COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~65_combout\,
	cout0 => \Mult0|auto_generated|op_1~67\,
	cout1 => \Mult0|auto_generated|op_1~67COUT1_171\);

-- Location: LC_X5_Y6_N6
\Mux2~2\ : maxii_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\Mult0|auto_generated|op_1~65_combout\))) # (!\sel~combout\(1) & (\Add0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \Mult0|auto_generated|op_1~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: LC_X5_Y6_N4
\Mux2~3\ : maxii_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(13)) # (\input1~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3060",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(13),
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X4_Y4_N5
\Add1~65\ : maxii_lcell
-- Equation(s):
-- \Add1~65_combout\ = \input2~combout\(13) $ (\input1~combout\(13) $ ((!\Add1~62\)))
-- \Add1~67\ = CARRY((\input2~combout\(13) & ((!\Add1~62\) # (!\input1~combout\(13)))) # (!\input2~combout\(13) & (!\input1~combout\(13) & !\Add1~62\)))
-- \Add1~67COUT1_91\ = CARRY((\input2~combout\(13) & ((!\Add1~62\) # (!\input1~combout\(13)))) # (!\input2~combout\(13) & (!\input1~combout\(13) & !\Add1~62\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(13),
	datab => \input1~combout\(13),
	cin => \Add1~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~65_combout\,
	cout0 => \Add1~67\,
	cout1 => \Add1~67COUT1_91\);

-- Location: LC_X5_Y6_N3
\Mux2~6\ : maxii_lcell
-- Equation(s):
-- \Mux2~6_combout\ = (\sel~combout\(2) & (\input1~combout\(13) $ (((\input2~combout\(13)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(13) & \input1~combout\(13))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1be3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(13),
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~6_combout\);

-- Location: LC_X5_Y6_N2
\Mux2~7\ : maxii_lcell
-- Equation(s):
-- \Mux2~7_combout\ = (\Mux2~6_combout\ & ((\Add1~65_combout\) # ((\sel~combout\(1)) # (\sel~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~65_combout\,
	datab => \sel~combout\(1),
	datac => \sel~combout\(2),
	datad => \Mux2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~7_combout\);

-- Location: LC_X5_Y6_N5
\Mux2~4\ : maxii_lcell
-- Equation(s):
-- \Mux2~4_combout\ = (\sel~combout\(0) & (((\Mux2~7_combout\)))) # (!\sel~combout\(0) & ((\Mux2~2_combout\) # ((\Mux2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe0e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~2_combout\,
	datab => \Mux2~3_combout\,
	datac => \sel~combout\(0),
	datad => \Mux2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~4_combout\);

-- Location: LC_X2_Y6_N2
\Mux2~0\ : maxii_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & (\Mux15~19_combout\)) # (!\sel~combout\(1) & ((\Mux15~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e5e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \Mux15~19_combout\,
	datac => \sel~combout\(1),
	datad => \Mux15~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: LC_X2_Y6_N3
\Mux2~1\ : maxii_lcell
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux2~0_combout\ & ((\Mux15~8_combout\) # ((!\sel~combout\(0))))) # (!\Mux2~0_combout\ & (((\sel~combout\(0) & \Mux15~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bc8c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~8_combout\,
	datab => \Mux2~0_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X2_Y6_N4
\Mux2~5\ : maxii_lcell
-- Equation(s):
-- \Mux2~5_combout\ = (\sel~combout\(3) & (((\Mux2~1_combout\)))) # (!\sel~combout\(3) & (((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(3),
	datac => \Mux2~4_combout\,
	datad => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~5_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(14),
	combout => \input2~combout\(14));

-- Location: LC_X4_Y4_N6
\Add1~70\ : maxii_lcell
-- Equation(s):
-- \Add1~70_combout\ = \input2~combout\(14) $ (\input1~combout\(14) $ (((!\Add1~62\ & \Add1~67\) # (\Add1~62\ & \Add1~67COUT1_91\))))
-- \Add1~72\ = CARRY((\input2~combout\(14) & (\input1~combout\(14) & !\Add1~67\)) # (!\input2~combout\(14) & ((\input1~combout\(14)) # (!\Add1~67\))))
-- \Add1~72COUT1_92\ = CARRY((\input2~combout\(14) & (\input1~combout\(14) & !\Add1~67COUT1_91\)) # (!\input2~combout\(14) & ((\input1~combout\(14)) # (!\Add1~67COUT1_91\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(14),
	datab => \input1~combout\(14),
	cin => \Add1~62\,
	cin0 => \Add1~67\,
	cin1 => \Add1~67COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~70_combout\,
	cout0 => \Add1~72\,
	cout1 => \Add1~72COUT1_92\);

-- Location: LC_X2_Y5_N7
\Mux1~6\ : maxii_lcell
-- Equation(s):
-- \Mux1~6_combout\ = (\sel~combout\(2) & (\input1~combout\(14) $ (((\input2~combout\(14)) # (\sel~combout\(1)))))) # (!\sel~combout\(2) & (((\input2~combout\(14) & \input1~combout\(14))) # (!\sel~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "27cb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(14),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~6_combout\);

-- Location: LC_X2_Y5_N8
\Mux1~7\ : maxii_lcell
-- Equation(s):
-- \Mux1~7_combout\ = (\Mux1~6_combout\ & ((\Add1~70_combout\) # ((\sel~combout\(2)) # (\sel~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~70_combout\,
	datab => \sel~combout\(2),
	datac => \Mux1~6_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~7_combout\);

-- Location: LC_X2_Y5_N4
\Mux1~3\ : maxii_lcell
-- Equation(s):
-- \Mux1~3_combout\ = (\sel~combout\(2) & (\sel~combout\(1) $ (((\input2~combout\(14)) # (\input1~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(14),
	datab => \sel~combout\(2),
	datac => \sel~combout\(1),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: LC_X4_Y5_N6
\Add0~70\ : maxii_lcell
-- Equation(s):
-- \Add0~70_combout\ = \input2~combout\(14) $ (\input1~combout\(14) $ ((!(!\Add0~62\ & \Add0~67\) # (\Add0~62\ & \Add0~67COUT1_96\))))
-- \Add0~72\ = CARRY((\input2~combout\(14) & ((\input1~combout\(14)) # (!\Add0~67\))) # (!\input2~combout\(14) & (\input1~combout\(14) & !\Add0~67\)))
-- \Add0~72COUT1_97\ = CARRY((\input2~combout\(14) & ((\input1~combout\(14)) # (!\Add0~67COUT1_96\))) # (!\input2~combout\(14) & (\input1~combout\(14) & !\Add0~67COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(14),
	datab => \input1~combout\(14),
	cin => \Add0~62\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_97\);

-- Location: LC_X5_Y4_N7
\Mult0|auto_generated|cs2a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs2a\(7) = (((!\Mult0|auto_generated|cs2a[4]~COUT\ & \Mult0|auto_generated|cs2a[6]~COUT\) # (\Mult0|auto_generated|cs2a[4]~COUT\ & \Mult0|auto_generated|cs2a[6]~COUTCOUT1_22\) $ (\input2~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \input2~combout\(14),
	cin => \Mult0|auto_generated|cs2a[4]~COUT\,
	cin0 => \Mult0|auto_generated|cs2a[6]~COUT\,
	cin1 => \Mult0|auto_generated|cs2a[6]~COUTCOUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs2a\(7));

-- Location: LC_X9_Y4_N1
\Mult0|auto_generated|le10a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(0) = LCELL((((\Mult0|auto_generated|cs2a\(7) & \input1~combout\(0)))))

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
	datac => \Mult0|auto_generated|cs2a\(7),
	datad => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(0));

-- Location: LC_X10_Y5_N3
\Mult0|auto_generated|le9a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(2) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) $ (((\input1~combout\(2)))))) # (!\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) & (!\input1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(6),
	datab => \input1~combout\(1),
	datac => \input1~combout\(2),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(2));

-- Location: LC_X8_Y5_N1
\Mult0|auto_generated|add24_result[8]~40\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[8]~40_combout\ = \Mult0|auto_generated|le10a\(0) $ (\Mult0|auto_generated|le9a\(2) $ ((!(!\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[7]~37\) # 
-- (\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[7]~37COUT1_126\))))
-- \Mult0|auto_generated|add24_result[8]~42\ = CARRY((\Mult0|auto_generated|le10a\(0) & ((\Mult0|auto_generated|le9a\(2)) # (!\Mult0|auto_generated|add24_result[7]~37\))) # (!\Mult0|auto_generated|le10a\(0) & (\Mult0|auto_generated|le9a\(2) & 
-- !\Mult0|auto_generated|add24_result[7]~37\)))
-- \Mult0|auto_generated|add24_result[8]~42COUT1_127\ = CARRY((\Mult0|auto_generated|le10a\(0) & ((\Mult0|auto_generated|le9a\(2)) # (!\Mult0|auto_generated|add24_result[7]~37COUT1_126\))) # (!\Mult0|auto_generated|le10a\(0) & (\Mult0|auto_generated|le9a\(2) 
-- & !\Mult0|auto_generated|add24_result[7]~37COUT1_126\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(0),
	datab => \Mult0|auto_generated|le9a\(2),
	cin => \Mult0|auto_generated|add24_result[6]~32\,
	cin0 => \Mult0|auto_generated|add24_result[7]~37\,
	cin1 => \Mult0|auto_generated|add24_result[7]~37COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[8]~40_combout\,
	cout0 => \Mult0|auto_generated|add24_result[8]~42\,
	cout1 => \Mult0|auto_generated|add24_result[8]~42COUT1_127\);

-- Location: LC_X11_Y4_N1
\Mult0|auto_generated|le8a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(4) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) $ ((\input1~combout\(4))))) # (!\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) & ((!\input1~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(5),
	datab => \input1~combout\(4),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(4));

-- Location: LC_X12_Y3_N8
\Mult0|auto_generated|le7a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(6) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ ((\input1~combout\(6))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & ((!\input1~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(6),
	datac => \input1~combout\(5),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(6));

-- Location: LC_X10_Y3_N7
\Mult0|auto_generated|add28_result[6]~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[6]~30_combout\ = \Mult0|auto_generated|le8a\(4) $ (\Mult0|auto_generated|le7a\(6) $ ((!(!\Mult0|auto_generated|add28_result[3]~17\ & \Mult0|auto_generated|add28_result[5]~27\) # (\Mult0|auto_generated|add28_result[3]~17\ 
-- & \Mult0|auto_generated|add28_result[5]~27COUT1_95\))))
-- \Mult0|auto_generated|add28_result[6]~32\ = CARRY((\Mult0|auto_generated|le8a\(4) & ((\Mult0|auto_generated|le7a\(6)) # (!\Mult0|auto_generated|add28_result[5]~27\))) # (!\Mult0|auto_generated|le8a\(4) & (\Mult0|auto_generated|le7a\(6) & 
-- !\Mult0|auto_generated|add28_result[5]~27\)))
-- \Mult0|auto_generated|add28_result[6]~32COUT1_96\ = CARRY((\Mult0|auto_generated|le8a\(4) & ((\Mult0|auto_generated|le7a\(6)) # (!\Mult0|auto_generated|add28_result[5]~27COUT1_95\))) # (!\Mult0|auto_generated|le8a\(4) & (\Mult0|auto_generated|le7a\(6) & 
-- !\Mult0|auto_generated|add28_result[5]~27COUT1_95\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le8a\(4),
	datab => \Mult0|auto_generated|le7a\(6),
	cin => \Mult0|auto_generated|add28_result[3]~17\,
	cin0 => \Mult0|auto_generated|add28_result[5]~27\,
	cin1 => \Mult0|auto_generated|add28_result[5]~27COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[6]~30_combout\,
	cout0 => \Mult0|auto_generated|add28_result[6]~32\,
	cout1 => \Mult0|auto_generated|add28_result[6]~32COUT1_96\);

-- Location: LC_X8_Y6_N2
\Mult0|auto_generated|op_2~60\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~60_combout\ = \Mult0|auto_generated|add24_result[8]~40_combout\ $ (\Mult0|auto_generated|add28_result[6]~30_combout\ $ ((!(!\Mult0|auto_generated|op_2~47\ & \Mult0|auto_generated|op_2~57\) # (\Mult0|auto_generated|op_2~47\ & 
-- \Mult0|auto_generated|op_2~57COUT1_160\))))
-- \Mult0|auto_generated|op_2~62\ = CARRY((\Mult0|auto_generated|add24_result[8]~40_combout\ & ((\Mult0|auto_generated|add28_result[6]~30_combout\) # (!\Mult0|auto_generated|op_2~57\))) # (!\Mult0|auto_generated|add24_result[8]~40_combout\ & 
-- (\Mult0|auto_generated|add28_result[6]~30_combout\ & !\Mult0|auto_generated|op_2~57\)))
-- \Mult0|auto_generated|op_2~62COUT1_161\ = CARRY((\Mult0|auto_generated|add24_result[8]~40_combout\ & ((\Mult0|auto_generated|add28_result[6]~30_combout\) # (!\Mult0|auto_generated|op_2~57COUT1_160\))) # (!\Mult0|auto_generated|add24_result[8]~40_combout\ 
-- & (\Mult0|auto_generated|add28_result[6]~30_combout\ & !\Mult0|auto_generated|op_2~57COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[8]~40_combout\,
	datab => \Mult0|auto_generated|add28_result[6]~30_combout\,
	cin => \Mult0|auto_generated|op_2~47\,
	cin0 => \Mult0|auto_generated|op_2~57\,
	cin1 => \Mult0|auto_generated|op_2~57COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~60_combout\,
	cout0 => \Mult0|auto_generated|op_2~62\,
	cout1 => \Mult0|auto_generated|op_2~62COUT1_161\);

-- Location: LC_X10_Y4_N9
\Mult0|auto_generated|le6a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(8) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ (((\input1~combout\(8)))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & (!\input1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \input1~combout\(7),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(8));

-- Location: LC_X10_Y4_N7
\Mult0|auto_generated|le5a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(10) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) $ ((\input1~combout\(10))))) # (!\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) & ((!\input1~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(2),
	datab => \input1~combout\(10),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(10));

-- Location: LC_X11_Y4_N7
\Mult0|auto_generated|add32_result[4]~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[4]~20_combout\ = \Mult0|auto_generated|le6a\(8) $ (\Mult0|auto_generated|le5a\(10) $ ((!(!\Mult0|auto_generated|add32_result[1]~7\ & \Mult0|auto_generated|add32_result[3]~17\) # (\Mult0|auto_generated|add32_result[1]~7\ 
-- & \Mult0|auto_generated|add32_result[3]~17COUT1_73\))))
-- \Mult0|auto_generated|add32_result[4]~22\ = CARRY((\Mult0|auto_generated|le6a\(8) & ((\Mult0|auto_generated|le5a\(10)) # (!\Mult0|auto_generated|add32_result[3]~17\))) # (!\Mult0|auto_generated|le6a\(8) & (\Mult0|auto_generated|le5a\(10) & 
-- !\Mult0|auto_generated|add32_result[3]~17\)))
-- \Mult0|auto_generated|add32_result[4]~22COUT1_74\ = CARRY((\Mult0|auto_generated|le6a\(8) & ((\Mult0|auto_generated|le5a\(10)) # (!\Mult0|auto_generated|add32_result[3]~17COUT1_73\))) # (!\Mult0|auto_generated|le6a\(8) & (\Mult0|auto_generated|le5a\(10) & 
-- !\Mult0|auto_generated|add32_result[3]~17COUT1_73\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(8),
	datab => \Mult0|auto_generated|le5a\(10),
	cin => \Mult0|auto_generated|add32_result[1]~7\,
	cin0 => \Mult0|auto_generated|add32_result[3]~17\,
	cin1 => \Mult0|auto_generated|add32_result[3]~17COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[4]~20_combout\,
	cout0 => \Mult0|auto_generated|add32_result[4]~22\,
	cout1 => \Mult0|auto_generated|add32_result[4]~22COUT1_74\);

-- Location: LC_X12_Y5_N1
\Mult0|auto_generated|le3a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(14) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\input1~combout\(14) $ ((\Mult0|auto_generated|cs1a\(0))))) # (!\Mult0|auto_generated|cs2a\(0) & (((\Mult0|auto_generated|cs1a\(0) & !\input1~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \Mult0|auto_generated|cs2a\(0),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(14));

-- Location: LC_X9_Y4_N6
\Mult0|auto_generated|le4a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(12) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ ((\input1~combout\(12))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & ((!\input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(1),
	datab => \Mult0|auto_generated|cs1a\(1),
	datac => \input1~combout\(12),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(12));

-- Location: LC_X11_Y6_N4
\Mult0|auto_generated|add36_result[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[2]~10_combout\ = \Mult0|auto_generated|le3a\(14) $ (\Mult0|auto_generated|le4a\(12) $ ((!\Mult0|auto_generated|add36_result[1]~7\)))
-- \Mult0|auto_generated|add36_result[2]~12\ = CARRY((\Mult0|auto_generated|le3a\(14) & ((\Mult0|auto_generated|le4a\(12)) # (!\Mult0|auto_generated|add36_result[1]~7COUT1_82\))) # (!\Mult0|auto_generated|le3a\(14) & (\Mult0|auto_generated|le4a\(12) & 
-- !\Mult0|auto_generated|add36_result[1]~7COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le3a\(14),
	datab => \Mult0|auto_generated|le4a\(12),
	cin0 => \Mult0|auto_generated|add36_result[1]~7\,
	cin1 => \Mult0|auto_generated|add36_result[1]~7COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[2]~10_combout\,
	cout => \Mult0|auto_generated|add36_result[2]~12\);

-- Location: LC_X11_Y7_N1
\Mult0|auto_generated|op_3~50\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~50_combout\ = \Mult0|auto_generated|add32_result[4]~20_combout\ $ (\Mult0|auto_generated|add36_result[2]~10_combout\ $ ((!(!\Mult0|auto_generated|op_3~42\ & \Mult0|auto_generated|op_3~47\) # (\Mult0|auto_generated|op_3~42\ & 
-- \Mult0|auto_generated|op_3~47COUT1_148\))))
-- \Mult0|auto_generated|op_3~52\ = CARRY((\Mult0|auto_generated|add32_result[4]~20_combout\ & ((\Mult0|auto_generated|add36_result[2]~10_combout\) # (!\Mult0|auto_generated|op_3~47\))) # (!\Mult0|auto_generated|add32_result[4]~20_combout\ & 
-- (\Mult0|auto_generated|add36_result[2]~10_combout\ & !\Mult0|auto_generated|op_3~47\)))
-- \Mult0|auto_generated|op_3~52COUT1_149\ = CARRY((\Mult0|auto_generated|add32_result[4]~20_combout\ & ((\Mult0|auto_generated|add36_result[2]~10_combout\) # (!\Mult0|auto_generated|op_3~47COUT1_148\))) # (!\Mult0|auto_generated|add32_result[4]~20_combout\ 
-- & (\Mult0|auto_generated|add36_result[2]~10_combout\ & !\Mult0|auto_generated|op_3~47COUT1_148\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add32_result[4]~20_combout\,
	datab => \Mult0|auto_generated|add36_result[2]~10_combout\,
	cin => \Mult0|auto_generated|op_3~42\,
	cin0 => \Mult0|auto_generated|op_3~47\,
	cin1 => \Mult0|auto_generated|op_3~47COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~50_combout\,
	cout0 => \Mult0|auto_generated|op_3~52\,
	cout1 => \Mult0|auto_generated|op_3~52COUT1_149\);

-- Location: LC_X7_Y7_N8
\Mult0|auto_generated|op_1~70\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~70_combout\ = \Mult0|auto_generated|op_2~60_combout\ $ (\Mult0|auto_generated|op_3~50_combout\ $ ((!(!\Mult0|auto_generated|op_1~52\ & \Mult0|auto_generated|op_1~67\) # (\Mult0|auto_generated|op_1~52\ & 
-- \Mult0|auto_generated|op_1~67COUT1_171\))))
-- \Mult0|auto_generated|op_1~72\ = CARRY((\Mult0|auto_generated|op_2~60_combout\ & ((\Mult0|auto_generated|op_3~50_combout\) # (!\Mult0|auto_generated|op_1~67\))) # (!\Mult0|auto_generated|op_2~60_combout\ & (\Mult0|auto_generated|op_3~50_combout\ & 
-- !\Mult0|auto_generated|op_1~67\)))
-- \Mult0|auto_generated|op_1~72COUT1_172\ = CARRY((\Mult0|auto_generated|op_2~60_combout\ & ((\Mult0|auto_generated|op_3~50_combout\) # (!\Mult0|auto_generated|op_1~67COUT1_171\))) # (!\Mult0|auto_generated|op_2~60_combout\ & 
-- (\Mult0|auto_generated|op_3~50_combout\ & !\Mult0|auto_generated|op_1~67COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~60_combout\,
	datab => \Mult0|auto_generated|op_3~50_combout\,
	cin => \Mult0|auto_generated|op_1~52\,
	cin0 => \Mult0|auto_generated|op_1~67\,
	cin1 => \Mult0|auto_generated|op_1~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~70_combout\,
	cout0 => \Mult0|auto_generated|op_1~72\,
	cout1 => \Mult0|auto_generated|op_1~72COUT1_172\);

-- Location: LC_X5_Y7_N0
\Mux1~2\ : maxii_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & ((\Mult0|auto_generated|op_1~70_combout\))) # (!\sel~combout\(1) & (\Add0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(2),
	datab => \Add0~70_combout\,
	datac => \Mult0|auto_generated|op_1~70_combout\,
	datad => \sel~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X2_Y5_N2
\Mux1~4\ : maxii_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (\sel~combout\(0) & (\Mux1~7_combout\)) # (!\sel~combout\(0) & (((\Mux1~3_combout\) # (\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbb8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~7_combout\,
	datab => \sel~combout\(0),
	datac => \Mux1~3_combout\,
	datad => \Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X2_Y7_N6
\Mux15~30\ : maxii_lcell
-- Equation(s):
-- \Mux15~30_combout\ = (((!\sel~combout\(2) & \input1~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \sel~combout\(2),
	datad => \input1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~30_combout\);

-- Location: LC_X1_Y7_N4
\Mux1~0\ : maxii_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (\sel~combout\(0) & (((\sel~combout\(1))))) # (!\sel~combout\(0) & ((\sel~combout\(1) & (\Mux15~20_combout\)) # (!\sel~combout\(1) & ((\Mux15~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~20_combout\,
	datab => \sel~combout\(0),
	datac => \sel~combout\(1),
	datad => \Mux15~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X2_Y7_N0
\Mux1~1\ : maxii_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & (((\Mux15~14_combout\) # (!\sel~combout\(0))))) # (!\Mux1~0_combout\ & (\Mux15~30_combout\ & (\sel~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~30_combout\,
	datab => \Mux1~0_combout\,
	datac => \sel~combout\(0),
	datad => \Mux15~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: LC_X2_Y5_N3
\Mux1~5\ : maxii_lcell
-- Equation(s):
-- \Mux1~5_combout\ = ((\sel~combout\(3) & ((\Mux1~1_combout\))) # (!\sel~combout\(3) & (\Mux1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~4_combout\,
	datac => \Mux1~1_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5_combout\);

-- Location: LC_X4_Y6_N8
\Mux15~36\ : maxii_lcell
-- Equation(s):
-- \Mux15~36_combout\ = (\sel~combout\(1) & (!\sel~combout\(2) & (\input1~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \input1~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~36_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input2(15),
	combout => \input2~combout\(15));

-- Location: LC_X4_Y4_N7
\Add1~75\ : maxii_lcell
-- Equation(s):
-- \Add1~75_combout\ = (\input2~combout\(15) $ ((!\Add1~62\ & \Add1~72\) # (\Add1~62\ & \Add1~72COUT1_92\) $ (!\input1~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input2~combout\(15),
	datad => \input1~combout\(15),
	cin => \Add1~62\,
	cin0 => \Add1~72\,
	cin1 => \Add1~72COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~75_combout\);

-- Location: LC_X4_Y6_N1
\Mult0|auto_generated|le11a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(15) = LCELL((((\input1~combout\(15) & \input2~combout\(15)))))

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
	datac => \input1~combout\(15),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(15));

-- Location: LC_X4_Y6_N4
\Mux15~32\ : maxii_lcell
-- Equation(s):
-- \Mux15~32_combout\ = (\sel~combout\(1) & ((\sel~combout\(2)) # ((\Mult0|auto_generated|le11a\(15))))) # (!\sel~combout\(1) & (!\sel~combout\(2) & (\Add1~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \Add1~75_combout\,
	datad => \Mult0|auto_generated|le11a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~32_combout\);

-- Location: LC_X4_Y6_N2
\Mux15~33\ : maxii_lcell
-- Equation(s):
-- \Mux15~33_combout\ = (\sel~combout\(2) & (\input1~combout\(15) $ (((\Mux15~32_combout\) # (\input2~combout\(15)))))) # (!\sel~combout\(2) & (\Mux15~32_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e6a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~32_combout\,
	datab => \sel~combout\(2),
	datac => \input1~combout\(15),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~33_combout\);

-- Location: LC_X11_Y5_N6
\Mult0|auto_generated|le7a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(7) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\input1~combout\(7) $ (((\Mult0|auto_generated|cs1a\(4)))))) # (!\Mult0|auto_generated|cs2a\(4) & (((!\input1~combout\(6) & \Mult0|auto_generated|cs1a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \input1~combout\(6),
	datac => \Mult0|auto_generated|cs1a\(4),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(7));

-- Location: LC_X11_Y4_N2
\Mult0|auto_generated|le8a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(5) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\input1~combout\(5) $ ((\Mult0|auto_generated|cs1a\(5))))) # (!\Mult0|auto_generated|cs2a\(5) & (((\Mult0|auto_generated|cs1a\(5) & !\input1~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(5),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \input1~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(5));

-- Location: LC_X11_Y4_N8
\Mult0|auto_generated|add32_result[5]~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[5]~25_combout\ = \Mult0|auto_generated|le7a\(7) $ (\Mult0|auto_generated|le8a\(5) $ (((!\Mult0|auto_generated|add32_result[1]~7\ & \Mult0|auto_generated|add32_result[4]~22\) # (\Mult0|auto_generated|add32_result[1]~7\ & 
-- \Mult0|auto_generated|add32_result[4]~22COUT1_74\))))
-- \Mult0|auto_generated|add32_result[5]~27\ = CARRY((\Mult0|auto_generated|le7a\(7) & (!\Mult0|auto_generated|le8a\(5) & !\Mult0|auto_generated|add32_result[4]~22\)) # (!\Mult0|auto_generated|le7a\(7) & ((!\Mult0|auto_generated|add32_result[4]~22\) # 
-- (!\Mult0|auto_generated|le8a\(5)))))
-- \Mult0|auto_generated|add32_result[5]~27COUT1_75\ = CARRY((\Mult0|auto_generated|le7a\(7) & (!\Mult0|auto_generated|le8a\(5) & !\Mult0|auto_generated|add32_result[4]~22COUT1_74\)) # (!\Mult0|auto_generated|le7a\(7) & 
-- ((!\Mult0|auto_generated|add32_result[4]~22COUT1_74\) # (!\Mult0|auto_generated|le8a\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(7),
	datab => \Mult0|auto_generated|le8a\(5),
	cin => \Mult0|auto_generated|add32_result[1]~7\,
	cin0 => \Mult0|auto_generated|add32_result[4]~22\,
	cin1 => \Mult0|auto_generated|add32_result[4]~22COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[5]~25_combout\,
	cout0 => \Mult0|auto_generated|add32_result[5]~27\,
	cout1 => \Mult0|auto_generated|add32_result[5]~27COUT1_75\);

-- Location: LC_X10_Y6_N9
\Mult0|auto_generated|le5a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(11) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\input1~combout\(11) $ ((\Mult0|auto_generated|cs1a\(2))))) # (!\Mult0|auto_generated|cs2a\(2) & (((\Mult0|auto_generated|cs1a\(2) & !\input1~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(11),
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(11));

-- Location: LC_X11_Y6_N0
\Mult0|auto_generated|le6a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(9) = LCELL((\Mult0|auto_generated|cs2a\(3) & ((\input1~combout\(9) $ (\Mult0|auto_generated|cs1a\(3))))) # (!\Mult0|auto_generated|cs2a\(3) & (!\input1~combout\(8) & ((\Mult0|auto_generated|cs1a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1dc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(8),
	datab => \Mult0|auto_generated|cs2a\(3),
	datac => \input1~combout\(9),
	datad => \Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(9));

-- Location: LC_X11_Y6_N5
\Mult0|auto_generated|add36_result[3]~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[3]~15_combout\ = \Mult0|auto_generated|le5a\(11) $ (\Mult0|auto_generated|le6a\(9) $ ((\Mult0|auto_generated|add36_result[2]~12\)))
-- \Mult0|auto_generated|add36_result[3]~17\ = CARRY((\Mult0|auto_generated|le5a\(11) & (!\Mult0|auto_generated|le6a\(9) & !\Mult0|auto_generated|add36_result[2]~12\)) # (!\Mult0|auto_generated|le5a\(11) & ((!\Mult0|auto_generated|add36_result[2]~12\) # 
-- (!\Mult0|auto_generated|le6a\(9)))))
-- \Mult0|auto_generated|add36_result[3]~17COUT1_83\ = CARRY((\Mult0|auto_generated|le5a\(11) & (!\Mult0|auto_generated|le6a\(9) & !\Mult0|auto_generated|add36_result[2]~12\)) # (!\Mult0|auto_generated|le5a\(11) & 
-- ((!\Mult0|auto_generated|add36_result[2]~12\) # (!\Mult0|auto_generated|le6a\(9)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(11),
	datab => \Mult0|auto_generated|le6a\(9),
	cin => \Mult0|auto_generated|add36_result[2]~12\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[3]~15_combout\,
	cout0 => \Mult0|auto_generated|add36_result[3]~17\,
	cout1 => \Mult0|auto_generated|add36_result[3]~17COUT1_83\);

-- Location: LC_X11_Y7_N2
\Mult0|auto_generated|op_3~55\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~55_combout\ = \Mult0|auto_generated|add32_result[5]~25_combout\ $ (\Mult0|auto_generated|add36_result[3]~15_combout\ $ (((!\Mult0|auto_generated|op_3~42\ & \Mult0|auto_generated|op_3~52\) # (\Mult0|auto_generated|op_3~42\ & 
-- \Mult0|auto_generated|op_3~52COUT1_149\))))
-- \Mult0|auto_generated|op_3~57\ = CARRY((\Mult0|auto_generated|add32_result[5]~25_combout\ & (!\Mult0|auto_generated|add36_result[3]~15_combout\ & !\Mult0|auto_generated|op_3~52\)) # (!\Mult0|auto_generated|add32_result[5]~25_combout\ & 
-- ((!\Mult0|auto_generated|op_3~52\) # (!\Mult0|auto_generated|add36_result[3]~15_combout\))))
-- \Mult0|auto_generated|op_3~57COUT1_150\ = CARRY((\Mult0|auto_generated|add32_result[5]~25_combout\ & (!\Mult0|auto_generated|add36_result[3]~15_combout\ & !\Mult0|auto_generated|op_3~52COUT1_149\)) # (!\Mult0|auto_generated|add32_result[5]~25_combout\ & 
-- ((!\Mult0|auto_generated|op_3~52COUT1_149\) # (!\Mult0|auto_generated|add36_result[3]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add32_result[5]~25_combout\,
	datab => \Mult0|auto_generated|add36_result[3]~15_combout\,
	cin => \Mult0|auto_generated|op_3~42\,
	cin0 => \Mult0|auto_generated|op_3~52\,
	cin1 => \Mult0|auto_generated|op_3~52COUT1_149\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~55_combout\,
	cout0 => \Mult0|auto_generated|op_3~57\,
	cout1 => \Mult0|auto_generated|op_3~57COUT1_150\);

-- Location: LC_X9_Y4_N5
\Mult0|auto_generated|le4a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(13) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) $ (((\input1~combout\(13)))))) # (!\Mult0|auto_generated|cs2a\(1) & (\Mult0|auto_generated|cs1a\(1) & (!\input1~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(1),
	datab => \Mult0|auto_generated|cs1a\(1),
	datac => \input1~combout\(12),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(13));

-- Location: LC_X8_Y4_N0
\Mult0|auto_generated|le3a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(15) = LCELL((\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) $ ((\input1~combout\(15))))) # (!\Mult0|auto_generated|cs2a\(0) & (\Mult0|auto_generated|cs1a\(0) & ((!\input1~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(0),
	datab => \Mult0|auto_generated|cs1a\(0),
	datac => \input1~combout\(15),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(15));

-- Location: LC_X8_Y4_N1
\Mult0|auto_generated|add40_result[0]~0\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add40_result[0]~0_combout\ = \Mult0|auto_generated|le4a\(13) $ ((\Mult0|auto_generated|le3a\(15)))
-- \Mult0|auto_generated|add40_result[0]~2\ = CARRY((\Mult0|auto_generated|le4a\(13) & (\Mult0|auto_generated|le3a\(15))))
-- \Mult0|auto_generated|add40_result[0]~2COUT1_36\ = CARRY((\Mult0|auto_generated|le4a\(13) & (\Mult0|auto_generated|le3a\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(13),
	datab => \Mult0|auto_generated|le3a\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add40_result[0]~0_combout\,
	cout0 => \Mult0|auto_generated|add40_result[0]~2\,
	cout1 => \Mult0|auto_generated|add40_result[0]~2COUT1_36\);

-- Location: LC_X6_Y6_N3
\Mult0|auto_generated|le11a[0]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(0) = LCELL((\input1~combout\(0) & (((\input2~combout\(15))))))

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
	dataa => \input1~combout\(0),
	datac => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(0));

-- Location: LC_X8_Y5_N2
\Mult0|auto_generated|add24_result[9]~45\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[9]~45_combout\ = \Mult0|auto_generated|add40_result[0]~0_combout\ $ (\Mult0|auto_generated|le11a\(0) $ (((!\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[8]~42\) # 
-- (\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[8]~42COUT1_127\))))
-- \Mult0|auto_generated|add24_result[9]~47\ = CARRY((\Mult0|auto_generated|add40_result[0]~0_combout\ & (!\Mult0|auto_generated|le11a\(0) & !\Mult0|auto_generated|add24_result[8]~42\)) # (!\Mult0|auto_generated|add40_result[0]~0_combout\ & 
-- ((!\Mult0|auto_generated|add24_result[8]~42\) # (!\Mult0|auto_generated|le11a\(0)))))
-- \Mult0|auto_generated|add24_result[9]~47COUT1_128\ = CARRY((\Mult0|auto_generated|add40_result[0]~0_combout\ & (!\Mult0|auto_generated|le11a\(0) & !\Mult0|auto_generated|add24_result[8]~42COUT1_127\)) # (!\Mult0|auto_generated|add40_result[0]~0_combout\ & 
-- ((!\Mult0|auto_generated|add24_result[8]~42COUT1_127\) # (!\Mult0|auto_generated|le11a\(0)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add40_result[0]~0_combout\,
	datab => \Mult0|auto_generated|le11a\(0),
	cin => \Mult0|auto_generated|add24_result[6]~32\,
	cin0 => \Mult0|auto_generated|add24_result[8]~42\,
	cin1 => \Mult0|auto_generated|add24_result[8]~42COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[9]~45_combout\,
	cout0 => \Mult0|auto_generated|add24_result[9]~47\,
	cout1 => \Mult0|auto_generated|add24_result[9]~47COUT1_128\);

-- Location: LC_X11_Y2_N4
\Mult0|auto_generated|le9a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(3) = LCELL((\Mult0|auto_generated|cs2a\(6) & ((\Mult0|auto_generated|cs1a\(6) $ (\input1~combout\(3))))) # (!\Mult0|auto_generated|cs2a\(6) & (!\input1~combout\(2) & (\Mult0|auto_generated|cs1a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(3),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(3));

-- Location: LC_X6_Y4_N7
\Mult0|auto_generated|cs1a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|cs1a\(7) = ((((!\Mult0|auto_generated|cs1a[4]~COUT\ & \Mult0|auto_generated|cs1a[6]~COUT\) # (\Mult0|auto_generated|cs1a[4]~COUT\ & \Mult0|auto_generated|cs1a[6]~COUTCOUT1_22\) & \input2~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \input2~combout\(14),
	cin => \Mult0|auto_generated|cs1a[4]~COUT\,
	cin0 => \Mult0|auto_generated|cs1a[6]~COUT\,
	cin1 => \Mult0|auto_generated|cs1a[6]~COUTCOUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|cs1a\(7));

-- Location: LC_X10_Y5_N6
\Mult0|auto_generated|le10a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(1) = LCELL((\input1~combout\(0) & ((\Mult0|auto_generated|cs1a\(7)) # ((\input1~combout\(1) & \Mult0|auto_generated|cs2a\(7))))) # (!\input1~combout\(0) & (\input1~combout\(1) & (\Mult0|auto_generated|cs2a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(0),
	datab => \input1~combout\(1),
	datac => \Mult0|auto_generated|cs2a\(7),
	datad => \Mult0|auto_generated|cs1a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(1));

-- Location: LC_X10_Y3_N8
\Mult0|auto_generated|add28_result[7]~35\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[7]~35_combout\ = \Mult0|auto_generated|le9a\(3) $ (\Mult0|auto_generated|le10a\(1) $ (((!\Mult0|auto_generated|add28_result[3]~17\ & \Mult0|auto_generated|add28_result[6]~32\) # (\Mult0|auto_generated|add28_result[3]~17\ 
-- & \Mult0|auto_generated|add28_result[6]~32COUT1_96\))))
-- \Mult0|auto_generated|add28_result[7]~37\ = CARRY((\Mult0|auto_generated|le9a\(3) & (!\Mult0|auto_generated|le10a\(1) & !\Mult0|auto_generated|add28_result[6]~32\)) # (!\Mult0|auto_generated|le9a\(3) & ((!\Mult0|auto_generated|add28_result[6]~32\) # 
-- (!\Mult0|auto_generated|le10a\(1)))))
-- \Mult0|auto_generated|add28_result[7]~37COUT1_97\ = CARRY((\Mult0|auto_generated|le9a\(3) & (!\Mult0|auto_generated|le10a\(1) & !\Mult0|auto_generated|add28_result[6]~32COUT1_96\)) # (!\Mult0|auto_generated|le9a\(3) & 
-- ((!\Mult0|auto_generated|add28_result[6]~32COUT1_96\) # (!\Mult0|auto_generated|le10a\(1)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(3),
	datab => \Mult0|auto_generated|le10a\(1),
	cin => \Mult0|auto_generated|add28_result[3]~17\,
	cin0 => \Mult0|auto_generated|add28_result[6]~32\,
	cin1 => \Mult0|auto_generated|add28_result[6]~32COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[7]~35_combout\,
	cout0 => \Mult0|auto_generated|add28_result[7]~37\,
	cout1 => \Mult0|auto_generated|add28_result[7]~37COUT1_97\);

-- Location: LC_X8_Y6_N3
\Mult0|auto_generated|op_2~65\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~65_combout\ = \Mult0|auto_generated|add24_result[9]~45_combout\ $ (\Mult0|auto_generated|add28_result[7]~35_combout\ $ (((!\Mult0|auto_generated|op_2~47\ & \Mult0|auto_generated|op_2~62\) # (\Mult0|auto_generated|op_2~47\ & 
-- \Mult0|auto_generated|op_2~62COUT1_161\))))
-- \Mult0|auto_generated|op_2~67\ = CARRY((\Mult0|auto_generated|add24_result[9]~45_combout\ & (!\Mult0|auto_generated|add28_result[7]~35_combout\ & !\Mult0|auto_generated|op_2~62\)) # (!\Mult0|auto_generated|add24_result[9]~45_combout\ & 
-- ((!\Mult0|auto_generated|op_2~62\) # (!\Mult0|auto_generated|add28_result[7]~35_combout\))))
-- \Mult0|auto_generated|op_2~67COUT1_162\ = CARRY((\Mult0|auto_generated|add24_result[9]~45_combout\ & (!\Mult0|auto_generated|add28_result[7]~35_combout\ & !\Mult0|auto_generated|op_2~62COUT1_161\)) # (!\Mult0|auto_generated|add24_result[9]~45_combout\ & 
-- ((!\Mult0|auto_generated|op_2~62COUT1_161\) # (!\Mult0|auto_generated|add28_result[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[9]~45_combout\,
	datab => \Mult0|auto_generated|add28_result[7]~35_combout\,
	cin => \Mult0|auto_generated|op_2~47\,
	cin0 => \Mult0|auto_generated|op_2~62\,
	cin1 => \Mult0|auto_generated|op_2~62COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~65_combout\,
	cout0 => \Mult0|auto_generated|op_2~67\,
	cout1 => \Mult0|auto_generated|op_2~67COUT1_162\);

-- Location: LC_X7_Y7_N9
\Mult0|auto_generated|op_1~75\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~75_combout\ = \Mult0|auto_generated|op_3~55_combout\ $ (\Mult0|auto_generated|op_2~65_combout\ $ (((!\Mult0|auto_generated|op_1~52\ & \Mult0|auto_generated|op_1~72\) # (\Mult0|auto_generated|op_1~52\ & 
-- \Mult0|auto_generated|op_1~72COUT1_172\))))
-- \Mult0|auto_generated|op_1~77\ = CARRY((\Mult0|auto_generated|op_3~55_combout\ & (!\Mult0|auto_generated|op_2~65_combout\ & !\Mult0|auto_generated|op_1~72COUT1_172\)) # (!\Mult0|auto_generated|op_3~55_combout\ & ((!\Mult0|auto_generated|op_1~72COUT1_172\) 
-- # (!\Mult0|auto_generated|op_2~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~55_combout\,
	datab => \Mult0|auto_generated|op_2~65_combout\,
	cin => \Mult0|auto_generated|op_1~52\,
	cin0 => \Mult0|auto_generated|op_1~72\,
	cin1 => \Mult0|auto_generated|op_1~72COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~75_combout\,
	cout => \Mult0|auto_generated|op_1~77\);

-- Location: LC_X4_Y6_N6
\Mux15~34\ : maxii_lcell
-- Equation(s):
-- \Mux15~34_combout\ = \sel~combout\(1) $ (((\sel~combout\(2) & ((\input1~combout\(15)) # (\input2~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "666a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \input1~combout\(15),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~34_combout\);

-- Location: LC_X4_Y5_N7
\Add0~75\ : maxii_lcell
-- Equation(s):
-- \Add0~75_combout\ = \input2~combout\(15) $ (\input1~combout\(15) $ (((!\Add0~62\ & \Add0~72\) # (\Add0~62\ & \Add0~72COUT1_97\))))
-- \Add0~77\ = CARRY((\input2~combout\(15) & (!\input1~combout\(15) & !\Add0~72\)) # (!\input2~combout\(15) & ((!\Add0~72\) # (!\input1~combout\(15)))))
-- \Add0~77COUT1_98\ = CARRY((\input2~combout\(15) & (!\input1~combout\(15) & !\Add0~72COUT1_97\)) # (!\input2~combout\(15) & ((!\Add0~72COUT1_97\) # (!\input1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input2~combout\(15),
	datab => \input1~combout\(15),
	cin => \Add0~62\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_98\);

-- Location: LC_X4_Y6_N0
\Mux15~35\ : maxii_lcell
-- Equation(s):
-- \Mux15~35_combout\ = (\sel~combout\(2) & (((\Mux15~34_combout\)))) # (!\sel~combout\(2) & ((\Mux15~34_combout\ & (\Mult0|auto_generated|op_1~75_combout\)) # (!\Mux15~34_combout\ & ((\Add0~75_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e3e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~75_combout\,
	datab => \sel~combout\(2),
	datac => \Mux15~34_combout\,
	datad => \Add0~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~35_combout\);

-- Location: LC_X4_Y6_N9
\Mux0~0\ : maxii_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\sel~combout\(0) & ((\Mux15~33_combout\) # ((\sel~combout\(3))))) # (!\sel~combout\(0) & (((\Mux15~35_combout\ & !\sel~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aad8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(0),
	datab => \Mux15~33_combout\,
	datac => \Mux15~35_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X4_Y6_N7
\Mux15~31\ : maxii_lcell
-- Equation(s):
-- \Mux15~31_combout\ = (!\sel~combout\(2) & ((\sel~combout\(1) & (\input1~combout\(7))) # (!\sel~combout\(1) & ((\input1~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \sel~combout\(2),
	datac => \input1~combout\(7),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~31_combout\);

-- Location: LC_X4_Y6_N5
\Mux0~1\ : maxii_lcell
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux0~0_combout\ & ((\Mux15~36_combout\) # ((!\sel~combout\(3))))) # (!\Mux0~0_combout\ & (((\Mux15~31_combout\ & \sel~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~36_combout\,
	datab => \Mux0~0_combout\,
	datac => \Mux15~31_combout\,
	datad => \sel~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~1_combout\);

-- Location: LC_X4_Y5_N8
\Add0~80\ : maxii_lcell
-- Equation(s):
-- \Add0~80_combout\ = (((!(!\Add0~62\ & \Add0~77\) # (\Add0~62\ & \Add0~77COUT1_98\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add0~62\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\);

-- Location: LC_X4_Y7_N0
\Mux16~0\ : maxii_lcell
-- Equation(s):
-- \Mux16~0_combout\ = ((\sel~combout\(3) & (\input1~combout\(15))) # (!\sel~combout\(3) & ((\Add0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(15),
	datac => \sel~combout\(3),
	datad => \Add0~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux16~0_combout\);

-- Location: LC_X6_Y6_N5
\Mult0|auto_generated|le11a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(6) = LCELL((((\input2~combout\(15) & \input1~combout\(6)))))

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
	datac => \input2~combout\(15),
	datad => \input1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(6));

-- Location: LC_X10_Y2_N1
\Mult0|auto_generated|le10a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(7) = LCELL((\input1~combout\(6) & ((\Mult0|auto_generated|cs1a\(7)) # ((\Mult0|auto_generated|cs2a\(7) & \input1~combout\(7))))) # (!\input1~combout\(6) & (\Mult0|auto_generated|cs2a\(7) & ((\input1~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(6),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(7));

-- Location: LC_X7_Y4_N9
\Mult0|auto_generated|le4a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(15) = LCELL((\Mult0|auto_generated|cs2a\(1) & (\input1~combout\(15) $ ((\Mult0|auto_generated|cs1a\(1))))) # (!\Mult0|auto_generated|cs2a\(1) & (((\Mult0|auto_generated|cs1a\(1) & !\input1~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(15),
	datab => \Mult0|auto_generated|cs2a\(1),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(15));

-- Location: LC_X9_Y4_N9
\Mult0|auto_generated|le5a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(13) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) $ (((\input1~combout\(13)))))) # (!\Mult0|auto_generated|cs2a\(2) & (\Mult0|auto_generated|cs1a\(2) & (!\input1~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(2),
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \input1~combout\(12),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(13));

-- Location: LC_X7_Y4_N5
\Mult0|auto_generated|le4a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(14) = LCELL((\Mult0|auto_generated|cs2a\(1) & ((\Mult0|auto_generated|cs1a\(1) $ (\input1~combout\(14))))) # (!\Mult0|auto_generated|cs2a\(1) & (!\input1~combout\(13) & (\Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1cd0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(13),
	datab => \Mult0|auto_generated|cs2a\(1),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(14));

-- Location: LC_X8_Y4_N9
\Mult0|auto_generated|le3a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(16) = LCELL((\Mult0|auto_generated|cs1a\(0) & (((\Mult0|auto_generated|cs2a\(0))) # (!\input1~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(15),
	datab => \Mult0|auto_generated|cs1a\(0),
	datad => \Mult0|auto_generated|cs2a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(16));

-- Location: LC_X8_Y4_N2
\Mult0|auto_generated|add40_result[1]~5\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add40_result[1]~5_combout\ = \Mult0|auto_generated|le4a\(14) $ (\Mult0|auto_generated|le3a\(16) $ ((\Mult0|auto_generated|add40_result[0]~2\)))
-- \Mult0|auto_generated|add40_result[1]~7\ = CARRY((\Mult0|auto_generated|le4a\(14) & (!\Mult0|auto_generated|le3a\(16) & !\Mult0|auto_generated|add40_result[0]~2\)) # (!\Mult0|auto_generated|le4a\(14) & ((!\Mult0|auto_generated|add40_result[0]~2\) # 
-- (!\Mult0|auto_generated|le3a\(16)))))
-- \Mult0|auto_generated|add40_result[1]~7COUT1_37\ = CARRY((\Mult0|auto_generated|le4a\(14) & (!\Mult0|auto_generated|le3a\(16) & !\Mult0|auto_generated|add40_result[0]~2COUT1_36\)) # (!\Mult0|auto_generated|le4a\(14) & 
-- ((!\Mult0|auto_generated|add40_result[0]~2COUT1_36\) # (!\Mult0|auto_generated|le3a\(16)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(14),
	datab => \Mult0|auto_generated|le3a\(16),
	cin0 => \Mult0|auto_generated|add40_result[0]~2\,
	cin1 => \Mult0|auto_generated|add40_result[0]~2COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add40_result[1]~5_combout\,
	cout0 => \Mult0|auto_generated|add40_result[1]~7\,
	cout1 => \Mult0|auto_generated|add40_result[1]~7COUT1_37\);

-- Location: LC_X8_Y4_N3
\Mult0|auto_generated|add40_result[2]~10\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add40_result[2]~10_combout\ = \Mult0|auto_generated|le4a\(15) $ (\Mult0|auto_generated|le5a\(13) $ ((!\Mult0|auto_generated|add40_result[1]~7\)))
-- \Mult0|auto_generated|add40_result[2]~12\ = CARRY((\Mult0|auto_generated|le4a\(15) & ((\Mult0|auto_generated|le5a\(13)) # (!\Mult0|auto_generated|add40_result[1]~7\))) # (!\Mult0|auto_generated|le4a\(15) & (\Mult0|auto_generated|le5a\(13) & 
-- !\Mult0|auto_generated|add40_result[1]~7\)))
-- \Mult0|auto_generated|add40_result[2]~12COUT1_38\ = CARRY((\Mult0|auto_generated|le4a\(15) & ((\Mult0|auto_generated|le5a\(13)) # (!\Mult0|auto_generated|add40_result[1]~7COUT1_37\))) # (!\Mult0|auto_generated|le4a\(15) & (\Mult0|auto_generated|le5a\(13) 
-- & !\Mult0|auto_generated|add40_result[1]~7COUT1_37\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(15),
	datab => \Mult0|auto_generated|le5a\(13),
	cin0 => \Mult0|auto_generated|add40_result[1]~7\,
	cin1 => \Mult0|auto_generated|add40_result[1]~7COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add40_result[2]~10_combout\,
	cout0 => \Mult0|auto_generated|add40_result[2]~12\,
	cout1 => \Mult0|auto_generated|add40_result[2]~12COUT1_38\);

-- Location: LC_X10_Y5_N2
\Mult0|auto_generated|le11a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(2) = LCELL((((\input1~combout\(2) & \input2~combout\(15)))))

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
	datac => \input1~combout\(2),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(2));

-- Location: LC_X6_Y4_N8
\Mult0|auto_generated|le11a[1]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(1) = LCELL(((\input2~combout\(15) & ((\input1~combout\(1))))))

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
	datab => \input2~combout\(15),
	datad => \input1~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(1));

-- Location: LC_X8_Y5_N3
\Mult0|auto_generated|add24_result[10]~50\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[10]~50_combout\ = \Mult0|auto_generated|le11a\(1) $ (\Mult0|auto_generated|add40_result[1]~5_combout\ $ ((!(!\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[9]~47\) # 
-- (\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[9]~47COUT1_128\))))
-- \Mult0|auto_generated|add24_result[10]~52\ = CARRY((\Mult0|auto_generated|le11a\(1) & ((\Mult0|auto_generated|add40_result[1]~5_combout\) # (!\Mult0|auto_generated|add24_result[9]~47\))) # (!\Mult0|auto_generated|le11a\(1) & 
-- (\Mult0|auto_generated|add40_result[1]~5_combout\ & !\Mult0|auto_generated|add24_result[9]~47\)))
-- \Mult0|auto_generated|add24_result[10]~52COUT1_129\ = CARRY((\Mult0|auto_generated|le11a\(1) & ((\Mult0|auto_generated|add40_result[1]~5_combout\) # (!\Mult0|auto_generated|add24_result[9]~47COUT1_128\))) # (!\Mult0|auto_generated|le11a\(1) & 
-- (\Mult0|auto_generated|add40_result[1]~5_combout\ & !\Mult0|auto_generated|add24_result[9]~47COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(1),
	datab => \Mult0|auto_generated|add40_result[1]~5_combout\,
	cin => \Mult0|auto_generated|add24_result[6]~32\,
	cin0 => \Mult0|auto_generated|add24_result[9]~47\,
	cin1 => \Mult0|auto_generated|add24_result[9]~47COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[10]~50_combout\,
	cout0 => \Mult0|auto_generated|add24_result[10]~52\,
	cout1 => \Mult0|auto_generated|add24_result[10]~52COUT1_129\);

-- Location: LC_X8_Y5_N4
\Mult0|auto_generated|add24_result[11]~55\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[11]~55_combout\ = \Mult0|auto_generated|add40_result[2]~10_combout\ $ (\Mult0|auto_generated|le11a\(2) $ (((!\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[10]~52\) # 
-- (\Mult0|auto_generated|add24_result[6]~32\ & \Mult0|auto_generated|add24_result[10]~52COUT1_129\))))
-- \Mult0|auto_generated|add24_result[11]~57\ = CARRY((\Mult0|auto_generated|add40_result[2]~10_combout\ & (!\Mult0|auto_generated|le11a\(2) & !\Mult0|auto_generated|add24_result[10]~52COUT1_129\)) # (!\Mult0|auto_generated|add40_result[2]~10_combout\ & 
-- ((!\Mult0|auto_generated|add24_result[10]~52COUT1_129\) # (!\Mult0|auto_generated|le11a\(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add40_result[2]~10_combout\,
	datab => \Mult0|auto_generated|le11a\(2),
	cin => \Mult0|auto_generated|add24_result[6]~32\,
	cin0 => \Mult0|auto_generated|add24_result[10]~52\,
	cin1 => \Mult0|auto_generated|add24_result[10]~52COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[11]~55_combout\,
	cout => \Mult0|auto_generated|add24_result[11]~57\);

-- Location: LC_X7_Y4_N1
\Mult0|auto_generated|le5a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(14) = LCELL((\Mult0|auto_generated|cs2a\(2) & ((\Mult0|auto_generated|cs1a\(2) $ (\input1~combout\(14))))) # (!\Mult0|auto_generated|cs2a\(2) & (!\input1~combout\(13) & (\Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(13),
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(14));

-- Location: LC_X7_Y4_N2
\Mult0|auto_generated|le4a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(16) = LCELL(((\Mult0|auto_generated|cs1a\(1) & ((\Mult0|auto_generated|cs2a\(1)) # (!\input1~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(15),
	datac => \Mult0|auto_generated|cs1a\(1),
	datad => \Mult0|auto_generated|cs2a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(16));

-- Location: LC_X8_Y4_N4
\Mult0|auto_generated|add40_result[3]~15\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add40_result[3]~15_combout\ = \Mult0|auto_generated|le5a\(14) $ (\Mult0|auto_generated|le4a\(16) $ ((\Mult0|auto_generated|add40_result[2]~12\)))
-- \Mult0|auto_generated|add40_result[3]~17\ = CARRY((\Mult0|auto_generated|le5a\(14) & (!\Mult0|auto_generated|le4a\(16) & !\Mult0|auto_generated|add40_result[2]~12COUT1_38\)) # (!\Mult0|auto_generated|le5a\(14) & 
-- ((!\Mult0|auto_generated|add40_result[2]~12COUT1_38\) # (!\Mult0|auto_generated|le4a\(16)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le5a\(14),
	datab => \Mult0|auto_generated|le4a\(16),
	cin0 => \Mult0|auto_generated|add40_result[2]~12\,
	cin1 => \Mult0|auto_generated|add40_result[2]~12COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add40_result[3]~15_combout\,
	cout => \Mult0|auto_generated|add40_result[3]~17\);

-- Location: LC_X8_Y4_N8
\Mult0|auto_generated|le4a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le4a\(17) = LCELL((((\Mult0|auto_generated|cs1a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|cs1a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le4a\(17));

-- Location: LC_X7_Y4_N4
\Mult0|auto_generated|le5a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(15) = LCELL((\Mult0|auto_generated|cs2a\(2) & (\input1~combout\(15) $ ((\Mult0|auto_generated|cs1a\(2))))) # (!\Mult0|auto_generated|cs2a\(2) & (((\Mult0|auto_generated|cs1a\(2) & !\input1~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(15),
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(15));

-- Location: LC_X8_Y4_N5
\Mult0|auto_generated|add40_result[4]~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add40_result[4]~20_combout\ = \Mult0|auto_generated|le4a\(17) $ (\Mult0|auto_generated|le5a\(15) $ ((\Mult0|auto_generated|add40_result[3]~17\)))
-- \Mult0|auto_generated|add40_result[4]~22\ = CARRY((\Mult0|auto_generated|le4a\(17) & (\Mult0|auto_generated|le5a\(15) & !\Mult0|auto_generated|add40_result[3]~17\)) # (!\Mult0|auto_generated|le4a\(17) & ((\Mult0|auto_generated|le5a\(15)) # 
-- (!\Mult0|auto_generated|add40_result[3]~17\))))
-- \Mult0|auto_generated|add40_result[4]~22COUT1_39\ = CARRY((\Mult0|auto_generated|le4a\(17) & (\Mult0|auto_generated|le5a\(15) & !\Mult0|auto_generated|add40_result[3]~17\)) # (!\Mult0|auto_generated|le4a\(17) & ((\Mult0|auto_generated|le5a\(15)) # 
-- (!\Mult0|auto_generated|add40_result[3]~17\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le4a\(17),
	datab => \Mult0|auto_generated|le5a\(15),
	cin => \Mult0|auto_generated|add40_result[3]~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add40_result[4]~20_combout\,
	cout0 => \Mult0|auto_generated|add40_result[4]~22\,
	cout1 => \Mult0|auto_generated|add40_result[4]~22COUT1_39\);

-- Location: LC_X8_Y4_N6
\Mult0|auto_generated|add40_result[5]~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add40_result[5]~25_combout\ = (((!(!\Mult0|auto_generated|add40_result[3]~17\ & \Mult0|auto_generated|add40_result[4]~22\) # (\Mult0|auto_generated|add40_result[3]~17\ & \Mult0|auto_generated|add40_result[4]~22COUT1_39\))))
-- \Mult0|auto_generated|add40_result[5]~27\ = CARRY(((!\Mult0|auto_generated|add40_result[4]~22\)))
-- \Mult0|auto_generated|add40_result[5]~27COUT1_40\ = CARRY(((!\Mult0|auto_generated|add40_result[4]~22COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add40_result[3]~17\,
	cin0 => \Mult0|auto_generated|add40_result[4]~22\,
	cin1 => \Mult0|auto_generated|add40_result[4]~22COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add40_result[5]~25_combout\,
	cout0 => \Mult0|auto_generated|add40_result[5]~27\,
	cout1 => \Mult0|auto_generated|add40_result[5]~27COUT1_40\);

-- Location: LC_X5_Y4_N8
\Mult0|auto_generated|le11a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(5) = LCELL((((\input1~combout\(5) & \input2~combout\(15)))))

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
	datac => \input1~combout\(5),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(5));

-- Location: LC_X7_Y4_N0
\Mult0|auto_generated|le11a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(4) = LCELL((((\input1~combout\(4) & \input2~combout\(15)))))

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
	datac => \input1~combout\(4),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(4));

-- Location: LC_X4_Y4_N8
\Mult0|auto_generated|le11a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(3) = LCELL((((\input1~combout\(3) & \input2~combout\(15)))))

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
	datac => \input1~combout\(3),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(3));

-- Location: LC_X8_Y5_N5
\Mult0|auto_generated|add24_result[12]~60\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[12]~60_combout\ = \Mult0|auto_generated|add40_result[3]~15_combout\ $ (\Mult0|auto_generated|le11a\(3) $ ((!\Mult0|auto_generated|add24_result[11]~57\)))
-- \Mult0|auto_generated|add24_result[12]~62\ = CARRY((\Mult0|auto_generated|add40_result[3]~15_combout\ & ((\Mult0|auto_generated|le11a\(3)) # (!\Mult0|auto_generated|add24_result[11]~57\))) # (!\Mult0|auto_generated|add40_result[3]~15_combout\ & 
-- (\Mult0|auto_generated|le11a\(3) & !\Mult0|auto_generated|add24_result[11]~57\)))
-- \Mult0|auto_generated|add24_result[12]~62COUT1_130\ = CARRY((\Mult0|auto_generated|add40_result[3]~15_combout\ & ((\Mult0|auto_generated|le11a\(3)) # (!\Mult0|auto_generated|add24_result[11]~57\))) # (!\Mult0|auto_generated|add40_result[3]~15_combout\ & 
-- (\Mult0|auto_generated|le11a\(3) & !\Mult0|auto_generated|add24_result[11]~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add40_result[3]~15_combout\,
	datab => \Mult0|auto_generated|le11a\(3),
	cin => \Mult0|auto_generated|add24_result[11]~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[12]~60_combout\,
	cout0 => \Mult0|auto_generated|add24_result[12]~62\,
	cout1 => \Mult0|auto_generated|add24_result[12]~62COUT1_130\);

-- Location: LC_X8_Y5_N6
\Mult0|auto_generated|add24_result[13]~65\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[13]~65_combout\ = \Mult0|auto_generated|add40_result[4]~20_combout\ $ (\Mult0|auto_generated|le11a\(4) $ (((!\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[12]~62\) # 
-- (\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[12]~62COUT1_130\))))
-- \Mult0|auto_generated|add24_result[13]~67\ = CARRY((\Mult0|auto_generated|add40_result[4]~20_combout\ & (!\Mult0|auto_generated|le11a\(4) & !\Mult0|auto_generated|add24_result[12]~62\)) # (!\Mult0|auto_generated|add40_result[4]~20_combout\ & 
-- ((!\Mult0|auto_generated|add24_result[12]~62\) # (!\Mult0|auto_generated|le11a\(4)))))
-- \Mult0|auto_generated|add24_result[13]~67COUT1_131\ = CARRY((\Mult0|auto_generated|add40_result[4]~20_combout\ & (!\Mult0|auto_generated|le11a\(4) & !\Mult0|auto_generated|add24_result[12]~62COUT1_130\)) # 
-- (!\Mult0|auto_generated|add40_result[4]~20_combout\ & ((!\Mult0|auto_generated|add24_result[12]~62COUT1_130\) # (!\Mult0|auto_generated|le11a\(4)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add40_result[4]~20_combout\,
	datab => \Mult0|auto_generated|le11a\(4),
	cin => \Mult0|auto_generated|add24_result[11]~57\,
	cin0 => \Mult0|auto_generated|add24_result[12]~62\,
	cin1 => \Mult0|auto_generated|add24_result[12]~62COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[13]~65_combout\,
	cout0 => \Mult0|auto_generated|add24_result[13]~67\,
	cout1 => \Mult0|auto_generated|add24_result[13]~67COUT1_131\);

-- Location: LC_X8_Y5_N7
\Mult0|auto_generated|add24_result[14]~70\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[14]~70_combout\ = \Mult0|auto_generated|add40_result[5]~25_combout\ $ (\Mult0|auto_generated|le11a\(5) $ ((!(!\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[13]~67\) # 
-- (\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[13]~67COUT1_131\))))
-- \Mult0|auto_generated|add24_result[14]~72\ = CARRY((\Mult0|auto_generated|add40_result[5]~25_combout\ & ((\Mult0|auto_generated|le11a\(5)) # (!\Mult0|auto_generated|add24_result[13]~67\))) # (!\Mult0|auto_generated|add40_result[5]~25_combout\ & 
-- (\Mult0|auto_generated|le11a\(5) & !\Mult0|auto_generated|add24_result[13]~67\)))
-- \Mult0|auto_generated|add24_result[14]~72COUT1_132\ = CARRY((\Mult0|auto_generated|add40_result[5]~25_combout\ & ((\Mult0|auto_generated|le11a\(5)) # (!\Mult0|auto_generated|add24_result[13]~67COUT1_131\))) # 
-- (!\Mult0|auto_generated|add40_result[5]~25_combout\ & (\Mult0|auto_generated|le11a\(5) & !\Mult0|auto_generated|add24_result[13]~67COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add40_result[5]~25_combout\,
	datab => \Mult0|auto_generated|le11a\(5),
	cin => \Mult0|auto_generated|add24_result[11]~57\,
	cin0 => \Mult0|auto_generated|add24_result[13]~67\,
	cin1 => \Mult0|auto_generated|add24_result[13]~67COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[14]~70_combout\,
	cout0 => \Mult0|auto_generated|add24_result[14]~72\,
	cout1 => \Mult0|auto_generated|add24_result[14]~72COUT1_132\);

-- Location: LC_X8_Y5_N8
\Mult0|auto_generated|add24_result[15]~75\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[15]~75_combout\ = \Mult0|auto_generated|le11a\(6) $ (\Mult0|auto_generated|le10a\(7) $ (((!\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[14]~72\) # 
-- (\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[14]~72COUT1_132\))))
-- \Mult0|auto_generated|add24_result[15]~77\ = CARRY((\Mult0|auto_generated|le11a\(6) & (!\Mult0|auto_generated|le10a\(7) & !\Mult0|auto_generated|add24_result[14]~72\)) # (!\Mult0|auto_generated|le11a\(6) & ((!\Mult0|auto_generated|add24_result[14]~72\) # 
-- (!\Mult0|auto_generated|le10a\(7)))))
-- \Mult0|auto_generated|add24_result[15]~77COUT1_133\ = CARRY((\Mult0|auto_generated|le11a\(6) & (!\Mult0|auto_generated|le10a\(7) & !\Mult0|auto_generated|add24_result[14]~72COUT1_132\)) # (!\Mult0|auto_generated|le11a\(6) & 
-- ((!\Mult0|auto_generated|add24_result[14]~72COUT1_132\) # (!\Mult0|auto_generated|le10a\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(6),
	datab => \Mult0|auto_generated|le10a\(7),
	cin => \Mult0|auto_generated|add24_result[11]~57\,
	cin0 => \Mult0|auto_generated|add24_result[14]~72\,
	cin1 => \Mult0|auto_generated|add24_result[14]~72COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[15]~75_combout\,
	cout0 => \Mult0|auto_generated|add24_result[15]~77\,
	cout1 => \Mult0|auto_generated|add24_result[15]~77COUT1_133\);

-- Location: LC_X11_Y2_N1
\Mult0|auto_generated|le9a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(9) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) $ (((\input1~combout\(9)))))) # (!\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) & (!\input1~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(6),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(8),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(9));

-- Location: LC_X12_Y5_N9
\Mult0|auto_generated|le8a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(11) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\input1~combout\(11) $ ((\Mult0|auto_generated|cs1a\(5))))) # (!\Mult0|auto_generated|cs2a\(5) & (((\Mult0|auto_generated|cs1a\(5) & !\input1~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(11),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \input1~combout\(10),
	datad => \Mult0|auto_generated|cs2a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(11));

-- Location: LC_X11_Y2_N9
\Mult0|auto_generated|le9a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(4) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\input1~combout\(4) $ ((\Mult0|auto_generated|cs1a\(6))))) # (!\Mult0|auto_generated|cs2a\(6) & (((\Mult0|auto_generated|cs1a\(6) & !\input1~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(4),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(3),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(4));

-- Location: LC_X10_Y5_N1
\Mult0|auto_generated|le10a[2]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(2) = LCELL((\input1~combout\(2) & ((\Mult0|auto_generated|cs2a\(7)) # ((\input1~combout\(1) & \Mult0|auto_generated|cs1a\(7))))) # (!\input1~combout\(2) & (\input1~combout\(1) & ((\Mult0|auto_generated|cs1a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \input1~combout\(1),
	datac => \Mult0|auto_generated|cs2a\(7),
	datad => \Mult0|auto_generated|cs1a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(2));

-- Location: LC_X10_Y3_N9
\Mult0|auto_generated|add28_result[8]~40\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[8]~40_combout\ = \Mult0|auto_generated|le9a\(4) $ (\Mult0|auto_generated|le10a\(2) $ ((!(!\Mult0|auto_generated|add28_result[3]~17\ & \Mult0|auto_generated|add28_result[7]~37\) # 
-- (\Mult0|auto_generated|add28_result[3]~17\ & \Mult0|auto_generated|add28_result[7]~37COUT1_97\))))
-- \Mult0|auto_generated|add28_result[8]~42\ = CARRY((\Mult0|auto_generated|le9a\(4) & ((\Mult0|auto_generated|le10a\(2)) # (!\Mult0|auto_generated|add28_result[7]~37COUT1_97\))) # (!\Mult0|auto_generated|le9a\(4) & (\Mult0|auto_generated|le10a\(2) & 
-- !\Mult0|auto_generated|add28_result[7]~37COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(4),
	datab => \Mult0|auto_generated|le10a\(2),
	cin => \Mult0|auto_generated|add28_result[3]~17\,
	cin0 => \Mult0|auto_generated|add28_result[7]~37\,
	cin1 => \Mult0|auto_generated|add28_result[7]~37COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[8]~40_combout\,
	cout => \Mult0|auto_generated|add28_result[8]~42\);

-- Location: LC_X11_Y2_N5
\Mult0|auto_generated|le9a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(8) = LCELL((\Mult0|auto_generated|cs2a\(6) & ((\Mult0|auto_generated|cs1a\(6) $ (\input1~combout\(8))))) # (!\Mult0|auto_generated|cs2a\(6) & (!\input1~combout\(7) & (\Mult0|auto_generated|cs1a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(8),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(8));

-- Location: LC_X10_Y2_N9
\Mult0|auto_generated|le10a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(6) = LCELL((\input1~combout\(6) & ((\Mult0|auto_generated|cs2a\(7)) # ((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(5))))) # (!\input1~combout\(6) & (((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(6),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(6));

-- Location: LC_X10_Y2_N0
\Mult0|auto_generated|le10a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(5) = LCELL((\input1~combout\(4) & ((\Mult0|auto_generated|cs1a\(7)) # ((\Mult0|auto_generated|cs2a\(7) & \input1~combout\(5))))) # (!\input1~combout\(4) & (\Mult0|auto_generated|cs2a\(7) & ((\input1~combout\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(4),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(5));

-- Location: LC_X11_Y2_N7
\Mult0|auto_generated|le9a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(7) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\input1~combout\(7) $ ((\Mult0|auto_generated|cs1a\(6))))) # (!\Mult0|auto_generated|cs2a\(6) & (((\Mult0|auto_generated|cs1a\(6) & !\input1~combout\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(6),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(7));

-- Location: LC_X11_Y2_N2
\Mult0|auto_generated|le9a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(6) = LCELL((\Mult0|auto_generated|cs2a\(6) & ((\Mult0|auto_generated|cs1a\(6) $ (\input1~combout\(6))))) # (!\Mult0|auto_generated|cs2a\(6) & (!\input1~combout\(5) & (\Mult0|auto_generated|cs1a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(5),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(6),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(6));

-- Location: LC_X10_Y2_N5
\Mult0|auto_generated|le10a[4]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(4) = LCELL((\input1~combout\(4) & ((\Mult0|auto_generated|cs2a\(7)) # ((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(3))))) # (!\input1~combout\(4) & (((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(4),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(4));

-- Location: LC_X10_Y2_N7
\Mult0|auto_generated|le10a[3]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(3) = LCELL((\input1~combout\(2) & ((\Mult0|auto_generated|cs1a\(7)) # ((\Mult0|auto_generated|cs2a\(7) & \input1~combout\(3))))) # (!\input1~combout\(2) & (\Mult0|auto_generated|cs2a\(7) & ((\input1~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(2),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(3));

-- Location: LC_X11_Y2_N3
\Mult0|auto_generated|le9a[5]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(5) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\input1~combout\(5) $ ((\Mult0|auto_generated|cs1a\(6))))) # (!\Mult0|auto_generated|cs2a\(6) & (((\Mult0|auto_generated|cs1a\(6) & !\input1~combout\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(5),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(4),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(5));

-- Location: LC_X11_Y3_N0
\Mult0|auto_generated|add28_result[9]~45\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[9]~45_combout\ = \Mult0|auto_generated|le10a\(3) $ (\Mult0|auto_generated|le9a\(5) $ ((\Mult0|auto_generated|add28_result[8]~42\)))
-- \Mult0|auto_generated|add28_result[9]~47\ = CARRY((\Mult0|auto_generated|le10a\(3) & (!\Mult0|auto_generated|le9a\(5) & !\Mult0|auto_generated|add28_result[8]~42\)) # (!\Mult0|auto_generated|le10a\(3) & ((!\Mult0|auto_generated|add28_result[8]~42\) # 
-- (!\Mult0|auto_generated|le9a\(5)))))
-- \Mult0|auto_generated|add28_result[9]~47COUT1_98\ = CARRY((\Mult0|auto_generated|le10a\(3) & (!\Mult0|auto_generated|le9a\(5) & !\Mult0|auto_generated|add28_result[8]~42\)) # (!\Mult0|auto_generated|le10a\(3) & 
-- ((!\Mult0|auto_generated|add28_result[8]~42\) # (!\Mult0|auto_generated|le9a\(5)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(3),
	datab => \Mult0|auto_generated|le9a\(5),
	cin => \Mult0|auto_generated|add28_result[8]~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[9]~45_combout\,
	cout0 => \Mult0|auto_generated|add28_result[9]~47\,
	cout1 => \Mult0|auto_generated|add28_result[9]~47COUT1_98\);

-- Location: LC_X11_Y3_N1
\Mult0|auto_generated|add28_result[10]~50\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[10]~50_combout\ = \Mult0|auto_generated|le9a\(6) $ (\Mult0|auto_generated|le10a\(4) $ ((!(!\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[9]~47\) # 
-- (\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[9]~47COUT1_98\))))
-- \Mult0|auto_generated|add28_result[10]~52\ = CARRY((\Mult0|auto_generated|le9a\(6) & ((\Mult0|auto_generated|le10a\(4)) # (!\Mult0|auto_generated|add28_result[9]~47\))) # (!\Mult0|auto_generated|le9a\(6) & (\Mult0|auto_generated|le10a\(4) & 
-- !\Mult0|auto_generated|add28_result[9]~47\)))
-- \Mult0|auto_generated|add28_result[10]~52COUT1_99\ = CARRY((\Mult0|auto_generated|le9a\(6) & ((\Mult0|auto_generated|le10a\(4)) # (!\Mult0|auto_generated|add28_result[9]~47COUT1_98\))) # (!\Mult0|auto_generated|le9a\(6) & (\Mult0|auto_generated|le10a\(4) 
-- & !\Mult0|auto_generated|add28_result[9]~47COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(6),
	datab => \Mult0|auto_generated|le10a\(4),
	cin => \Mult0|auto_generated|add28_result[8]~42\,
	cin0 => \Mult0|auto_generated|add28_result[9]~47\,
	cin1 => \Mult0|auto_generated|add28_result[9]~47COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[10]~50_combout\,
	cout0 => \Mult0|auto_generated|add28_result[10]~52\,
	cout1 => \Mult0|auto_generated|add28_result[10]~52COUT1_99\);

-- Location: LC_X11_Y3_N2
\Mult0|auto_generated|add28_result[11]~55\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[11]~55_combout\ = \Mult0|auto_generated|le10a\(5) $ (\Mult0|auto_generated|le9a\(7) $ (((!\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[10]~52\) # 
-- (\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[10]~52COUT1_99\))))
-- \Mult0|auto_generated|add28_result[11]~57\ = CARRY((\Mult0|auto_generated|le10a\(5) & (!\Mult0|auto_generated|le9a\(7) & !\Mult0|auto_generated|add28_result[10]~52\)) # (!\Mult0|auto_generated|le10a\(5) & ((!\Mult0|auto_generated|add28_result[10]~52\) # 
-- (!\Mult0|auto_generated|le9a\(7)))))
-- \Mult0|auto_generated|add28_result[11]~57COUT1_100\ = CARRY((\Mult0|auto_generated|le10a\(5) & (!\Mult0|auto_generated|le9a\(7) & !\Mult0|auto_generated|add28_result[10]~52COUT1_99\)) # (!\Mult0|auto_generated|le10a\(5) & 
-- ((!\Mult0|auto_generated|add28_result[10]~52COUT1_99\) # (!\Mult0|auto_generated|le9a\(7)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(5),
	datab => \Mult0|auto_generated|le9a\(7),
	cin => \Mult0|auto_generated|add28_result[8]~42\,
	cin0 => \Mult0|auto_generated|add28_result[10]~52\,
	cin1 => \Mult0|auto_generated|add28_result[10]~52COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[11]~55_combout\,
	cout0 => \Mult0|auto_generated|add28_result[11]~57\,
	cout1 => \Mult0|auto_generated|add28_result[11]~57COUT1_100\);

-- Location: LC_X11_Y3_N3
\Mult0|auto_generated|add28_result[12]~60\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[12]~60_combout\ = \Mult0|auto_generated|le9a\(8) $ (\Mult0|auto_generated|le10a\(6) $ ((!(!\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[11]~57\) # 
-- (\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[11]~57COUT1_100\))))
-- \Mult0|auto_generated|add28_result[12]~62\ = CARRY((\Mult0|auto_generated|le9a\(8) & ((\Mult0|auto_generated|le10a\(6)) # (!\Mult0|auto_generated|add28_result[11]~57\))) # (!\Mult0|auto_generated|le9a\(8) & (\Mult0|auto_generated|le10a\(6) & 
-- !\Mult0|auto_generated|add28_result[11]~57\)))
-- \Mult0|auto_generated|add28_result[12]~62COUT1_101\ = CARRY((\Mult0|auto_generated|le9a\(8) & ((\Mult0|auto_generated|le10a\(6)) # (!\Mult0|auto_generated|add28_result[11]~57COUT1_100\))) # (!\Mult0|auto_generated|le9a\(8) & 
-- (\Mult0|auto_generated|le10a\(6) & !\Mult0|auto_generated|add28_result[11]~57COUT1_100\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(8),
	datab => \Mult0|auto_generated|le10a\(6),
	cin => \Mult0|auto_generated|add28_result[8]~42\,
	cin0 => \Mult0|auto_generated|add28_result[11]~57\,
	cin1 => \Mult0|auto_generated|add28_result[11]~57COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[12]~60_combout\,
	cout0 => \Mult0|auto_generated|add28_result[12]~62\,
	cout1 => \Mult0|auto_generated|add28_result[12]~62COUT1_101\);

-- Location: LC_X11_Y3_N4
\Mult0|auto_generated|add28_result[13]~65\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[13]~65_combout\ = \Mult0|auto_generated|le9a\(9) $ (\Mult0|auto_generated|le8a\(11) $ (((!\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[12]~62\) # 
-- (\Mult0|auto_generated|add28_result[8]~42\ & \Mult0|auto_generated|add28_result[12]~62COUT1_101\))))
-- \Mult0|auto_generated|add28_result[13]~67\ = CARRY((\Mult0|auto_generated|le9a\(9) & (!\Mult0|auto_generated|le8a\(11) & !\Mult0|auto_generated|add28_result[12]~62COUT1_101\)) # (!\Mult0|auto_generated|le9a\(9) & 
-- ((!\Mult0|auto_generated|add28_result[12]~62COUT1_101\) # (!\Mult0|auto_generated|le8a\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(9),
	datab => \Mult0|auto_generated|le8a\(11),
	cin => \Mult0|auto_generated|add28_result[8]~42\,
	cin0 => \Mult0|auto_generated|add28_result[12]~62\,
	cin1 => \Mult0|auto_generated|add28_result[12]~62COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[13]~65_combout\,
	cout => \Mult0|auto_generated|add28_result[13]~67\);

-- Location: LC_X8_Y6_N4
\Mult0|auto_generated|op_2~70\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~70_combout\ = \Mult0|auto_generated|add24_result[10]~50_combout\ $ (\Mult0|auto_generated|add28_result[8]~40_combout\ $ ((!(!\Mult0|auto_generated|op_2~47\ & \Mult0|auto_generated|op_2~67\) # (\Mult0|auto_generated|op_2~47\ & 
-- \Mult0|auto_generated|op_2~67COUT1_162\))))
-- \Mult0|auto_generated|op_2~72\ = CARRY((\Mult0|auto_generated|add24_result[10]~50_combout\ & ((\Mult0|auto_generated|add28_result[8]~40_combout\) # (!\Mult0|auto_generated|op_2~67COUT1_162\))) # (!\Mult0|auto_generated|add24_result[10]~50_combout\ & 
-- (\Mult0|auto_generated|add28_result[8]~40_combout\ & !\Mult0|auto_generated|op_2~67COUT1_162\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[10]~50_combout\,
	datab => \Mult0|auto_generated|add28_result[8]~40_combout\,
	cin => \Mult0|auto_generated|op_2~47\,
	cin0 => \Mult0|auto_generated|op_2~67\,
	cin1 => \Mult0|auto_generated|op_2~67COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~70_combout\,
	cout => \Mult0|auto_generated|op_2~72\);

-- Location: LC_X8_Y6_N5
\Mult0|auto_generated|op_2~75\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~75_combout\ = \Mult0|auto_generated|add24_result[11]~55_combout\ $ (\Mult0|auto_generated|add28_result[9]~45_combout\ $ ((\Mult0|auto_generated|op_2~72\)))
-- \Mult0|auto_generated|op_2~77\ = CARRY((\Mult0|auto_generated|add24_result[11]~55_combout\ & (!\Mult0|auto_generated|add28_result[9]~45_combout\ & !\Mult0|auto_generated|op_2~72\)) # (!\Mult0|auto_generated|add24_result[11]~55_combout\ & 
-- ((!\Mult0|auto_generated|op_2~72\) # (!\Mult0|auto_generated|add28_result[9]~45_combout\))))
-- \Mult0|auto_generated|op_2~77COUT1_163\ = CARRY((\Mult0|auto_generated|add24_result[11]~55_combout\ & (!\Mult0|auto_generated|add28_result[9]~45_combout\ & !\Mult0|auto_generated|op_2~72\)) # (!\Mult0|auto_generated|add24_result[11]~55_combout\ & 
-- ((!\Mult0|auto_generated|op_2~72\) # (!\Mult0|auto_generated|add28_result[9]~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[11]~55_combout\,
	datab => \Mult0|auto_generated|add28_result[9]~45_combout\,
	cin => \Mult0|auto_generated|op_2~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~75_combout\,
	cout0 => \Mult0|auto_generated|op_2~77\,
	cout1 => \Mult0|auto_generated|op_2~77COUT1_163\);

-- Location: LC_X8_Y6_N6
\Mult0|auto_generated|op_2~80\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~80_combout\ = \Mult0|auto_generated|add24_result[12]~60_combout\ $ (\Mult0|auto_generated|add28_result[10]~50_combout\ $ ((!(!\Mult0|auto_generated|op_2~72\ & \Mult0|auto_generated|op_2~77\) # (\Mult0|auto_generated|op_2~72\ & 
-- \Mult0|auto_generated|op_2~77COUT1_163\))))
-- \Mult0|auto_generated|op_2~82\ = CARRY((\Mult0|auto_generated|add24_result[12]~60_combout\ & ((\Mult0|auto_generated|add28_result[10]~50_combout\) # (!\Mult0|auto_generated|op_2~77\))) # (!\Mult0|auto_generated|add24_result[12]~60_combout\ & 
-- (\Mult0|auto_generated|add28_result[10]~50_combout\ & !\Mult0|auto_generated|op_2~77\)))
-- \Mult0|auto_generated|op_2~82COUT1_164\ = CARRY((\Mult0|auto_generated|add24_result[12]~60_combout\ & ((\Mult0|auto_generated|add28_result[10]~50_combout\) # (!\Mult0|auto_generated|op_2~77COUT1_163\))) # 
-- (!\Mult0|auto_generated|add24_result[12]~60_combout\ & (\Mult0|auto_generated|add28_result[10]~50_combout\ & !\Mult0|auto_generated|op_2~77COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[12]~60_combout\,
	datab => \Mult0|auto_generated|add28_result[10]~50_combout\,
	cin => \Mult0|auto_generated|op_2~72\,
	cin0 => \Mult0|auto_generated|op_2~77\,
	cin1 => \Mult0|auto_generated|op_2~77COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~80_combout\,
	cout0 => \Mult0|auto_generated|op_2~82\,
	cout1 => \Mult0|auto_generated|op_2~82COUT1_164\);

-- Location: LC_X8_Y6_N7
\Mult0|auto_generated|op_2~85\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~85_combout\ = \Mult0|auto_generated|add24_result[13]~65_combout\ $ (\Mult0|auto_generated|add28_result[11]~55_combout\ $ (((!\Mult0|auto_generated|op_2~72\ & \Mult0|auto_generated|op_2~82\) # (\Mult0|auto_generated|op_2~72\ & 
-- \Mult0|auto_generated|op_2~82COUT1_164\))))
-- \Mult0|auto_generated|op_2~87\ = CARRY((\Mult0|auto_generated|add24_result[13]~65_combout\ & (!\Mult0|auto_generated|add28_result[11]~55_combout\ & !\Mult0|auto_generated|op_2~82\)) # (!\Mult0|auto_generated|add24_result[13]~65_combout\ & 
-- ((!\Mult0|auto_generated|op_2~82\) # (!\Mult0|auto_generated|add28_result[11]~55_combout\))))
-- \Mult0|auto_generated|op_2~87COUT1_165\ = CARRY((\Mult0|auto_generated|add24_result[13]~65_combout\ & (!\Mult0|auto_generated|add28_result[11]~55_combout\ & !\Mult0|auto_generated|op_2~82COUT1_164\)) # (!\Mult0|auto_generated|add24_result[13]~65_combout\ 
-- & ((!\Mult0|auto_generated|op_2~82COUT1_164\) # (!\Mult0|auto_generated|add28_result[11]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[13]~65_combout\,
	datab => \Mult0|auto_generated|add28_result[11]~55_combout\,
	cin => \Mult0|auto_generated|op_2~72\,
	cin0 => \Mult0|auto_generated|op_2~82\,
	cin1 => \Mult0|auto_generated|op_2~82COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~85_combout\,
	cout0 => \Mult0|auto_generated|op_2~87\,
	cout1 => \Mult0|auto_generated|op_2~87COUT1_165\);

-- Location: LC_X8_Y6_N8
\Mult0|auto_generated|op_2~90\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~90_combout\ = \Mult0|auto_generated|add24_result[14]~70_combout\ $ (\Mult0|auto_generated|add28_result[12]~60_combout\ $ ((!(!\Mult0|auto_generated|op_2~72\ & \Mult0|auto_generated|op_2~87\) # (\Mult0|auto_generated|op_2~72\ & 
-- \Mult0|auto_generated|op_2~87COUT1_165\))))
-- \Mult0|auto_generated|op_2~92\ = CARRY((\Mult0|auto_generated|add24_result[14]~70_combout\ & ((\Mult0|auto_generated|add28_result[12]~60_combout\) # (!\Mult0|auto_generated|op_2~87\))) # (!\Mult0|auto_generated|add24_result[14]~70_combout\ & 
-- (\Mult0|auto_generated|add28_result[12]~60_combout\ & !\Mult0|auto_generated|op_2~87\)))
-- \Mult0|auto_generated|op_2~92COUT1_166\ = CARRY((\Mult0|auto_generated|add24_result[14]~70_combout\ & ((\Mult0|auto_generated|add28_result[12]~60_combout\) # (!\Mult0|auto_generated|op_2~87COUT1_165\))) # 
-- (!\Mult0|auto_generated|add24_result[14]~70_combout\ & (\Mult0|auto_generated|add28_result[12]~60_combout\ & !\Mult0|auto_generated|op_2~87COUT1_165\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[14]~70_combout\,
	datab => \Mult0|auto_generated|add28_result[12]~60_combout\,
	cin => \Mult0|auto_generated|op_2~72\,
	cin0 => \Mult0|auto_generated|op_2~87\,
	cin1 => \Mult0|auto_generated|op_2~87COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~90_combout\,
	cout0 => \Mult0|auto_generated|op_2~92\,
	cout1 => \Mult0|auto_generated|op_2~92COUT1_166\);

-- Location: LC_X8_Y6_N9
\Mult0|auto_generated|op_2~95\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~95_combout\ = \Mult0|auto_generated|add24_result[15]~75_combout\ $ (\Mult0|auto_generated|add28_result[13]~65_combout\ $ (((!\Mult0|auto_generated|op_2~72\ & \Mult0|auto_generated|op_2~92\) # (\Mult0|auto_generated|op_2~72\ & 
-- \Mult0|auto_generated|op_2~92COUT1_166\))))
-- \Mult0|auto_generated|op_2~97\ = CARRY((\Mult0|auto_generated|add24_result[15]~75_combout\ & (!\Mult0|auto_generated|add28_result[13]~65_combout\ & !\Mult0|auto_generated|op_2~92COUT1_166\)) # (!\Mult0|auto_generated|add24_result[15]~75_combout\ & 
-- ((!\Mult0|auto_generated|op_2~92COUT1_166\) # (!\Mult0|auto_generated|add28_result[13]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[15]~75_combout\,
	datab => \Mult0|auto_generated|add28_result[13]~65_combout\,
	cin => \Mult0|auto_generated|op_2~72\,
	cin0 => \Mult0|auto_generated|op_2~92\,
	cin1 => \Mult0|auto_generated|op_2~92COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~95_combout\,
	cout => \Mult0|auto_generated|op_2~97\);

-- Location: LC_X8_Y4_N7
\Mult0|auto_generated|add40_result[6]~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add40_result[6]~30_combout\ = (((!(!\Mult0|auto_generated|add40_result[3]~17\ & \Mult0|auto_generated|add40_result[5]~27\) # (\Mult0|auto_generated|add40_result[3]~17\ & \Mult0|auto_generated|add40_result[5]~27COUT1_40\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add40_result[3]~17\,
	cin0 => \Mult0|auto_generated|add40_result[5]~27\,
	cin1 => \Mult0|auto_generated|add40_result[5]~27COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add40_result[6]~30_combout\);

-- Location: LC_X12_Y6_N9
\Mult0|auto_generated|le5a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(17) = LCELL((((\Mult0|auto_generated|cs1a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(17));

-- Location: LC_X11_Y5_N3
\Mult0|auto_generated|le7a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(11) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ ((\input1~combout\(11))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & ((!\input1~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(11),
	datac => \input1~combout\(10),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(11));

-- Location: LC_X12_Y3_N2
\Mult0|auto_generated|le6a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(13) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ (((\input1~combout\(13)))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & (!\input1~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \input1~combout\(12),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(13));

-- Location: LC_X10_Y6_N1
\Mult0|auto_generated|le6a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(12) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ (((\input1~combout\(12)))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & (!\input1~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "52a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \input1~combout\(11),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(12));

-- Location: LC_X11_Y5_N5
\Mult0|auto_generated|le7a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(10) = LCELL((\Mult0|auto_generated|cs2a\(4) & ((\input1~combout\(10) $ (\Mult0|auto_generated|cs1a\(4))))) # (!\Mult0|auto_generated|cs2a\(4) & (!\input1~combout\(9) & ((\Mult0|auto_generated|cs1a\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(9),
	datab => \input1~combout\(10),
	datac => \Mult0|auto_generated|cs1a\(4),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(10));

-- Location: LC_X11_Y5_N2
\Mult0|auto_generated|le7a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(9) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ (((\input1~combout\(9)))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & (!\input1~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(8),
	datac => \input1~combout\(9),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(9));

-- Location: LC_X10_Y6_N7
\Mult0|auto_generated|le6a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(11) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ ((\input1~combout\(11))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & ((!\input1~combout\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \input1~combout\(11),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(11));

-- Location: LC_X11_Y6_N1
\Mult0|auto_generated|le6a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(10) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\input1~combout\(10) $ (((\Mult0|auto_generated|cs1a\(3)))))) # (!\Mult0|auto_generated|cs2a\(3) & (((!\input1~combout\(9) & \Mult0|auto_generated|cs1a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4788",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(10),
	datab => \Mult0|auto_generated|cs2a\(3),
	datac => \input1~combout\(9),
	datad => \Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(10));

-- Location: LC_X9_Y4_N8
\Mult0|auto_generated|le5a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(12) = LCELL((\Mult0|auto_generated|cs2a\(2) & ((\input1~combout\(12) $ (\Mult0|auto_generated|cs1a\(2))))) # (!\Mult0|auto_generated|cs2a\(2) & (!\input1~combout\(11) & ((\Mult0|auto_generated|cs1a\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1ba0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(2),
	datab => \input1~combout\(11),
	datac => \input1~combout\(12),
	datad => \Mult0|auto_generated|cs1a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(12));

-- Location: LC_X11_Y6_N6
\Mult0|auto_generated|add36_result[4]~20\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[4]~20_combout\ = \Mult0|auto_generated|le6a\(10) $ (\Mult0|auto_generated|le5a\(12) $ ((!(!\Mult0|auto_generated|add36_result[2]~12\ & \Mult0|auto_generated|add36_result[3]~17\) # 
-- (\Mult0|auto_generated|add36_result[2]~12\ & \Mult0|auto_generated|add36_result[3]~17COUT1_83\))))
-- \Mult0|auto_generated|add36_result[4]~22\ = CARRY((\Mult0|auto_generated|le6a\(10) & ((\Mult0|auto_generated|le5a\(12)) # (!\Mult0|auto_generated|add36_result[3]~17\))) # (!\Mult0|auto_generated|le6a\(10) & (\Mult0|auto_generated|le5a\(12) & 
-- !\Mult0|auto_generated|add36_result[3]~17\)))
-- \Mult0|auto_generated|add36_result[4]~22COUT1_84\ = CARRY((\Mult0|auto_generated|le6a\(10) & ((\Mult0|auto_generated|le5a\(12)) # (!\Mult0|auto_generated|add36_result[3]~17COUT1_83\))) # (!\Mult0|auto_generated|le6a\(10) & (\Mult0|auto_generated|le5a\(12) 
-- & !\Mult0|auto_generated|add36_result[3]~17COUT1_83\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(10),
	datab => \Mult0|auto_generated|le5a\(12),
	cin => \Mult0|auto_generated|add36_result[2]~12\,
	cin0 => \Mult0|auto_generated|add36_result[3]~17\,
	cin1 => \Mult0|auto_generated|add36_result[3]~17COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[4]~20_combout\,
	cout0 => \Mult0|auto_generated|add36_result[4]~22\,
	cout1 => \Mult0|auto_generated|add36_result[4]~22COUT1_84\);

-- Location: LC_X11_Y6_N7
\Mult0|auto_generated|add36_result[5]~25\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[5]~25_combout\ = \Mult0|auto_generated|le7a\(9) $ (\Mult0|auto_generated|le6a\(11) $ (((!\Mult0|auto_generated|add36_result[2]~12\ & \Mult0|auto_generated|add36_result[4]~22\) # (\Mult0|auto_generated|add36_result[2]~12\ 
-- & \Mult0|auto_generated|add36_result[4]~22COUT1_84\))))
-- \Mult0|auto_generated|add36_result[5]~27\ = CARRY((\Mult0|auto_generated|le7a\(9) & (!\Mult0|auto_generated|le6a\(11) & !\Mult0|auto_generated|add36_result[4]~22\)) # (!\Mult0|auto_generated|le7a\(9) & ((!\Mult0|auto_generated|add36_result[4]~22\) # 
-- (!\Mult0|auto_generated|le6a\(11)))))
-- \Mult0|auto_generated|add36_result[5]~27COUT1_85\ = CARRY((\Mult0|auto_generated|le7a\(9) & (!\Mult0|auto_generated|le6a\(11) & !\Mult0|auto_generated|add36_result[4]~22COUT1_84\)) # (!\Mult0|auto_generated|le7a\(9) & 
-- ((!\Mult0|auto_generated|add36_result[4]~22COUT1_84\) # (!\Mult0|auto_generated|le6a\(11)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(9),
	datab => \Mult0|auto_generated|le6a\(11),
	cin => \Mult0|auto_generated|add36_result[2]~12\,
	cin0 => \Mult0|auto_generated|add36_result[4]~22\,
	cin1 => \Mult0|auto_generated|add36_result[4]~22COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[5]~25_combout\,
	cout0 => \Mult0|auto_generated|add36_result[5]~27\,
	cout1 => \Mult0|auto_generated|add36_result[5]~27COUT1_85\);

-- Location: LC_X11_Y6_N8
\Mult0|auto_generated|add36_result[6]~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[6]~30_combout\ = \Mult0|auto_generated|le6a\(12) $ (\Mult0|auto_generated|le7a\(10) $ ((!(!\Mult0|auto_generated|add36_result[2]~12\ & \Mult0|auto_generated|add36_result[5]~27\) # 
-- (\Mult0|auto_generated|add36_result[2]~12\ & \Mult0|auto_generated|add36_result[5]~27COUT1_85\))))
-- \Mult0|auto_generated|add36_result[6]~32\ = CARRY((\Mult0|auto_generated|le6a\(12) & ((\Mult0|auto_generated|le7a\(10)) # (!\Mult0|auto_generated|add36_result[5]~27\))) # (!\Mult0|auto_generated|le6a\(12) & (\Mult0|auto_generated|le7a\(10) & 
-- !\Mult0|auto_generated|add36_result[5]~27\)))
-- \Mult0|auto_generated|add36_result[6]~32COUT1_86\ = CARRY((\Mult0|auto_generated|le6a\(12) & ((\Mult0|auto_generated|le7a\(10)) # (!\Mult0|auto_generated|add36_result[5]~27COUT1_85\))) # (!\Mult0|auto_generated|le6a\(12) & (\Mult0|auto_generated|le7a\(10) 
-- & !\Mult0|auto_generated|add36_result[5]~27COUT1_85\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(12),
	datab => \Mult0|auto_generated|le7a\(10),
	cin => \Mult0|auto_generated|add36_result[2]~12\,
	cin0 => \Mult0|auto_generated|add36_result[5]~27\,
	cin1 => \Mult0|auto_generated|add36_result[5]~27COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[6]~30_combout\,
	cout0 => \Mult0|auto_generated|add36_result[6]~32\,
	cout1 => \Mult0|auto_generated|add36_result[6]~32COUT1_86\);

-- Location: LC_X11_Y6_N9
\Mult0|auto_generated|add36_result[7]~35\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[7]~35_combout\ = \Mult0|auto_generated|le7a\(11) $ (\Mult0|auto_generated|le6a\(13) $ (((!\Mult0|auto_generated|add36_result[2]~12\ & \Mult0|auto_generated|add36_result[6]~32\) # 
-- (\Mult0|auto_generated|add36_result[2]~12\ & \Mult0|auto_generated|add36_result[6]~32COUT1_86\))))
-- \Mult0|auto_generated|add36_result[7]~37\ = CARRY((\Mult0|auto_generated|le7a\(11) & (!\Mult0|auto_generated|le6a\(13) & !\Mult0|auto_generated|add36_result[6]~32COUT1_86\)) # (!\Mult0|auto_generated|le7a\(11) & 
-- ((!\Mult0|auto_generated|add36_result[6]~32COUT1_86\) # (!\Mult0|auto_generated|le6a\(13)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(11),
	datab => \Mult0|auto_generated|le6a\(13),
	cin => \Mult0|auto_generated|add36_result[2]~12\,
	cin0 => \Mult0|auto_generated|add36_result[6]~32\,
	cin1 => \Mult0|auto_generated|add36_result[6]~32COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[7]~35_combout\,
	cout => \Mult0|auto_generated|add36_result[7]~37\);

-- Location: LC_X12_Y5_N0
\Mult0|auto_generated|le6a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(14) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\input1~combout\(14) $ ((\Mult0|auto_generated|cs1a\(3))))) # (!\Mult0|auto_generated|cs2a\(3) & (((\Mult0|auto_generated|cs1a\(3) & !\input1~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \Mult0|auto_generated|cs2a\(3),
	datac => \Mult0|auto_generated|cs1a\(3),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(14));

-- Location: LC_X10_Y6_N3
\Mult0|auto_generated|le5a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le5a\(16) = LCELL(((\Mult0|auto_generated|cs1a\(2) & ((\Mult0|auto_generated|cs2a\(2)) # (!\input1~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|cs1a\(2),
	datac => \Mult0|auto_generated|cs2a\(2),
	datad => \input1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le5a\(16));

-- Location: LC_X12_Y6_N0
\Mult0|auto_generated|add36_result[8]~40\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[8]~40_combout\ = \Mult0|auto_generated|le6a\(14) $ (\Mult0|auto_generated|le5a\(16) $ ((!\Mult0|auto_generated|add36_result[7]~37\)))
-- \Mult0|auto_generated|add36_result[8]~42\ = CARRY((\Mult0|auto_generated|le6a\(14) & ((\Mult0|auto_generated|le5a\(16)) # (!\Mult0|auto_generated|add36_result[7]~37\))) # (!\Mult0|auto_generated|le6a\(14) & (\Mult0|auto_generated|le5a\(16) & 
-- !\Mult0|auto_generated|add36_result[7]~37\)))
-- \Mult0|auto_generated|add36_result[8]~42COUT1_87\ = CARRY((\Mult0|auto_generated|le6a\(14) & ((\Mult0|auto_generated|le5a\(16)) # (!\Mult0|auto_generated|add36_result[7]~37\))) # (!\Mult0|auto_generated|le6a\(14) & (\Mult0|auto_generated|le5a\(16) & 
-- !\Mult0|auto_generated|add36_result[7]~37\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le6a\(14),
	datab => \Mult0|auto_generated|le5a\(16),
	cin => \Mult0|auto_generated|add36_result[7]~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[8]~40_combout\,
	cout0 => \Mult0|auto_generated|add36_result[8]~42\,
	cout1 => \Mult0|auto_generated|add36_result[8]~42COUT1_87\);

-- Location: LC_X12_Y6_N1
\Mult0|auto_generated|add36_result[9]~45\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[9]~45_combout\ = \Mult0|auto_generated|add40_result[6]~30_combout\ $ (\Mult0|auto_generated|le5a\(17) $ ((!(!\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[8]~42\) # 
-- (\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[8]~42COUT1_87\))))
-- \Mult0|auto_generated|add36_result[9]~47\ = CARRY((\Mult0|auto_generated|add40_result[6]~30_combout\ & (\Mult0|auto_generated|le5a\(17) & !\Mult0|auto_generated|add36_result[8]~42\)) # (!\Mult0|auto_generated|add40_result[6]~30_combout\ & 
-- ((\Mult0|auto_generated|le5a\(17)) # (!\Mult0|auto_generated|add36_result[8]~42\))))
-- \Mult0|auto_generated|add36_result[9]~47COUT1_88\ = CARRY((\Mult0|auto_generated|add40_result[6]~30_combout\ & (\Mult0|auto_generated|le5a\(17) & !\Mult0|auto_generated|add36_result[8]~42COUT1_87\)) # (!\Mult0|auto_generated|add40_result[6]~30_combout\ & 
-- ((\Mult0|auto_generated|le5a\(17)) # (!\Mult0|auto_generated|add36_result[8]~42COUT1_87\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add40_result[6]~30_combout\,
	datab => \Mult0|auto_generated|le5a\(17),
	cin => \Mult0|auto_generated|add36_result[7]~37\,
	cin0 => \Mult0|auto_generated|add36_result[8]~42\,
	cin1 => \Mult0|auto_generated|add36_result[8]~42COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[9]~45_combout\,
	cout0 => \Mult0|auto_generated|add36_result[9]~47\,
	cout1 => \Mult0|auto_generated|add36_result[9]~47COUT1_88\);

-- Location: LC_X12_Y3_N6
\Mult0|auto_generated|le7a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(13) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ (((\input1~combout\(13)))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & (!\input1~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(12),
	datac => \input1~combout\(13),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(13));

-- Location: LC_X12_Y3_N5
\Mult0|auto_generated|le6a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(15) = LCELL((\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) $ ((\input1~combout\(15))))) # (!\Mult0|auto_generated|cs2a\(3) & (\Mult0|auto_generated|cs1a\(3) & ((!\input1~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "606a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datab => \input1~combout\(15),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(15));

-- Location: LC_X11_Y5_N1
\Mult0|auto_generated|le7a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(8) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ (((\input1~combout\(8)))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & (!\input1~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(7),
	datac => \input1~combout\(8),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(8));

-- Location: LC_X11_Y4_N0
\Mult0|auto_generated|le8a[6]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(6) = LCELL((\Mult0|auto_generated|cs2a\(5) & ((\Mult0|auto_generated|cs1a\(5) $ (\input1~combout\(6))))) # (!\Mult0|auto_generated|cs2a\(5) & (!\input1~combout\(5) & (\Mult0|auto_generated|cs1a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(5),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \input1~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(6));

-- Location: LC_X11_Y4_N9
\Mult0|auto_generated|add32_result[6]~30\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[6]~30_combout\ = \Mult0|auto_generated|le7a\(8) $ (\Mult0|auto_generated|le8a\(6) $ ((!(!\Mult0|auto_generated|add32_result[1]~7\ & \Mult0|auto_generated|add32_result[5]~27\) # (\Mult0|auto_generated|add32_result[1]~7\ & 
-- \Mult0|auto_generated|add32_result[5]~27COUT1_75\))))
-- \Mult0|auto_generated|add32_result[6]~32\ = CARRY((\Mult0|auto_generated|le7a\(8) & ((\Mult0|auto_generated|le8a\(6)) # (!\Mult0|auto_generated|add32_result[5]~27COUT1_75\))) # (!\Mult0|auto_generated|le7a\(8) & (\Mult0|auto_generated|le8a\(6) & 
-- !\Mult0|auto_generated|add32_result[5]~27COUT1_75\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(8),
	datab => \Mult0|auto_generated|le8a\(6),
	cin => \Mult0|auto_generated|add32_result[1]~7\,
	cin0 => \Mult0|auto_generated|add32_result[5]~27\,
	cin1 => \Mult0|auto_generated|add32_result[5]~27COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[6]~30_combout\,
	cout => \Mult0|auto_generated|add32_result[6]~32\);

-- Location: LC_X12_Y3_N7
\Mult0|auto_generated|le7a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(12) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ ((\input1~combout\(12))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & ((!\input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(12),
	datac => \input1~combout\(11),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(12));

-- Location: LC_X12_Y5_N5
\Mult0|auto_generated|le8a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(10) = LCELL((\Mult0|auto_generated|cs2a\(5) & ((\input1~combout\(10) $ (\Mult0|auto_generated|cs1a\(5))))) # (!\Mult0|auto_generated|cs2a\(5) & (!\input1~combout\(9) & ((\Mult0|auto_generated|cs1a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "35c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(9),
	datab => \input1~combout\(10),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \Mult0|auto_generated|cs1a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(10));

-- Location: LC_X12_Y4_N9
\Mult0|auto_generated|le8a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(9) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) $ ((\input1~combout\(9))))) # (!\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) & ((!\input1~combout\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(5),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \input1~combout\(9),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(9));

-- Location: LC_X12_Y2_N2
\Mult0|auto_generated|le3a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le3a\(17) = LCELL((((\Mult0|auto_generated|cs1a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|cs1a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le3a\(17));

-- Location: LC_X12_Y4_N7
\Mult0|auto_generated|le8a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(8) = LCELL((\Mult0|auto_generated|cs2a\(5) & ((\Mult0|auto_generated|cs1a\(5) $ (\input1~combout\(8))))) # (!\Mult0|auto_generated|cs2a\(5) & (!\input1~combout\(7) & (\Mult0|auto_generated|cs1a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(7),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(8));

-- Location: LC_X12_Y4_N8
\Mult0|auto_generated|le8a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(7) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) $ (((\input1~combout\(7)))))) # (!\Mult0|auto_generated|cs2a\(5) & (\Mult0|auto_generated|cs1a\(5) & (!\input1~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(5),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \input1~combout\(6),
	datad => \input1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(7));

-- Location: LC_X12_Y4_N0
\Mult0|auto_generated|add32_result[7]~35\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[7]~35_combout\ = \Mult0|auto_generated|le8a\(7) $ (\Mult0|auto_generated|le3a\(17) $ ((\Mult0|auto_generated|add32_result[6]~32\)))
-- \Mult0|auto_generated|add32_result[7]~37\ = CARRY((\Mult0|auto_generated|le8a\(7) & (!\Mult0|auto_generated|le3a\(17) & !\Mult0|auto_generated|add32_result[6]~32\)) # (!\Mult0|auto_generated|le8a\(7) & ((!\Mult0|auto_generated|add32_result[6]~32\) # 
-- (!\Mult0|auto_generated|le3a\(17)))))
-- \Mult0|auto_generated|add32_result[7]~37COUT1_76\ = CARRY((\Mult0|auto_generated|le8a\(7) & (!\Mult0|auto_generated|le3a\(17) & !\Mult0|auto_generated|add32_result[6]~32\)) # (!\Mult0|auto_generated|le8a\(7) & ((!\Mult0|auto_generated|add32_result[6]~32\) 
-- # (!\Mult0|auto_generated|le3a\(17)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le8a\(7),
	datab => \Mult0|auto_generated|le3a\(17),
	cin => \Mult0|auto_generated|add32_result[6]~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[7]~35_combout\,
	cout0 => \Mult0|auto_generated|add32_result[7]~37\,
	cout1 => \Mult0|auto_generated|add32_result[7]~37COUT1_76\);

-- Location: LC_X12_Y4_N1
\Mult0|auto_generated|add32_result[8]~40\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[8]~40_combout\ = \Mult0|auto_generated|le8a\(8) $ (\Mult0|auto_generated|le3a\(17) $ ((!(!\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[7]~37\) # 
-- (\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[7]~37COUT1_76\))))
-- \Mult0|auto_generated|add32_result[8]~42\ = CARRY((\Mult0|auto_generated|le8a\(8) & ((\Mult0|auto_generated|le3a\(17)) # (!\Mult0|auto_generated|add32_result[7]~37\))) # (!\Mult0|auto_generated|le8a\(8) & (\Mult0|auto_generated|le3a\(17) & 
-- !\Mult0|auto_generated|add32_result[7]~37\)))
-- \Mult0|auto_generated|add32_result[8]~42COUT1_77\ = CARRY((\Mult0|auto_generated|le8a\(8) & ((\Mult0|auto_generated|le3a\(17)) # (!\Mult0|auto_generated|add32_result[7]~37COUT1_76\))) # (!\Mult0|auto_generated|le8a\(8) & (\Mult0|auto_generated|le3a\(17) & 
-- !\Mult0|auto_generated|add32_result[7]~37COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le8a\(8),
	datab => \Mult0|auto_generated|le3a\(17),
	cin => \Mult0|auto_generated|add32_result[6]~32\,
	cin0 => \Mult0|auto_generated|add32_result[7]~37\,
	cin1 => \Mult0|auto_generated|add32_result[7]~37COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[8]~40_combout\,
	cout0 => \Mult0|auto_generated|add32_result[8]~42\,
	cout1 => \Mult0|auto_generated|add32_result[8]~42COUT1_77\);

-- Location: LC_X12_Y4_N2
\Mult0|auto_generated|add32_result[9]~45\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[9]~45_combout\ = \Mult0|auto_generated|le8a\(9) $ (\Mult0|auto_generated|le3a\(17) $ ((!(!\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[8]~42\) # 
-- (\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[8]~42COUT1_77\))))
-- \Mult0|auto_generated|add32_result[9]~47\ = CARRY((\Mult0|auto_generated|le8a\(9) & (\Mult0|auto_generated|le3a\(17) & !\Mult0|auto_generated|add32_result[8]~42\)) # (!\Mult0|auto_generated|le8a\(9) & ((\Mult0|auto_generated|le3a\(17)) # 
-- (!\Mult0|auto_generated|add32_result[8]~42\))))
-- \Mult0|auto_generated|add32_result[9]~47COUT1_78\ = CARRY((\Mult0|auto_generated|le8a\(9) & (\Mult0|auto_generated|le3a\(17) & !\Mult0|auto_generated|add32_result[8]~42COUT1_77\)) # (!\Mult0|auto_generated|le8a\(9) & ((\Mult0|auto_generated|le3a\(17)) # 
-- (!\Mult0|auto_generated|add32_result[8]~42COUT1_77\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le8a\(9),
	datab => \Mult0|auto_generated|le3a\(17),
	cin => \Mult0|auto_generated|add32_result[6]~32\,
	cin0 => \Mult0|auto_generated|add32_result[8]~42\,
	cin1 => \Mult0|auto_generated|add32_result[8]~42COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[9]~45_combout\,
	cout0 => \Mult0|auto_generated|add32_result[9]~47\,
	cout1 => \Mult0|auto_generated|add32_result[9]~47COUT1_78\);

-- Location: LC_X12_Y4_N3
\Mult0|auto_generated|add32_result[10]~50\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[10]~50_combout\ = \Mult0|auto_generated|le7a\(12) $ (\Mult0|auto_generated|le8a\(10) $ ((!(!\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[9]~47\) # 
-- (\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[9]~47COUT1_78\))))
-- \Mult0|auto_generated|add32_result[10]~52\ = CARRY((\Mult0|auto_generated|le7a\(12) & ((\Mult0|auto_generated|le8a\(10)) # (!\Mult0|auto_generated|add32_result[9]~47\))) # (!\Mult0|auto_generated|le7a\(12) & (\Mult0|auto_generated|le8a\(10) & 
-- !\Mult0|auto_generated|add32_result[9]~47\)))
-- \Mult0|auto_generated|add32_result[10]~52COUT1_79\ = CARRY((\Mult0|auto_generated|le7a\(12) & ((\Mult0|auto_generated|le8a\(10)) # (!\Mult0|auto_generated|add32_result[9]~47COUT1_78\))) # (!\Mult0|auto_generated|le7a\(12) & 
-- (\Mult0|auto_generated|le8a\(10) & !\Mult0|auto_generated|add32_result[9]~47COUT1_78\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(12),
	datab => \Mult0|auto_generated|le8a\(10),
	cin => \Mult0|auto_generated|add32_result[6]~32\,
	cin0 => \Mult0|auto_generated|add32_result[9]~47\,
	cin1 => \Mult0|auto_generated|add32_result[9]~47COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[10]~50_combout\,
	cout0 => \Mult0|auto_generated|add32_result[10]~52\,
	cout1 => \Mult0|auto_generated|add32_result[10]~52COUT1_79\);

-- Location: LC_X12_Y4_N4
\Mult0|auto_generated|add32_result[11]~55\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[11]~55_combout\ = \Mult0|auto_generated|le7a\(13) $ (\Mult0|auto_generated|le6a\(15) $ (((!\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[10]~52\) # 
-- (\Mult0|auto_generated|add32_result[6]~32\ & \Mult0|auto_generated|add32_result[10]~52COUT1_79\))))
-- \Mult0|auto_generated|add32_result[11]~57\ = CARRY((\Mult0|auto_generated|le7a\(13) & (!\Mult0|auto_generated|le6a\(15) & !\Mult0|auto_generated|add32_result[10]~52COUT1_79\)) # (!\Mult0|auto_generated|le7a\(13) & 
-- ((!\Mult0|auto_generated|add32_result[10]~52COUT1_79\) # (!\Mult0|auto_generated|le6a\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(13),
	datab => \Mult0|auto_generated|le6a\(15),
	cin => \Mult0|auto_generated|add32_result[6]~32\,
	cin0 => \Mult0|auto_generated|add32_result[10]~52\,
	cin1 => \Mult0|auto_generated|add32_result[10]~52COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[11]~55_combout\,
	cout => \Mult0|auto_generated|add32_result[11]~57\);

-- Location: LC_X11_Y7_N3
\Mult0|auto_generated|op_3~60\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~60_combout\ = \Mult0|auto_generated|add36_result[4]~20_combout\ $ (\Mult0|auto_generated|add32_result[6]~30_combout\ $ ((!(!\Mult0|auto_generated|op_3~42\ & \Mult0|auto_generated|op_3~57\) # (\Mult0|auto_generated|op_3~42\ & 
-- \Mult0|auto_generated|op_3~57COUT1_150\))))
-- \Mult0|auto_generated|op_3~62\ = CARRY((\Mult0|auto_generated|add36_result[4]~20_combout\ & ((\Mult0|auto_generated|add32_result[6]~30_combout\) # (!\Mult0|auto_generated|op_3~57\))) # (!\Mult0|auto_generated|add36_result[4]~20_combout\ & 
-- (\Mult0|auto_generated|add32_result[6]~30_combout\ & !\Mult0|auto_generated|op_3~57\)))
-- \Mult0|auto_generated|op_3~62COUT1_151\ = CARRY((\Mult0|auto_generated|add36_result[4]~20_combout\ & ((\Mult0|auto_generated|add32_result[6]~30_combout\) # (!\Mult0|auto_generated|op_3~57COUT1_150\))) # (!\Mult0|auto_generated|add36_result[4]~20_combout\ 
-- & (\Mult0|auto_generated|add32_result[6]~30_combout\ & !\Mult0|auto_generated|op_3~57COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[4]~20_combout\,
	datab => \Mult0|auto_generated|add32_result[6]~30_combout\,
	cin => \Mult0|auto_generated|op_3~42\,
	cin0 => \Mult0|auto_generated|op_3~57\,
	cin1 => \Mult0|auto_generated|op_3~57COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~60_combout\,
	cout0 => \Mult0|auto_generated|op_3~62\,
	cout1 => \Mult0|auto_generated|op_3~62COUT1_151\);

-- Location: LC_X11_Y7_N4
\Mult0|auto_generated|op_3~65\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~65_combout\ = \Mult0|auto_generated|add36_result[5]~25_combout\ $ (\Mult0|auto_generated|add32_result[7]~35_combout\ $ (((!\Mult0|auto_generated|op_3~42\ & \Mult0|auto_generated|op_3~62\) # (\Mult0|auto_generated|op_3~42\ & 
-- \Mult0|auto_generated|op_3~62COUT1_151\))))
-- \Mult0|auto_generated|op_3~67\ = CARRY((\Mult0|auto_generated|add36_result[5]~25_combout\ & (!\Mult0|auto_generated|add32_result[7]~35_combout\ & !\Mult0|auto_generated|op_3~62COUT1_151\)) # (!\Mult0|auto_generated|add36_result[5]~25_combout\ & 
-- ((!\Mult0|auto_generated|op_3~62COUT1_151\) # (!\Mult0|auto_generated|add32_result[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[5]~25_combout\,
	datab => \Mult0|auto_generated|add32_result[7]~35_combout\,
	cin => \Mult0|auto_generated|op_3~42\,
	cin0 => \Mult0|auto_generated|op_3~62\,
	cin1 => \Mult0|auto_generated|op_3~62COUT1_151\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~65_combout\,
	cout => \Mult0|auto_generated|op_3~67\);

-- Location: LC_X11_Y7_N5
\Mult0|auto_generated|op_3~70\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~70_combout\ = \Mult0|auto_generated|add32_result[8]~40_combout\ $ (\Mult0|auto_generated|add36_result[6]~30_combout\ $ ((!\Mult0|auto_generated|op_3~67\)))
-- \Mult0|auto_generated|op_3~72\ = CARRY((\Mult0|auto_generated|add32_result[8]~40_combout\ & ((\Mult0|auto_generated|add36_result[6]~30_combout\) # (!\Mult0|auto_generated|op_3~67\))) # (!\Mult0|auto_generated|add32_result[8]~40_combout\ & 
-- (\Mult0|auto_generated|add36_result[6]~30_combout\ & !\Mult0|auto_generated|op_3~67\)))
-- \Mult0|auto_generated|op_3~72COUT1_152\ = CARRY((\Mult0|auto_generated|add32_result[8]~40_combout\ & ((\Mult0|auto_generated|add36_result[6]~30_combout\) # (!\Mult0|auto_generated|op_3~67\))) # (!\Mult0|auto_generated|add32_result[8]~40_combout\ & 
-- (\Mult0|auto_generated|add36_result[6]~30_combout\ & !\Mult0|auto_generated|op_3~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add32_result[8]~40_combout\,
	datab => \Mult0|auto_generated|add36_result[6]~30_combout\,
	cin => \Mult0|auto_generated|op_3~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~70_combout\,
	cout0 => \Mult0|auto_generated|op_3~72\,
	cout1 => \Mult0|auto_generated|op_3~72COUT1_152\);

-- Location: LC_X11_Y7_N6
\Mult0|auto_generated|op_3~75\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~75_combout\ = \Mult0|auto_generated|add32_result[9]~45_combout\ $ (\Mult0|auto_generated|add36_result[7]~35_combout\ $ (((!\Mult0|auto_generated|op_3~67\ & \Mult0|auto_generated|op_3~72\) # (\Mult0|auto_generated|op_3~67\ & 
-- \Mult0|auto_generated|op_3~72COUT1_152\))))
-- \Mult0|auto_generated|op_3~77\ = CARRY((\Mult0|auto_generated|add32_result[9]~45_combout\ & (!\Mult0|auto_generated|add36_result[7]~35_combout\ & !\Mult0|auto_generated|op_3~72\)) # (!\Mult0|auto_generated|add32_result[9]~45_combout\ & 
-- ((!\Mult0|auto_generated|op_3~72\) # (!\Mult0|auto_generated|add36_result[7]~35_combout\))))
-- \Mult0|auto_generated|op_3~77COUT1_153\ = CARRY((\Mult0|auto_generated|add32_result[9]~45_combout\ & (!\Mult0|auto_generated|add36_result[7]~35_combout\ & !\Mult0|auto_generated|op_3~72COUT1_152\)) # (!\Mult0|auto_generated|add32_result[9]~45_combout\ & 
-- ((!\Mult0|auto_generated|op_3~72COUT1_152\) # (!\Mult0|auto_generated|add36_result[7]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add32_result[9]~45_combout\,
	datab => \Mult0|auto_generated|add36_result[7]~35_combout\,
	cin => \Mult0|auto_generated|op_3~67\,
	cin0 => \Mult0|auto_generated|op_3~72\,
	cin1 => \Mult0|auto_generated|op_3~72COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~75_combout\,
	cout0 => \Mult0|auto_generated|op_3~77\,
	cout1 => \Mult0|auto_generated|op_3~77COUT1_153\);

-- Location: LC_X11_Y7_N7
\Mult0|auto_generated|op_3~80\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~80_combout\ = \Mult0|auto_generated|add36_result[8]~40_combout\ $ (\Mult0|auto_generated|add32_result[10]~50_combout\ $ ((!(!\Mult0|auto_generated|op_3~67\ & \Mult0|auto_generated|op_3~77\) # (\Mult0|auto_generated|op_3~67\ & 
-- \Mult0|auto_generated|op_3~77COUT1_153\))))
-- \Mult0|auto_generated|op_3~82\ = CARRY((\Mult0|auto_generated|add36_result[8]~40_combout\ & ((\Mult0|auto_generated|add32_result[10]~50_combout\) # (!\Mult0|auto_generated|op_3~77\))) # (!\Mult0|auto_generated|add36_result[8]~40_combout\ & 
-- (\Mult0|auto_generated|add32_result[10]~50_combout\ & !\Mult0|auto_generated|op_3~77\)))
-- \Mult0|auto_generated|op_3~82COUT1_154\ = CARRY((\Mult0|auto_generated|add36_result[8]~40_combout\ & ((\Mult0|auto_generated|add32_result[10]~50_combout\) # (!\Mult0|auto_generated|op_3~77COUT1_153\))) # (!\Mult0|auto_generated|add36_result[8]~40_combout\ 
-- & (\Mult0|auto_generated|add32_result[10]~50_combout\ & !\Mult0|auto_generated|op_3~77COUT1_153\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[8]~40_combout\,
	datab => \Mult0|auto_generated|add32_result[10]~50_combout\,
	cin => \Mult0|auto_generated|op_3~67\,
	cin0 => \Mult0|auto_generated|op_3~77\,
	cin1 => \Mult0|auto_generated|op_3~77COUT1_153\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~80_combout\,
	cout0 => \Mult0|auto_generated|op_3~82\,
	cout1 => \Mult0|auto_generated|op_3~82COUT1_154\);

-- Location: LC_X11_Y7_N8
\Mult0|auto_generated|op_3~85\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~85_combout\ = \Mult0|auto_generated|add36_result[9]~45_combout\ $ (\Mult0|auto_generated|add32_result[11]~55_combout\ $ (((!\Mult0|auto_generated|op_3~67\ & \Mult0|auto_generated|op_3~82\) # (\Mult0|auto_generated|op_3~67\ & 
-- \Mult0|auto_generated|op_3~82COUT1_154\))))
-- \Mult0|auto_generated|op_3~87\ = CARRY((\Mult0|auto_generated|add36_result[9]~45_combout\ & (!\Mult0|auto_generated|add32_result[11]~55_combout\ & !\Mult0|auto_generated|op_3~82\)) # (!\Mult0|auto_generated|add36_result[9]~45_combout\ & 
-- ((!\Mult0|auto_generated|op_3~82\) # (!\Mult0|auto_generated|add32_result[11]~55_combout\))))
-- \Mult0|auto_generated|op_3~87COUT1_155\ = CARRY((\Mult0|auto_generated|add36_result[9]~45_combout\ & (!\Mult0|auto_generated|add32_result[11]~55_combout\ & !\Mult0|auto_generated|op_3~82COUT1_154\)) # (!\Mult0|auto_generated|add36_result[9]~45_combout\ & 
-- ((!\Mult0|auto_generated|op_3~82COUT1_154\) # (!\Mult0|auto_generated|add32_result[11]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[9]~45_combout\,
	datab => \Mult0|auto_generated|add32_result[11]~55_combout\,
	cin => \Mult0|auto_generated|op_3~67\,
	cin0 => \Mult0|auto_generated|op_3~82\,
	cin1 => \Mult0|auto_generated|op_3~82COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~85_combout\,
	cout0 => \Mult0|auto_generated|op_3~87\,
	cout1 => \Mult0|auto_generated|op_3~87COUT1_155\);

-- Location: LC_X8_Y7_N0
\Mult0|auto_generated|op_1~80\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~80_combout\ = \Mult0|auto_generated|op_2~70_combout\ $ (\Mult0|auto_generated|op_3~60_combout\ $ ((!\Mult0|auto_generated|op_1~77\)))
-- \Mult0|auto_generated|op_1~82\ = CARRY((\Mult0|auto_generated|op_2~70_combout\ & ((\Mult0|auto_generated|op_3~60_combout\) # (!\Mult0|auto_generated|op_1~77\))) # (!\Mult0|auto_generated|op_2~70_combout\ & (\Mult0|auto_generated|op_3~60_combout\ & 
-- !\Mult0|auto_generated|op_1~77\)))
-- \Mult0|auto_generated|op_1~82COUT1_173\ = CARRY((\Mult0|auto_generated|op_2~70_combout\ & ((\Mult0|auto_generated|op_3~60_combout\) # (!\Mult0|auto_generated|op_1~77\))) # (!\Mult0|auto_generated|op_2~70_combout\ & (\Mult0|auto_generated|op_3~60_combout\ 
-- & !\Mult0|auto_generated|op_1~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~70_combout\,
	datab => \Mult0|auto_generated|op_3~60_combout\,
	cin => \Mult0|auto_generated|op_1~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~80_combout\,
	cout0 => \Mult0|auto_generated|op_1~82\,
	cout1 => \Mult0|auto_generated|op_1~82COUT1_173\);

-- Location: LC_X8_Y7_N1
\Mult0|auto_generated|op_1~85\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~85_combout\ = \Mult0|auto_generated|op_3~65_combout\ $ (\Mult0|auto_generated|op_2~75_combout\ $ (((!\Mult0|auto_generated|op_1~77\ & \Mult0|auto_generated|op_1~82\) # (\Mult0|auto_generated|op_1~77\ & 
-- \Mult0|auto_generated|op_1~82COUT1_173\))))
-- \Mult0|auto_generated|op_1~87\ = CARRY((\Mult0|auto_generated|op_3~65_combout\ & (!\Mult0|auto_generated|op_2~75_combout\ & !\Mult0|auto_generated|op_1~82\)) # (!\Mult0|auto_generated|op_3~65_combout\ & ((!\Mult0|auto_generated|op_1~82\) # 
-- (!\Mult0|auto_generated|op_2~75_combout\))))
-- \Mult0|auto_generated|op_1~87COUT1_174\ = CARRY((\Mult0|auto_generated|op_3~65_combout\ & (!\Mult0|auto_generated|op_2~75_combout\ & !\Mult0|auto_generated|op_1~82COUT1_173\)) # (!\Mult0|auto_generated|op_3~65_combout\ & 
-- ((!\Mult0|auto_generated|op_1~82COUT1_173\) # (!\Mult0|auto_generated|op_2~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~65_combout\,
	datab => \Mult0|auto_generated|op_2~75_combout\,
	cin => \Mult0|auto_generated|op_1~77\,
	cin0 => \Mult0|auto_generated|op_1~82\,
	cin1 => \Mult0|auto_generated|op_1~82COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~85_combout\,
	cout0 => \Mult0|auto_generated|op_1~87\,
	cout1 => \Mult0|auto_generated|op_1~87COUT1_174\);

-- Location: LC_X8_Y7_N2
\Mult0|auto_generated|op_1~90\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~90_combout\ = \Mult0|auto_generated|op_2~80_combout\ $ (\Mult0|auto_generated|op_3~70_combout\ $ ((!(!\Mult0|auto_generated|op_1~77\ & \Mult0|auto_generated|op_1~87\) # (\Mult0|auto_generated|op_1~77\ & 
-- \Mult0|auto_generated|op_1~87COUT1_174\))))
-- \Mult0|auto_generated|op_1~92\ = CARRY((\Mult0|auto_generated|op_2~80_combout\ & ((\Mult0|auto_generated|op_3~70_combout\) # (!\Mult0|auto_generated|op_1~87\))) # (!\Mult0|auto_generated|op_2~80_combout\ & (\Mult0|auto_generated|op_3~70_combout\ & 
-- !\Mult0|auto_generated|op_1~87\)))
-- \Mult0|auto_generated|op_1~92COUT1_175\ = CARRY((\Mult0|auto_generated|op_2~80_combout\ & ((\Mult0|auto_generated|op_3~70_combout\) # (!\Mult0|auto_generated|op_1~87COUT1_174\))) # (!\Mult0|auto_generated|op_2~80_combout\ & 
-- (\Mult0|auto_generated|op_3~70_combout\ & !\Mult0|auto_generated|op_1~87COUT1_174\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~80_combout\,
	datab => \Mult0|auto_generated|op_3~70_combout\,
	cin => \Mult0|auto_generated|op_1~77\,
	cin0 => \Mult0|auto_generated|op_1~87\,
	cin1 => \Mult0|auto_generated|op_1~87COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~90_combout\,
	cout0 => \Mult0|auto_generated|op_1~92\,
	cout1 => \Mult0|auto_generated|op_1~92COUT1_175\);

-- Location: LC_X8_Y7_N3
\Mult0|auto_generated|op_1~95\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~95_combout\ = \Mult0|auto_generated|op_2~85_combout\ $ (\Mult0|auto_generated|op_3~75_combout\ $ (((!\Mult0|auto_generated|op_1~77\ & \Mult0|auto_generated|op_1~92\) # (\Mult0|auto_generated|op_1~77\ & 
-- \Mult0|auto_generated|op_1~92COUT1_175\))))
-- \Mult0|auto_generated|op_1~97\ = CARRY((\Mult0|auto_generated|op_2~85_combout\ & (!\Mult0|auto_generated|op_3~75_combout\ & !\Mult0|auto_generated|op_1~92\)) # (!\Mult0|auto_generated|op_2~85_combout\ & ((!\Mult0|auto_generated|op_1~92\) # 
-- (!\Mult0|auto_generated|op_3~75_combout\))))
-- \Mult0|auto_generated|op_1~97COUT1_176\ = CARRY((\Mult0|auto_generated|op_2~85_combout\ & (!\Mult0|auto_generated|op_3~75_combout\ & !\Mult0|auto_generated|op_1~92COUT1_175\)) # (!\Mult0|auto_generated|op_2~85_combout\ & 
-- ((!\Mult0|auto_generated|op_1~92COUT1_175\) # (!\Mult0|auto_generated|op_3~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~85_combout\,
	datab => \Mult0|auto_generated|op_3~75_combout\,
	cin => \Mult0|auto_generated|op_1~77\,
	cin0 => \Mult0|auto_generated|op_1~92\,
	cin1 => \Mult0|auto_generated|op_1~92COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~95_combout\,
	cout0 => \Mult0|auto_generated|op_1~97\,
	cout1 => \Mult0|auto_generated|op_1~97COUT1_176\);

-- Location: LC_X8_Y7_N4
\Mult0|auto_generated|op_1~100\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~100_combout\ = \Mult0|auto_generated|op_2~90_combout\ $ (\Mult0|auto_generated|op_3~80_combout\ $ ((!(!\Mult0|auto_generated|op_1~77\ & \Mult0|auto_generated|op_1~97\) # (\Mult0|auto_generated|op_1~77\ & 
-- \Mult0|auto_generated|op_1~97COUT1_176\))))
-- \Mult0|auto_generated|op_1~102\ = CARRY((\Mult0|auto_generated|op_2~90_combout\ & ((\Mult0|auto_generated|op_3~80_combout\) # (!\Mult0|auto_generated|op_1~97COUT1_176\))) # (!\Mult0|auto_generated|op_2~90_combout\ & (\Mult0|auto_generated|op_3~80_combout\ 
-- & !\Mult0|auto_generated|op_1~97COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~90_combout\,
	datab => \Mult0|auto_generated|op_3~80_combout\,
	cin => \Mult0|auto_generated|op_1~77\,
	cin0 => \Mult0|auto_generated|op_1~97\,
	cin1 => \Mult0|auto_generated|op_1~97COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~100_combout\,
	cout => \Mult0|auto_generated|op_1~102\);

-- Location: LC_X8_Y7_N5
\Mult0|auto_generated|op_1~105\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~105_combout\ = \Mult0|auto_generated|op_2~95_combout\ $ (\Mult0|auto_generated|op_3~85_combout\ $ ((\Mult0|auto_generated|op_1~102\)))
-- \Mult0|auto_generated|op_1~107\ = CARRY((\Mult0|auto_generated|op_2~95_combout\ & (!\Mult0|auto_generated|op_3~85_combout\ & !\Mult0|auto_generated|op_1~102\)) # (!\Mult0|auto_generated|op_2~95_combout\ & ((!\Mult0|auto_generated|op_1~102\) # 
-- (!\Mult0|auto_generated|op_3~85_combout\))))
-- \Mult0|auto_generated|op_1~107COUT1_177\ = CARRY((\Mult0|auto_generated|op_2~95_combout\ & (!\Mult0|auto_generated|op_3~85_combout\ & !\Mult0|auto_generated|op_1~102\)) # (!\Mult0|auto_generated|op_2~95_combout\ & ((!\Mult0|auto_generated|op_1~102\) # 
-- (!\Mult0|auto_generated|op_3~85_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~95_combout\,
	datab => \Mult0|auto_generated|op_3~85_combout\,
	cin => \Mult0|auto_generated|op_1~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~105_combout\,
	cout0 => \Mult0|auto_generated|op_1~107\,
	cout1 => \Mult0|auto_generated|op_1~107COUT1_177\);

-- Location: LC_X9_Y4_N7
\Mult0|auto_generated|le11a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(8) = LCELL(((\input2~combout\(15) & ((\input1~combout\(8))))))

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
	datab => \input2~combout\(15),
	datad => \input1~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(8));

-- Location: LC_X10_Y2_N3
\Mult0|auto_generated|le10a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(9) = LCELL((\input1~combout\(8) & ((\Mult0|auto_generated|cs1a\(7)) # ((\Mult0|auto_generated|cs2a\(7) & \input1~combout\(9))))) # (!\input1~combout\(8) & (\Mult0|auto_generated|cs2a\(7) & ((\input1~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(8),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(9));

-- Location: LC_X5_Y4_N9
\Mult0|auto_generated|le11a[7]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(7) = LCELL((((\input1~combout\(7) & \input2~combout\(15)))))

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
	datac => \input1~combout\(7),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(7));

-- Location: LC_X10_Y2_N8
\Mult0|auto_generated|le10a[8]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(8) = LCELL((\input1~combout\(8) & ((\Mult0|auto_generated|cs2a\(7)) # ((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(7))))) # (!\input1~combout\(8) & (((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(8),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(8));

-- Location: LC_X8_Y5_N9
\Mult0|auto_generated|add24_result[16]~80\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[16]~80_combout\ = \Mult0|auto_generated|le11a\(7) $ (\Mult0|auto_generated|le10a\(8) $ ((!(!\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[15]~77\) # 
-- (\Mult0|auto_generated|add24_result[11]~57\ & \Mult0|auto_generated|add24_result[15]~77COUT1_133\))))
-- \Mult0|auto_generated|add24_result[16]~82\ = CARRY((\Mult0|auto_generated|le11a\(7) & ((\Mult0|auto_generated|le10a\(8)) # (!\Mult0|auto_generated|add24_result[15]~77COUT1_133\))) # (!\Mult0|auto_generated|le11a\(7) & (\Mult0|auto_generated|le10a\(8) & 
-- !\Mult0|auto_generated|add24_result[15]~77COUT1_133\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(7),
	datab => \Mult0|auto_generated|le10a\(8),
	cin => \Mult0|auto_generated|add24_result[11]~57\,
	cin0 => \Mult0|auto_generated|add24_result[15]~77\,
	cin1 => \Mult0|auto_generated|add24_result[15]~77COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[16]~80_combout\,
	cout => \Mult0|auto_generated|add24_result[16]~82\);

-- Location: LC_X9_Y5_N0
\Mult0|auto_generated|add24_result[17]~85\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[17]~85_combout\ = \Mult0|auto_generated|le11a\(8) $ (\Mult0|auto_generated|le10a\(9) $ ((\Mult0|auto_generated|add24_result[16]~82\)))
-- \Mult0|auto_generated|add24_result[17]~87\ = CARRY((\Mult0|auto_generated|le11a\(8) & (!\Mult0|auto_generated|le10a\(9) & !\Mult0|auto_generated|add24_result[16]~82\)) # (!\Mult0|auto_generated|le11a\(8) & ((!\Mult0|auto_generated|add24_result[16]~82\) # 
-- (!\Mult0|auto_generated|le10a\(9)))))
-- \Mult0|auto_generated|add24_result[17]~87COUT1_134\ = CARRY((\Mult0|auto_generated|le11a\(8) & (!\Mult0|auto_generated|le10a\(9) & !\Mult0|auto_generated|add24_result[16]~82\)) # (!\Mult0|auto_generated|le11a\(8) & 
-- ((!\Mult0|auto_generated|add24_result[16]~82\) # (!\Mult0|auto_generated|le10a\(9)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(8),
	datab => \Mult0|auto_generated|le10a\(9),
	cin => \Mult0|auto_generated|add24_result[16]~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[17]~85_combout\,
	cout0 => \Mult0|auto_generated|add24_result[17]~87\,
	cout1 => \Mult0|auto_generated|add24_result[17]~87COUT1_134\);

-- Location: LC_X11_Y2_N6
\Mult0|auto_generated|le9a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(11) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) $ (((\input1~combout\(11)))))) # (!\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) & (!\input1~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "268c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(6),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(10),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(11));

-- Location: LC_X12_Y5_N2
\Mult0|auto_generated|le8a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(13) = LCELL((\Mult0|auto_generated|cs2a\(5) & ((\Mult0|auto_generated|cs1a\(5) $ (\input1~combout\(13))))) # (!\Mult0|auto_generated|cs2a\(5) & (!\input1~combout\(12) & (\Mult0|auto_generated|cs1a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "34c4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(12),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(13));

-- Location: LC_X12_Y6_N2
\Mult0|auto_generated|add36_result[10]~50\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[10]~50_combout\ = ((((!\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[9]~47\) # (\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[9]~47COUT1_88\))))
-- \Mult0|auto_generated|add36_result[10]~52\ = CARRY(((!\Mult0|auto_generated|add36_result[9]~47\)))
-- \Mult0|auto_generated|add36_result[10]~52COUT1_89\ = CARRY(((!\Mult0|auto_generated|add36_result[9]~47COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add36_result[7]~37\,
	cin0 => \Mult0|auto_generated|add36_result[9]~47\,
	cin1 => \Mult0|auto_generated|add36_result[9]~47COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[10]~50_combout\,
	cout0 => \Mult0|auto_generated|add36_result[10]~52\,
	cout1 => \Mult0|auto_generated|add36_result[10]~52COUT1_89\);

-- Location: LC_X12_Y6_N3
\Mult0|auto_generated|add36_result[11]~55\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[11]~55_combout\ = \Mult0|auto_generated|le9a\(11) $ (\Mult0|auto_generated|le8a\(13) $ (((!\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[10]~52\) # 
-- (\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[10]~52COUT1_89\))))
-- \Mult0|auto_generated|add36_result[11]~57\ = CARRY((\Mult0|auto_generated|le9a\(11) & (!\Mult0|auto_generated|le8a\(13) & !\Mult0|auto_generated|add36_result[10]~52\)) # (!\Mult0|auto_generated|le9a\(11) & ((!\Mult0|auto_generated|add36_result[10]~52\) # 
-- (!\Mult0|auto_generated|le8a\(13)))))
-- \Mult0|auto_generated|add36_result[11]~57COUT1_90\ = CARRY((\Mult0|auto_generated|le9a\(11) & (!\Mult0|auto_generated|le8a\(13) & !\Mult0|auto_generated|add36_result[10]~52COUT1_89\)) # (!\Mult0|auto_generated|le9a\(11) & 
-- ((!\Mult0|auto_generated|add36_result[10]~52COUT1_89\) # (!\Mult0|auto_generated|le8a\(13)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(11),
	datab => \Mult0|auto_generated|le8a\(13),
	cin => \Mult0|auto_generated|add36_result[7]~37\,
	cin0 => \Mult0|auto_generated|add36_result[10]~52\,
	cin1 => \Mult0|auto_generated|add36_result[10]~52COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[11]~55_combout\,
	cout0 => \Mult0|auto_generated|add36_result[11]~57\,
	cout1 => \Mult0|auto_generated|add36_result[11]~57COUT1_90\);

-- Location: LC_X11_Y2_N0
\Mult0|auto_generated|le9a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(10) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) $ ((\input1~combout\(10))))) # (!\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) & ((!\input1~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(6),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(10),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(10));

-- Location: LC_X12_Y5_N3
\Mult0|auto_generated|le8a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(12) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\input1~combout\(12) $ ((\Mult0|auto_generated|cs1a\(5))))) # (!\Mult0|auto_generated|cs2a\(5) & (((\Mult0|auto_generated|cs1a\(5) & !\input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(12),
	datab => \Mult0|auto_generated|cs1a\(5),
	datac => \input1~combout\(11),
	datad => \Mult0|auto_generated|cs2a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(12));

-- Location: LC_X11_Y3_N5
\Mult0|auto_generated|add28_result[14]~70\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[14]~70_combout\ = \Mult0|auto_generated|le9a\(10) $ (\Mult0|auto_generated|le8a\(12) $ ((!\Mult0|auto_generated|add28_result[13]~67\)))
-- \Mult0|auto_generated|add28_result[14]~72\ = CARRY((\Mult0|auto_generated|le9a\(10) & ((\Mult0|auto_generated|le8a\(12)) # (!\Mult0|auto_generated|add28_result[13]~67\))) # (!\Mult0|auto_generated|le9a\(10) & (\Mult0|auto_generated|le8a\(12) & 
-- !\Mult0|auto_generated|add28_result[13]~67\)))
-- \Mult0|auto_generated|add28_result[14]~72COUT1_102\ = CARRY((\Mult0|auto_generated|le9a\(10) & ((\Mult0|auto_generated|le8a\(12)) # (!\Mult0|auto_generated|add28_result[13]~67\))) # (!\Mult0|auto_generated|le9a\(10) & (\Mult0|auto_generated|le8a\(12) & 
-- !\Mult0|auto_generated|add28_result[13]~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(10),
	datab => \Mult0|auto_generated|le8a\(12),
	cin => \Mult0|auto_generated|add28_result[13]~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[14]~70_combout\,
	cout0 => \Mult0|auto_generated|add28_result[14]~72\,
	cout1 => \Mult0|auto_generated|add28_result[14]~72COUT1_102\);

-- Location: LC_X9_Y6_N0
\Mult0|auto_generated|op_2~100\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~100_combout\ = \Mult0|auto_generated|add24_result[16]~80_combout\ $ (\Mult0|auto_generated|add28_result[14]~70_combout\ $ ((!\Mult0|auto_generated|op_2~97\)))
-- \Mult0|auto_generated|op_2~102\ = CARRY((\Mult0|auto_generated|add24_result[16]~80_combout\ & ((\Mult0|auto_generated|add28_result[14]~70_combout\) # (!\Mult0|auto_generated|op_2~97\))) # (!\Mult0|auto_generated|add24_result[16]~80_combout\ & 
-- (\Mult0|auto_generated|add28_result[14]~70_combout\ & !\Mult0|auto_generated|op_2~97\)))
-- \Mult0|auto_generated|op_2~102COUT1_167\ = CARRY((\Mult0|auto_generated|add24_result[16]~80_combout\ & ((\Mult0|auto_generated|add28_result[14]~70_combout\) # (!\Mult0|auto_generated|op_2~97\))) # (!\Mult0|auto_generated|add24_result[16]~80_combout\ & 
-- (\Mult0|auto_generated|add28_result[14]~70_combout\ & !\Mult0|auto_generated|op_2~97\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[16]~80_combout\,
	datab => \Mult0|auto_generated|add28_result[14]~70_combout\,
	cin => \Mult0|auto_generated|op_2~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~100_combout\,
	cout0 => \Mult0|auto_generated|op_2~102\,
	cout1 => \Mult0|auto_generated|op_2~102COUT1_167\);

-- Location: LC_X9_Y6_N1
\Mult0|auto_generated|op_2~105\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~105_combout\ = \Mult0|auto_generated|add24_result[17]~85_combout\ $ (\Mult0|auto_generated|add36_result[11]~55_combout\ $ (((!\Mult0|auto_generated|op_2~97\ & \Mult0|auto_generated|op_2~102\) # (\Mult0|auto_generated|op_2~97\ & 
-- \Mult0|auto_generated|op_2~102COUT1_167\))))
-- \Mult0|auto_generated|op_2~107\ = CARRY((\Mult0|auto_generated|add24_result[17]~85_combout\ & (!\Mult0|auto_generated|add36_result[11]~55_combout\ & !\Mult0|auto_generated|op_2~102\)) # (!\Mult0|auto_generated|add24_result[17]~85_combout\ & 
-- ((!\Mult0|auto_generated|op_2~102\) # (!\Mult0|auto_generated|add36_result[11]~55_combout\))))
-- \Mult0|auto_generated|op_2~107COUT1_168\ = CARRY((\Mult0|auto_generated|add24_result[17]~85_combout\ & (!\Mult0|auto_generated|add36_result[11]~55_combout\ & !\Mult0|auto_generated|op_2~102COUT1_167\)) # 
-- (!\Mult0|auto_generated|add24_result[17]~85_combout\ & ((!\Mult0|auto_generated|op_2~102COUT1_167\) # (!\Mult0|auto_generated|add36_result[11]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[17]~85_combout\,
	datab => \Mult0|auto_generated|add36_result[11]~55_combout\,
	cin => \Mult0|auto_generated|op_2~97\,
	cin0 => \Mult0|auto_generated|op_2~102\,
	cin1 => \Mult0|auto_generated|op_2~102COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~105_combout\,
	cout0 => \Mult0|auto_generated|op_2~107\,
	cout1 => \Mult0|auto_generated|op_2~107COUT1_168\);

-- Location: LC_X12_Y3_N1
\Mult0|auto_generated|le7a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(14) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) $ ((\input1~combout\(14))))) # (!\Mult0|auto_generated|cs2a\(4) & (\Mult0|auto_generated|cs1a\(4) & ((!\input1~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "660a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(4),
	datab => \input1~combout\(14),
	datac => \input1~combout\(13),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(14));

-- Location: LC_X12_Y3_N4
\Mult0|auto_generated|le6a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(16) = LCELL((\Mult0|auto_generated|cs1a\(3) & (((\Mult0|auto_generated|cs2a\(3)) # (!\input1~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(3),
	datac => \Mult0|auto_generated|cs2a\(3),
	datad => \input1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(16));

-- Location: LC_X12_Y4_N5
\Mult0|auto_generated|add32_result[12]~60\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[12]~60_combout\ = \Mult0|auto_generated|le7a\(14) $ (\Mult0|auto_generated|le6a\(16) $ ((!\Mult0|auto_generated|add32_result[11]~57\)))
-- \Mult0|auto_generated|add32_result[12]~62\ = CARRY((\Mult0|auto_generated|le7a\(14) & ((\Mult0|auto_generated|le6a\(16)) # (!\Mult0|auto_generated|add32_result[11]~57\))) # (!\Mult0|auto_generated|le7a\(14) & (\Mult0|auto_generated|le6a\(16) & 
-- !\Mult0|auto_generated|add32_result[11]~57\)))
-- \Mult0|auto_generated|add32_result[12]~62COUT1_80\ = CARRY((\Mult0|auto_generated|le7a\(14) & ((\Mult0|auto_generated|le6a\(16)) # (!\Mult0|auto_generated|add32_result[11]~57\))) # (!\Mult0|auto_generated|le7a\(14) & (\Mult0|auto_generated|le6a\(16) & 
-- !\Mult0|auto_generated|add32_result[11]~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(14),
	datab => \Mult0|auto_generated|le6a\(16),
	cin => \Mult0|auto_generated|add32_result[11]~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[12]~60_combout\,
	cout0 => \Mult0|auto_generated|add32_result[12]~62\,
	cout1 => \Mult0|auto_generated|add32_result[12]~62COUT1_80\);

-- Location: LC_X12_Y4_N6
\Mult0|auto_generated|add32_result[13]~65\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add32_result[13]~65_combout\ = ((((!\Mult0|auto_generated|add32_result[11]~57\ & \Mult0|auto_generated|add32_result[12]~62\) # (\Mult0|auto_generated|add32_result[11]~57\ & \Mult0|auto_generated|add32_result[12]~62COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add32_result[11]~57\,
	cin0 => \Mult0|auto_generated|add32_result[12]~62\,
	cin1 => \Mult0|auto_generated|add32_result[12]~62COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add32_result[13]~65_combout\);

-- Location: LC_X12_Y3_N3
\Mult0|auto_generated|le7a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(15) = LCELL((\Mult0|auto_generated|cs2a\(4) & (\input1~combout\(15) $ ((\Mult0|auto_generated|cs1a\(4))))) # (!\Mult0|auto_generated|cs2a\(4) & (((\Mult0|auto_generated|cs1a\(4) & !\input1~combout\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(4),
	datab => \input1~combout\(15),
	datac => \Mult0|auto_generated|cs1a\(4),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(15));

-- Location: LC_X11_Y3_N9
\Mult0|auto_generated|le6a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le6a\(17) = LCELL((((\Mult0|auto_generated|cs1a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|cs1a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le6a\(17));

-- Location: LC_X11_Y3_N6
\Mult0|auto_generated|add28_result[15]~75\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[15]~75_combout\ = \Mult0|auto_generated|le7a\(15) $ (\Mult0|auto_generated|le6a\(17) $ ((!(!\Mult0|auto_generated|add28_result[13]~67\ & \Mult0|auto_generated|add28_result[14]~72\) # 
-- (\Mult0|auto_generated|add28_result[13]~67\ & \Mult0|auto_generated|add28_result[14]~72COUT1_102\))))
-- \Mult0|auto_generated|add28_result[15]~77\ = CARRY((\Mult0|auto_generated|le7a\(15) & (\Mult0|auto_generated|le6a\(17) & !\Mult0|auto_generated|add28_result[14]~72\)) # (!\Mult0|auto_generated|le7a\(15) & ((\Mult0|auto_generated|le6a\(17)) # 
-- (!\Mult0|auto_generated|add28_result[14]~72\))))
-- \Mult0|auto_generated|add28_result[15]~77COUT1_103\ = CARRY((\Mult0|auto_generated|le7a\(15) & (\Mult0|auto_generated|le6a\(17) & !\Mult0|auto_generated|add28_result[14]~72COUT1_102\)) # (!\Mult0|auto_generated|le7a\(15) & 
-- ((\Mult0|auto_generated|le6a\(17)) # (!\Mult0|auto_generated|add28_result[14]~72COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(15),
	datab => \Mult0|auto_generated|le6a\(17),
	cin => \Mult0|auto_generated|add28_result[13]~67\,
	cin0 => \Mult0|auto_generated|add28_result[14]~72\,
	cin1 => \Mult0|auto_generated|add28_result[14]~72COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[15]~75_combout\,
	cout0 => \Mult0|auto_generated|add28_result[15]~77\,
	cout1 => \Mult0|auto_generated|add28_result[15]~77COUT1_103\);

-- Location: LC_X11_Y7_N9
\Mult0|auto_generated|op_3~90\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~90_combout\ = \Mult0|auto_generated|add36_result[10]~50_combout\ $ (\Mult0|auto_generated|add32_result[12]~60_combout\ $ ((!(!\Mult0|auto_generated|op_3~67\ & \Mult0|auto_generated|op_3~87\) # (\Mult0|auto_generated|op_3~67\ & 
-- \Mult0|auto_generated|op_3~87COUT1_155\))))
-- \Mult0|auto_generated|op_3~92\ = CARRY((\Mult0|auto_generated|add36_result[10]~50_combout\ & ((\Mult0|auto_generated|add32_result[12]~60_combout\) # (!\Mult0|auto_generated|op_3~87COUT1_155\))) # (!\Mult0|auto_generated|add36_result[10]~50_combout\ & 
-- (\Mult0|auto_generated|add32_result[12]~60_combout\ & !\Mult0|auto_generated|op_3~87COUT1_155\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[10]~50_combout\,
	datab => \Mult0|auto_generated|add32_result[12]~60_combout\,
	cin => \Mult0|auto_generated|op_3~67\,
	cin0 => \Mult0|auto_generated|op_3~87\,
	cin1 => \Mult0|auto_generated|op_3~87COUT1_155\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~90_combout\,
	cout => \Mult0|auto_generated|op_3~92\);

-- Location: LC_X12_Y7_N0
\Mult0|auto_generated|op_3~95\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~95_combout\ = \Mult0|auto_generated|add32_result[13]~65_combout\ $ (\Mult0|auto_generated|add28_result[15]~75_combout\ $ ((\Mult0|auto_generated|op_3~92\)))
-- \Mult0|auto_generated|op_3~97\ = CARRY((\Mult0|auto_generated|add32_result[13]~65_combout\ & (!\Mult0|auto_generated|add28_result[15]~75_combout\ & !\Mult0|auto_generated|op_3~92\)) # (!\Mult0|auto_generated|add32_result[13]~65_combout\ & 
-- ((!\Mult0|auto_generated|op_3~92\) # (!\Mult0|auto_generated|add28_result[15]~75_combout\))))
-- \Mult0|auto_generated|op_3~97COUT1_156\ = CARRY((\Mult0|auto_generated|add32_result[13]~65_combout\ & (!\Mult0|auto_generated|add28_result[15]~75_combout\ & !\Mult0|auto_generated|op_3~92\)) # (!\Mult0|auto_generated|add32_result[13]~65_combout\ & 
-- ((!\Mult0|auto_generated|op_3~92\) # (!\Mult0|auto_generated|add28_result[15]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add32_result[13]~65_combout\,
	datab => \Mult0|auto_generated|add28_result[15]~75_combout\,
	cin => \Mult0|auto_generated|op_3~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~95_combout\,
	cout0 => \Mult0|auto_generated|op_3~97\,
	cout1 => \Mult0|auto_generated|op_3~97COUT1_156\);

-- Location: LC_X8_Y7_N6
\Mult0|auto_generated|op_1~110\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~110_combout\ = \Mult0|auto_generated|op_3~90_combout\ $ (\Mult0|auto_generated|op_2~100_combout\ $ ((!(!\Mult0|auto_generated|op_1~102\ & \Mult0|auto_generated|op_1~107\) # (\Mult0|auto_generated|op_1~102\ & 
-- \Mult0|auto_generated|op_1~107COUT1_177\))))
-- \Mult0|auto_generated|op_1~112\ = CARRY((\Mult0|auto_generated|op_3~90_combout\ & ((\Mult0|auto_generated|op_2~100_combout\) # (!\Mult0|auto_generated|op_1~107\))) # (!\Mult0|auto_generated|op_3~90_combout\ & (\Mult0|auto_generated|op_2~100_combout\ & 
-- !\Mult0|auto_generated|op_1~107\)))
-- \Mult0|auto_generated|op_1~112COUT1_178\ = CARRY((\Mult0|auto_generated|op_3~90_combout\ & ((\Mult0|auto_generated|op_2~100_combout\) # (!\Mult0|auto_generated|op_1~107COUT1_177\))) # (!\Mult0|auto_generated|op_3~90_combout\ & 
-- (\Mult0|auto_generated|op_2~100_combout\ & !\Mult0|auto_generated|op_1~107COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~90_combout\,
	datab => \Mult0|auto_generated|op_2~100_combout\,
	cin => \Mult0|auto_generated|op_1~102\,
	cin0 => \Mult0|auto_generated|op_1~107\,
	cin1 => \Mult0|auto_generated|op_1~107COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~110_combout\,
	cout0 => \Mult0|auto_generated|op_1~112\,
	cout1 => \Mult0|auto_generated|op_1~112COUT1_178\);

-- Location: LC_X8_Y7_N7
\Mult0|auto_generated|op_1~115\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~115_combout\ = \Mult0|auto_generated|op_2~105_combout\ $ (\Mult0|auto_generated|op_3~95_combout\ $ (((!\Mult0|auto_generated|op_1~102\ & \Mult0|auto_generated|op_1~112\) # (\Mult0|auto_generated|op_1~102\ & 
-- \Mult0|auto_generated|op_1~112COUT1_178\))))
-- \Mult0|auto_generated|op_1~117\ = CARRY((\Mult0|auto_generated|op_2~105_combout\ & (!\Mult0|auto_generated|op_3~95_combout\ & !\Mult0|auto_generated|op_1~112\)) # (!\Mult0|auto_generated|op_2~105_combout\ & ((!\Mult0|auto_generated|op_1~112\) # 
-- (!\Mult0|auto_generated|op_3~95_combout\))))
-- \Mult0|auto_generated|op_1~117COUT1_179\ = CARRY((\Mult0|auto_generated|op_2~105_combout\ & (!\Mult0|auto_generated|op_3~95_combout\ & !\Mult0|auto_generated|op_1~112COUT1_178\)) # (!\Mult0|auto_generated|op_2~105_combout\ & 
-- ((!\Mult0|auto_generated|op_1~112COUT1_178\) # (!\Mult0|auto_generated|op_3~95_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~105_combout\,
	datab => \Mult0|auto_generated|op_3~95_combout\,
	cin => \Mult0|auto_generated|op_1~102\,
	cin0 => \Mult0|auto_generated|op_1~112\,
	cin1 => \Mult0|auto_generated|op_1~112COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~115_combout\,
	cout0 => \Mult0|auto_generated|op_1~117\,
	cout1 => \Mult0|auto_generated|op_1~117COUT1_179\);

-- Location: LC_X9_Y7_N6
\LessThan0~5\ : maxii_lcell
-- Equation(s):
-- \LessThan0~5_combout\ = (\Mult0|auto_generated|op_1~105_combout\) # ((\Mult0|auto_generated|op_1~115_combout\) # ((\Mult0|auto_generated|op_1~110_combout\) # (\Mult0|auto_generated|op_1~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~105_combout\,
	datab => \Mult0|auto_generated|op_1~115_combout\,
	datac => \Mult0|auto_generated|op_1~110_combout\,
	datad => \Mult0|auto_generated|op_1~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~5_combout\);

-- Location: LC_X10_Y5_N5
\Mult0|auto_generated|le10a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(13) = LCELL((\input1~combout\(13) & ((\Mult0|auto_generated|cs2a\(7)) # ((\input1~combout\(12) & \Mult0|auto_generated|cs1a\(7))))) # (!\input1~combout\(13) & (\input1~combout\(12) & ((\Mult0|auto_generated|cs1a\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(13),
	datab => \input1~combout\(12),
	datac => \Mult0|auto_generated|cs2a\(7),
	datad => \Mult0|auto_generated|cs1a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(13));

-- Location: LC_X12_Y3_N0
\Mult0|auto_generated|le7a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(16) = LCELL(((\Mult0|auto_generated|cs1a\(4) & ((\Mult0|auto_generated|cs2a\(4)) # (!\input1~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input1~combout\(15),
	datac => \Mult0|auto_generated|cs1a\(4),
	datad => \Mult0|auto_generated|cs2a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(16));

-- Location: LC_X12_Y5_N4
\Mult0|auto_generated|le8a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(14) = LCELL((\Mult0|auto_generated|cs2a\(5) & (\input1~combout\(14) $ (((\Mult0|auto_generated|cs1a\(5)))))) # (!\Mult0|auto_generated|cs2a\(5) & (((!\input1~combout\(13) & \Mult0|auto_generated|cs1a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "53a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \input1~combout\(13),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \Mult0|auto_generated|cs1a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(14));

-- Location: LC_X12_Y6_N4
\Mult0|auto_generated|add36_result[12]~60\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[12]~60_combout\ = \Mult0|auto_generated|le7a\(16) $ (\Mult0|auto_generated|le8a\(14) $ ((!(!\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[11]~57\) # 
-- (\Mult0|auto_generated|add36_result[7]~37\ & \Mult0|auto_generated|add36_result[11]~57COUT1_90\))))
-- \Mult0|auto_generated|add36_result[12]~62\ = CARRY((\Mult0|auto_generated|le7a\(16) & ((\Mult0|auto_generated|le8a\(14)) # (!\Mult0|auto_generated|add36_result[11]~57COUT1_90\))) # (!\Mult0|auto_generated|le7a\(16) & (\Mult0|auto_generated|le8a\(14) & 
-- !\Mult0|auto_generated|add36_result[11]~57COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(16),
	datab => \Mult0|auto_generated|le8a\(14),
	cin => \Mult0|auto_generated|add36_result[7]~37\,
	cin0 => \Mult0|auto_generated|add36_result[11]~57\,
	cin1 => \Mult0|auto_generated|add36_result[11]~57COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[12]~60_combout\,
	cout => \Mult0|auto_generated|add36_result[12]~62\);

-- Location: LC_X12_Y6_N8
\Mult0|auto_generated|le7a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le7a\(17) = LCELL((((\Mult0|auto_generated|cs1a\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|cs1a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le7a\(17));

-- Location: LC_X12_Y5_N6
\Mult0|auto_generated|le8a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(15) = LCELL((\Mult0|auto_generated|cs2a\(5) & ((\input1~combout\(15) $ (\Mult0|auto_generated|cs1a\(5))))) # (!\Mult0|auto_generated|cs2a\(5) & (!\input1~combout\(14) & ((\Mult0|auto_generated|cs1a\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1dc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \Mult0|auto_generated|cs2a\(5),
	datac => \input1~combout\(15),
	datad => \Mult0|auto_generated|cs1a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(15));

-- Location: LC_X12_Y6_N5
\Mult0|auto_generated|add36_result[13]~65\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[13]~65_combout\ = \Mult0|auto_generated|le7a\(17) $ (\Mult0|auto_generated|le8a\(15) $ ((!\Mult0|auto_generated|add36_result[12]~62\)))
-- \Mult0|auto_generated|add36_result[13]~67\ = CARRY((\Mult0|auto_generated|le7a\(17) & ((!\Mult0|auto_generated|add36_result[12]~62\) # (!\Mult0|auto_generated|le8a\(15)))) # (!\Mult0|auto_generated|le7a\(17) & (!\Mult0|auto_generated|le8a\(15) & 
-- !\Mult0|auto_generated|add36_result[12]~62\)))
-- \Mult0|auto_generated|add36_result[13]~67COUT1_91\ = CARRY((\Mult0|auto_generated|le7a\(17) & ((!\Mult0|auto_generated|add36_result[12]~62\) # (!\Mult0|auto_generated|le8a\(15)))) # (!\Mult0|auto_generated|le7a\(17) & (!\Mult0|auto_generated|le8a\(15) & 
-- !\Mult0|auto_generated|add36_result[12]~62\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le7a\(17),
	datab => \Mult0|auto_generated|le8a\(15),
	cin => \Mult0|auto_generated|add36_result[12]~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[13]~65_combout\,
	cout0 => \Mult0|auto_generated|add36_result[13]~67\,
	cout1 => \Mult0|auto_generated|add36_result[13]~67COUT1_91\);

-- Location: LC_X12_Y6_N6
\Mult0|auto_generated|add36_result[14]~70\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[14]~70_combout\ = ((((!\Mult0|auto_generated|add36_result[12]~62\ & \Mult0|auto_generated|add36_result[13]~67\) # (\Mult0|auto_generated|add36_result[12]~62\ & \Mult0|auto_generated|add36_result[13]~67COUT1_91\))))
-- \Mult0|auto_generated|add36_result[14]~72\ = CARRY(((!\Mult0|auto_generated|add36_result[13]~67\)))
-- \Mult0|auto_generated|add36_result[14]~72COUT1_92\ = CARRY(((!\Mult0|auto_generated|add36_result[13]~67COUT1_91\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add36_result[12]~62\,
	cin0 => \Mult0|auto_generated|add36_result[13]~67\,
	cin1 => \Mult0|auto_generated|add36_result[13]~67COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[14]~70_combout\,
	cout0 => \Mult0|auto_generated|add36_result[14]~72\,
	cout1 => \Mult0|auto_generated|add36_result[14]~72COUT1_92\);

-- Location: LC_X12_Y6_N7
\Mult0|auto_generated|add36_result[15]~75\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add36_result[15]~75_combout\ = ((((!\Mult0|auto_generated|add36_result[12]~62\ & \Mult0|auto_generated|add36_result[14]~72\) # (\Mult0|auto_generated|add36_result[12]~62\ & \Mult0|auto_generated|add36_result[14]~72COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add36_result[12]~62\,
	cin0 => \Mult0|auto_generated|add36_result[14]~72\,
	cin1 => \Mult0|auto_generated|add36_result[14]~72COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add36_result[15]~75_combout\);

-- Location: LC_X10_Y2_N2
\Mult0|auto_generated|le10a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(12) = LCELL((\input1~combout\(12) & ((\Mult0|auto_generated|cs2a\(7)) # ((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(11))))) # (!\input1~combout\(12) & (((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(12),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(12));

-- Location: LC_X11_Y3_N7
\Mult0|auto_generated|add28_result[16]~80\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[16]~80_combout\ = ((((!\Mult0|auto_generated|add28_result[13]~67\ & \Mult0|auto_generated|add28_result[15]~77\) # (\Mult0|auto_generated|add28_result[13]~67\ & \Mult0|auto_generated|add28_result[15]~77COUT1_103\))))
-- \Mult0|auto_generated|add28_result[16]~82\ = CARRY(((!\Mult0|auto_generated|add28_result[15]~77\)))
-- \Mult0|auto_generated|add28_result[16]~82COUT1_104\ = CARRY(((!\Mult0|auto_generated|add28_result[15]~77COUT1_103\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add28_result[13]~67\,
	cin0 => \Mult0|auto_generated|add28_result[15]~77\,
	cin1 => \Mult0|auto_generated|add28_result[15]~77COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[16]~80_combout\,
	cout0 => \Mult0|auto_generated|add28_result[16]~82\,
	cout1 => \Mult0|auto_generated|add28_result[16]~82COUT1_104\);

-- Location: LC_X11_Y3_N8
\Mult0|auto_generated|add28_result[17]~85\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add28_result[17]~85_combout\ = ((((!\Mult0|auto_generated|add28_result[13]~67\ & \Mult0|auto_generated|add28_result[16]~82\) # (\Mult0|auto_generated|add28_result[13]~67\ & \Mult0|auto_generated|add28_result[16]~82COUT1_104\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add28_result[13]~67\,
	cin0 => \Mult0|auto_generated|add28_result[16]~82\,
	cin1 => \Mult0|auto_generated|add28_result[16]~82COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add28_result[17]~85_combout\);

-- Location: LC_X12_Y7_N1
\Mult0|auto_generated|op_3~100\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~100_combout\ = \Mult0|auto_generated|add36_result[12]~60_combout\ $ (\Mult0|auto_generated|add28_result[16]~80_combout\ $ ((!(!\Mult0|auto_generated|op_3~92\ & \Mult0|auto_generated|op_3~97\) # (\Mult0|auto_generated|op_3~92\ & 
-- \Mult0|auto_generated|op_3~97COUT1_156\))))
-- \Mult0|auto_generated|op_3~102\ = CARRY((\Mult0|auto_generated|add36_result[12]~60_combout\ & ((\Mult0|auto_generated|add28_result[16]~80_combout\) # (!\Mult0|auto_generated|op_3~97\))) # (!\Mult0|auto_generated|add36_result[12]~60_combout\ & 
-- (\Mult0|auto_generated|add28_result[16]~80_combout\ & !\Mult0|auto_generated|op_3~97\)))
-- \Mult0|auto_generated|op_3~102COUT1_157\ = CARRY((\Mult0|auto_generated|add36_result[12]~60_combout\ & ((\Mult0|auto_generated|add28_result[16]~80_combout\) # (!\Mult0|auto_generated|op_3~97COUT1_156\))) # 
-- (!\Mult0|auto_generated|add36_result[12]~60_combout\ & (\Mult0|auto_generated|add28_result[16]~80_combout\ & !\Mult0|auto_generated|op_3~97COUT1_156\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add36_result[12]~60_combout\,
	datab => \Mult0|auto_generated|add28_result[16]~80_combout\,
	cin => \Mult0|auto_generated|op_3~92\,
	cin0 => \Mult0|auto_generated|op_3~97\,
	cin1 => \Mult0|auto_generated|op_3~97COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~100_combout\,
	cout0 => \Mult0|auto_generated|op_3~102\,
	cout1 => \Mult0|auto_generated|op_3~102COUT1_157\);

-- Location: LC_X12_Y7_N2
\Mult0|auto_generated|op_3~105\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~105_combout\ = \Mult0|auto_generated|add28_result[17]~85_combout\ $ (\Mult0|auto_generated|add36_result[13]~65_combout\ $ (((!\Mult0|auto_generated|op_3~92\ & \Mult0|auto_generated|op_3~102\) # (\Mult0|auto_generated|op_3~92\ & 
-- \Mult0|auto_generated|op_3~102COUT1_157\))))
-- \Mult0|auto_generated|op_3~107\ = CARRY((\Mult0|auto_generated|add28_result[17]~85_combout\ & (!\Mult0|auto_generated|add36_result[13]~65_combout\ & !\Mult0|auto_generated|op_3~102\)) # (!\Mult0|auto_generated|add28_result[17]~85_combout\ & 
-- ((!\Mult0|auto_generated|op_3~102\) # (!\Mult0|auto_generated|add36_result[13]~65_combout\))))
-- \Mult0|auto_generated|op_3~107COUT1_158\ = CARRY((\Mult0|auto_generated|add28_result[17]~85_combout\ & (!\Mult0|auto_generated|add36_result[13]~65_combout\ & !\Mult0|auto_generated|op_3~102COUT1_157\)) # 
-- (!\Mult0|auto_generated|add28_result[17]~85_combout\ & ((!\Mult0|auto_generated|op_3~102COUT1_157\) # (!\Mult0|auto_generated|add36_result[13]~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add28_result[17]~85_combout\,
	datab => \Mult0|auto_generated|add36_result[13]~65_combout\,
	cin => \Mult0|auto_generated|op_3~92\,
	cin0 => \Mult0|auto_generated|op_3~102\,
	cin1 => \Mult0|auto_generated|op_3~102COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~105_combout\,
	cout0 => \Mult0|auto_generated|op_3~107\,
	cout1 => \Mult0|auto_generated|op_3~107COUT1_158\);

-- Location: LC_X12_Y7_N3
\Mult0|auto_generated|op_3~110\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~110_combout\ = \Mult0|auto_generated|le10a\(12) $ (\Mult0|auto_generated|add36_result[14]~70_combout\ $ ((!(!\Mult0|auto_generated|op_3~92\ & \Mult0|auto_generated|op_3~107\) # (\Mult0|auto_generated|op_3~92\ & 
-- \Mult0|auto_generated|op_3~107COUT1_158\))))
-- \Mult0|auto_generated|op_3~112\ = CARRY((\Mult0|auto_generated|le10a\(12) & ((\Mult0|auto_generated|add36_result[14]~70_combout\) # (!\Mult0|auto_generated|op_3~107\))) # (!\Mult0|auto_generated|le10a\(12) & 
-- (\Mult0|auto_generated|add36_result[14]~70_combout\ & !\Mult0|auto_generated|op_3~107\)))
-- \Mult0|auto_generated|op_3~112COUT1_159\ = CARRY((\Mult0|auto_generated|le10a\(12) & ((\Mult0|auto_generated|add36_result[14]~70_combout\) # (!\Mult0|auto_generated|op_3~107COUT1_158\))) # (!\Mult0|auto_generated|le10a\(12) & 
-- (\Mult0|auto_generated|add36_result[14]~70_combout\ & !\Mult0|auto_generated|op_3~107COUT1_158\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(12),
	datab => \Mult0|auto_generated|add36_result[14]~70_combout\,
	cin => \Mult0|auto_generated|op_3~92\,
	cin0 => \Mult0|auto_generated|op_3~107\,
	cin1 => \Mult0|auto_generated|op_3~107COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~110_combout\,
	cout0 => \Mult0|auto_generated|op_3~112\,
	cout1 => \Mult0|auto_generated|op_3~112COUT1_159\);

-- Location: LC_X12_Y7_N4
\Mult0|auto_generated|op_3~115\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~115_combout\ = \Mult0|auto_generated|le10a\(13) $ (\Mult0|auto_generated|add36_result[15]~75_combout\ $ (((!\Mult0|auto_generated|op_3~92\ & \Mult0|auto_generated|op_3~112\) # (\Mult0|auto_generated|op_3~92\ & 
-- \Mult0|auto_generated|op_3~112COUT1_159\))))
-- \Mult0|auto_generated|op_3~117\ = CARRY((\Mult0|auto_generated|le10a\(13) & (!\Mult0|auto_generated|add36_result[15]~75_combout\ & !\Mult0|auto_generated|op_3~112COUT1_159\)) # (!\Mult0|auto_generated|le10a\(13) & 
-- ((!\Mult0|auto_generated|op_3~112COUT1_159\) # (!\Mult0|auto_generated|add36_result[15]~75_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(13),
	datab => \Mult0|auto_generated|add36_result[15]~75_combout\,
	cin => \Mult0|auto_generated|op_3~92\,
	cin0 => \Mult0|auto_generated|op_3~112\,
	cin1 => \Mult0|auto_generated|op_3~112COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~115_combout\,
	cout => \Mult0|auto_generated|op_3~117\);

-- Location: LC_X9_Y5_N7
\Mult0|auto_generated|le8a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(17) = LCELL((((\Mult0|auto_generated|cs1a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Mult0|auto_generated|cs1a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(17));

-- Location: LC_X10_Y5_N4
\Mult0|auto_generated|le9a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(15) = LCELL((\Mult0|auto_generated|cs2a\(6) & ((\input1~combout\(15) $ (\Mult0|auto_generated|cs1a\(6))))) # (!\Mult0|auto_generated|cs2a\(6) & (!\input1~combout\(14) & ((\Mult0|auto_generated|cs1a\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \input1~combout\(15),
	datac => \Mult0|auto_generated|cs1a\(6),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(15));

-- Location: LC_X9_Y5_N8
\Mult0|auto_generated|le9a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(14) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\input1~combout\(14) $ ((\Mult0|auto_generated|cs1a\(6))))) # (!\Mult0|auto_generated|cs2a\(6) & (((\Mult0|auto_generated|cs1a\(6) & !\input1~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4878",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \Mult0|auto_generated|cs2a\(6),
	datac => \Mult0|auto_generated|cs1a\(6),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(14));

-- Location: LC_X12_Y5_N8
\Mult0|auto_generated|le8a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le8a\(16) = LCELL(((\Mult0|auto_generated|cs1a\(5) & ((\Mult0|auto_generated|cs2a\(5)) # (!\input1~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(15),
	datac => \Mult0|auto_generated|cs2a\(5),
	datad => \Mult0|auto_generated|cs1a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le8a\(16));

-- Location: LC_X10_Y2_N6
\Mult0|auto_generated|le10a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(11) = LCELL((\input1~combout\(10) & ((\Mult0|auto_generated|cs1a\(7)) # ((\Mult0|auto_generated|cs2a\(7) & \input1~combout\(11))))) # (!\input1~combout\(10) & (\Mult0|auto_generated|cs2a\(7) & ((\input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(10),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(11));

-- Location: LC_X9_Y5_N9
\Mult0|auto_generated|le9a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(13) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) $ (((\input1~combout\(13)))))) # (!\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) & (!\input1~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "468a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(6),
	datab => \Mult0|auto_generated|cs2a\(6),
	datac => \input1~combout\(12),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(13));

-- Location: LC_X10_Y2_N4
\Mult0|auto_generated|le10a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(10) = LCELL((\input1~combout\(10) & ((\Mult0|auto_generated|cs2a\(7)) # ((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(9))))) # (!\input1~combout\(10) & (((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(10),
	datab => \Mult0|auto_generated|cs2a\(7),
	datac => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(10));

-- Location: LC_X11_Y2_N8
\Mult0|auto_generated|le9a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(12) = LCELL((\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) $ ((\input1~combout\(12))))) # (!\Mult0|auto_generated|cs2a\(6) & (\Mult0|auto_generated|cs1a\(6) & ((!\input1~combout\(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "286c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs2a\(6),
	datab => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(12),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(12));

-- Location: LC_X9_Y5_N1
\Mult0|auto_generated|add24_result[18]~90\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[18]~90_combout\ = \Mult0|auto_generated|le10a\(10) $ (\Mult0|auto_generated|le9a\(12) $ ((!(!\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[17]~87\) # 
-- (\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[17]~87COUT1_134\))))
-- \Mult0|auto_generated|add24_result[18]~92\ = CARRY((\Mult0|auto_generated|le10a\(10) & ((\Mult0|auto_generated|le9a\(12)) # (!\Mult0|auto_generated|add24_result[17]~87\))) # (!\Mult0|auto_generated|le10a\(10) & (\Mult0|auto_generated|le9a\(12) & 
-- !\Mult0|auto_generated|add24_result[17]~87\)))
-- \Mult0|auto_generated|add24_result[18]~92COUT1_135\ = CARRY((\Mult0|auto_generated|le10a\(10) & ((\Mult0|auto_generated|le9a\(12)) # (!\Mult0|auto_generated|add24_result[17]~87COUT1_134\))) # (!\Mult0|auto_generated|le10a\(10) & 
-- (\Mult0|auto_generated|le9a\(12) & !\Mult0|auto_generated|add24_result[17]~87COUT1_134\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(10),
	datab => \Mult0|auto_generated|le9a\(12),
	cin => \Mult0|auto_generated|add24_result[16]~82\,
	cin0 => \Mult0|auto_generated|add24_result[17]~87\,
	cin1 => \Mult0|auto_generated|add24_result[17]~87COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[18]~90_combout\,
	cout0 => \Mult0|auto_generated|add24_result[18]~92\,
	cout1 => \Mult0|auto_generated|add24_result[18]~92COUT1_135\);

-- Location: LC_X9_Y5_N2
\Mult0|auto_generated|add24_result[19]~95\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[19]~95_combout\ = \Mult0|auto_generated|le10a\(11) $ (\Mult0|auto_generated|le9a\(13) $ (((!\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[18]~92\) # 
-- (\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[18]~92COUT1_135\))))
-- \Mult0|auto_generated|add24_result[19]~97\ = CARRY((\Mult0|auto_generated|le10a\(11) & (!\Mult0|auto_generated|le9a\(13) & !\Mult0|auto_generated|add24_result[18]~92\)) # (!\Mult0|auto_generated|le10a\(11) & ((!\Mult0|auto_generated|add24_result[18]~92\) 
-- # (!\Mult0|auto_generated|le9a\(13)))))
-- \Mult0|auto_generated|add24_result[19]~97COUT1_136\ = CARRY((\Mult0|auto_generated|le10a\(11) & (!\Mult0|auto_generated|le9a\(13) & !\Mult0|auto_generated|add24_result[18]~92COUT1_135\)) # (!\Mult0|auto_generated|le10a\(11) & 
-- ((!\Mult0|auto_generated|add24_result[18]~92COUT1_135\) # (!\Mult0|auto_generated|le9a\(13)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(11),
	datab => \Mult0|auto_generated|le9a\(13),
	cin => \Mult0|auto_generated|add24_result[16]~82\,
	cin0 => \Mult0|auto_generated|add24_result[18]~92\,
	cin1 => \Mult0|auto_generated|add24_result[18]~92COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[19]~95_combout\,
	cout0 => \Mult0|auto_generated|add24_result[19]~97\,
	cout1 => \Mult0|auto_generated|add24_result[19]~97COUT1_136\);

-- Location: LC_X9_Y5_N3
\Mult0|auto_generated|add24_result[20]~100\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[20]~100_combout\ = \Mult0|auto_generated|le9a\(14) $ (\Mult0|auto_generated|le8a\(16) $ ((!(!\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[19]~97\) # 
-- (\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[19]~97COUT1_136\))))
-- \Mult0|auto_generated|add24_result[20]~102\ = CARRY((\Mult0|auto_generated|le9a\(14) & ((\Mult0|auto_generated|le8a\(16)) # (!\Mult0|auto_generated|add24_result[19]~97\))) # (!\Mult0|auto_generated|le9a\(14) & (\Mult0|auto_generated|le8a\(16) & 
-- !\Mult0|auto_generated|add24_result[19]~97\)))
-- \Mult0|auto_generated|add24_result[20]~102COUT1_137\ = CARRY((\Mult0|auto_generated|le9a\(14) & ((\Mult0|auto_generated|le8a\(16)) # (!\Mult0|auto_generated|add24_result[19]~97COUT1_136\))) # (!\Mult0|auto_generated|le9a\(14) & 
-- (\Mult0|auto_generated|le8a\(16) & !\Mult0|auto_generated|add24_result[19]~97COUT1_136\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le9a\(14),
	datab => \Mult0|auto_generated|le8a\(16),
	cin => \Mult0|auto_generated|add24_result[16]~82\,
	cin0 => \Mult0|auto_generated|add24_result[19]~97\,
	cin1 => \Mult0|auto_generated|add24_result[19]~97COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[20]~100_combout\,
	cout0 => \Mult0|auto_generated|add24_result[20]~102\,
	cout1 => \Mult0|auto_generated|add24_result[20]~102COUT1_137\);

-- Location: LC_X9_Y5_N4
\Mult0|auto_generated|add24_result[21]~105\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[21]~105_combout\ = \Mult0|auto_generated|le8a\(17) $ (\Mult0|auto_generated|le9a\(15) $ ((!(!\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[20]~102\) # 
-- (\Mult0|auto_generated|add24_result[16]~82\ & \Mult0|auto_generated|add24_result[20]~102COUT1_137\))))
-- \Mult0|auto_generated|add24_result[21]~107\ = CARRY((\Mult0|auto_generated|le8a\(17) & ((!\Mult0|auto_generated|add24_result[20]~102COUT1_137\) # (!\Mult0|auto_generated|le9a\(15)))) # (!\Mult0|auto_generated|le8a\(17) & (!\Mult0|auto_generated|le9a\(15) 
-- & !\Mult0|auto_generated|add24_result[20]~102COUT1_137\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le8a\(17),
	datab => \Mult0|auto_generated|le9a\(15),
	cin => \Mult0|auto_generated|add24_result[16]~82\,
	cin0 => \Mult0|auto_generated|add24_result[20]~102\,
	cin1 => \Mult0|auto_generated|add24_result[20]~102COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[21]~105_combout\,
	cout => \Mult0|auto_generated|add24_result[21]~107\);

-- Location: LC_X9_Y5_N5
\Mult0|auto_generated|add24_result[22]~110\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[22]~110_combout\ = (((\Mult0|auto_generated|add24_result[21]~107\)))
-- \Mult0|auto_generated|add24_result[22]~112\ = CARRY(((!\Mult0|auto_generated|add24_result[21]~107\)))
-- \Mult0|auto_generated|add24_result[22]~112COUT1_138\ = CARRY(((!\Mult0|auto_generated|add24_result[21]~107\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add24_result[21]~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[22]~110_combout\,
	cout0 => \Mult0|auto_generated|add24_result[22]~112\,
	cout1 => \Mult0|auto_generated|add24_result[22]~112COUT1_138\);

-- Location: LC_X9_Y5_N6
\Mult0|auto_generated|add24_result[23]~115\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|add24_result[23]~115_combout\ = ((((!\Mult0|auto_generated|add24_result[21]~107\ & \Mult0|auto_generated|add24_result[22]~112\) # (\Mult0|auto_generated|add24_result[21]~107\ & \Mult0|auto_generated|add24_result[22]~112COUT1_138\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|add24_result[21]~107\,
	cin0 => \Mult0|auto_generated|add24_result[22]~112\,
	cin1 => \Mult0|auto_generated|add24_result[22]~112COUT1_138\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|add24_result[23]~115_combout\);

-- Location: LC_X12_Y7_N9
\Mult0|auto_generated|le9a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(17) = LCELL((((\Mult0|auto_generated|cs1a\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mult0|auto_generated|cs1a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(17));

-- Location: LC_X10_Y5_N0
\Mult0|auto_generated|le10a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(14) = LCELL((\input1~combout\(14) & ((\Mult0|auto_generated|cs2a\(7)) # ((\Mult0|auto_generated|cs1a\(7) & \input1~combout\(13))))) # (!\input1~combout\(14) & (\Mult0|auto_generated|cs1a\(7) & ((\input1~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \Mult0|auto_generated|cs1a\(7),
	datac => \Mult0|auto_generated|cs2a\(7),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(14));

-- Location: LC_X11_Y5_N0
\Mult0|auto_generated|le9a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le9a\(16) = LCELL((\Mult0|auto_generated|cs1a\(6) & (((\Mult0|auto_generated|cs2a\(6)) # (!\input1~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(6),
	datac => \input1~combout\(15),
	datad => \Mult0|auto_generated|cs2a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le9a\(16));

-- Location: LC_X12_Y7_N5
\Mult0|auto_generated|op_3~120\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~120_combout\ = \Mult0|auto_generated|le10a\(14) $ (\Mult0|auto_generated|le9a\(16) $ ((!\Mult0|auto_generated|op_3~117\)))
-- \Mult0|auto_generated|op_3~122\ = CARRY((\Mult0|auto_generated|le10a\(14) & ((\Mult0|auto_generated|le9a\(16)) # (!\Mult0|auto_generated|op_3~117\))) # (!\Mult0|auto_generated|le10a\(14) & (\Mult0|auto_generated|le9a\(16) & 
-- !\Mult0|auto_generated|op_3~117\)))
-- \Mult0|auto_generated|op_3~122COUT1_160\ = CARRY((\Mult0|auto_generated|le10a\(14) & ((\Mult0|auto_generated|le9a\(16)) # (!\Mult0|auto_generated|op_3~117\))) # (!\Mult0|auto_generated|le10a\(14) & (\Mult0|auto_generated|le9a\(16) & 
-- !\Mult0|auto_generated|op_3~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(14),
	datab => \Mult0|auto_generated|le9a\(16),
	cin => \Mult0|auto_generated|op_3~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~120_combout\,
	cout0 => \Mult0|auto_generated|op_3~122\,
	cout1 => \Mult0|auto_generated|op_3~122COUT1_160\);

-- Location: LC_X12_Y7_N6
\Mult0|auto_generated|op_3~125\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~125_combout\ = \Mult0|auto_generated|add24_result[23]~115_combout\ $ (\Mult0|auto_generated|le9a\(17) $ ((!(!\Mult0|auto_generated|op_3~117\ & \Mult0|auto_generated|op_3~122\) # (\Mult0|auto_generated|op_3~117\ & 
-- \Mult0|auto_generated|op_3~122COUT1_160\))))
-- \Mult0|auto_generated|op_3~127\ = CARRY((\Mult0|auto_generated|add24_result[23]~115_combout\ & (\Mult0|auto_generated|le9a\(17) & !\Mult0|auto_generated|op_3~122\)) # (!\Mult0|auto_generated|add24_result[23]~115_combout\ & 
-- ((\Mult0|auto_generated|le9a\(17)) # (!\Mult0|auto_generated|op_3~122\))))
-- \Mult0|auto_generated|op_3~127COUT1_161\ = CARRY((\Mult0|auto_generated|add24_result[23]~115_combout\ & (\Mult0|auto_generated|le9a\(17) & !\Mult0|auto_generated|op_3~122COUT1_160\)) # (!\Mult0|auto_generated|add24_result[23]~115_combout\ & 
-- ((\Mult0|auto_generated|le9a\(17)) # (!\Mult0|auto_generated|op_3~122COUT1_160\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[23]~115_combout\,
	datab => \Mult0|auto_generated|le9a\(17),
	cin => \Mult0|auto_generated|op_3~117\,
	cin0 => \Mult0|auto_generated|op_3~122\,
	cin1 => \Mult0|auto_generated|op_3~122COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~125_combout\,
	cout0 => \Mult0|auto_generated|op_3~127\,
	cout1 => \Mult0|auto_generated|op_3~127COUT1_161\);

-- Location: LC_X12_Y7_N7
\Mult0|auto_generated|op_3~130\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~130_combout\ = ((((!\Mult0|auto_generated|op_3~117\ & \Mult0|auto_generated|op_3~127\) # (\Mult0|auto_generated|op_3~117\ & \Mult0|auto_generated|op_3~127COUT1_161\))))
-- \Mult0|auto_generated|op_3~132\ = CARRY(((!\Mult0|auto_generated|op_3~127\)))
-- \Mult0|auto_generated|op_3~132COUT1_162\ = CARRY(((!\Mult0|auto_generated|op_3~127COUT1_161\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|op_3~117\,
	cin0 => \Mult0|auto_generated|op_3~127\,
	cin1 => \Mult0|auto_generated|op_3~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~130_combout\,
	cout0 => \Mult0|auto_generated|op_3~132\,
	cout1 => \Mult0|auto_generated|op_3~132COUT1_162\);

-- Location: LC_X10_Y5_N9
\Mult0|auto_generated|le10a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(16) = LCELL((\Mult0|auto_generated|cs1a\(7) & (((\input1~combout\(15))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|cs1a\(7),
	datad => \input1~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(16));

-- Location: LC_X9_Y4_N3
\Mult0|auto_generated|le11a[11]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(11) = LCELL(((\input2~combout\(15) & ((\input1~combout\(11))))))

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
	datab => \input2~combout\(15),
	datad => \input1~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(11));

-- Location: LC_X4_Y4_N9
\Mult0|auto_generated|le11a[10]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(10) = LCELL(((\input2~combout\(15) & (\input1~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input2~combout\(15),
	datac => \input1~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(10));

-- Location: LC_X9_Y4_N2
\Mult0|auto_generated|le11a[9]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(9) = LCELL(((\input2~combout\(15) & (\input1~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input2~combout\(15),
	datac => \input1~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(9));

-- Location: LC_X9_Y6_N2
\Mult0|auto_generated|op_2~110\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~110_combout\ = \Mult0|auto_generated|add24_result[18]~90_combout\ $ (\Mult0|auto_generated|le11a\(9) $ ((!(!\Mult0|auto_generated|op_2~97\ & \Mult0|auto_generated|op_2~107\) # (\Mult0|auto_generated|op_2~97\ & 
-- \Mult0|auto_generated|op_2~107COUT1_168\))))
-- \Mult0|auto_generated|op_2~112\ = CARRY((\Mult0|auto_generated|add24_result[18]~90_combout\ & ((\Mult0|auto_generated|le11a\(9)) # (!\Mult0|auto_generated|op_2~107\))) # (!\Mult0|auto_generated|add24_result[18]~90_combout\ & 
-- (\Mult0|auto_generated|le11a\(9) & !\Mult0|auto_generated|op_2~107\)))
-- \Mult0|auto_generated|op_2~112COUT1_169\ = CARRY((\Mult0|auto_generated|add24_result[18]~90_combout\ & ((\Mult0|auto_generated|le11a\(9)) # (!\Mult0|auto_generated|op_2~107COUT1_168\))) # (!\Mult0|auto_generated|add24_result[18]~90_combout\ & 
-- (\Mult0|auto_generated|le11a\(9) & !\Mult0|auto_generated|op_2~107COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[18]~90_combout\,
	datab => \Mult0|auto_generated|le11a\(9),
	cin => \Mult0|auto_generated|op_2~97\,
	cin0 => \Mult0|auto_generated|op_2~107\,
	cin1 => \Mult0|auto_generated|op_2~107COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~110_combout\,
	cout0 => \Mult0|auto_generated|op_2~112\,
	cout1 => \Mult0|auto_generated|op_2~112COUT1_169\);

-- Location: LC_X9_Y6_N3
\Mult0|auto_generated|op_2~115\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~115_combout\ = \Mult0|auto_generated|add24_result[19]~95_combout\ $ (\Mult0|auto_generated|le11a\(10) $ (((!\Mult0|auto_generated|op_2~97\ & \Mult0|auto_generated|op_2~112\) # (\Mult0|auto_generated|op_2~97\ & 
-- \Mult0|auto_generated|op_2~112COUT1_169\))))
-- \Mult0|auto_generated|op_2~117\ = CARRY((\Mult0|auto_generated|add24_result[19]~95_combout\ & (!\Mult0|auto_generated|le11a\(10) & !\Mult0|auto_generated|op_2~112\)) # (!\Mult0|auto_generated|add24_result[19]~95_combout\ & 
-- ((!\Mult0|auto_generated|op_2~112\) # (!\Mult0|auto_generated|le11a\(10)))))
-- \Mult0|auto_generated|op_2~117COUT1_170\ = CARRY((\Mult0|auto_generated|add24_result[19]~95_combout\ & (!\Mult0|auto_generated|le11a\(10) & !\Mult0|auto_generated|op_2~112COUT1_169\)) # (!\Mult0|auto_generated|add24_result[19]~95_combout\ & 
-- ((!\Mult0|auto_generated|op_2~112COUT1_169\) # (!\Mult0|auto_generated|le11a\(10)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|add24_result[19]~95_combout\,
	datab => \Mult0|auto_generated|le11a\(10),
	cin => \Mult0|auto_generated|op_2~97\,
	cin0 => \Mult0|auto_generated|op_2~112\,
	cin1 => \Mult0|auto_generated|op_2~112COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~115_combout\,
	cout0 => \Mult0|auto_generated|op_2~117\,
	cout1 => \Mult0|auto_generated|op_2~117COUT1_170\);

-- Location: LC_X9_Y6_N4
\Mult0|auto_generated|op_2~120\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~120_combout\ = \Mult0|auto_generated|le11a\(11) $ (\Mult0|auto_generated|add24_result[20]~100_combout\ $ ((!(!\Mult0|auto_generated|op_2~97\ & \Mult0|auto_generated|op_2~117\) # (\Mult0|auto_generated|op_2~97\ & 
-- \Mult0|auto_generated|op_2~117COUT1_170\))))
-- \Mult0|auto_generated|op_2~122\ = CARRY((\Mult0|auto_generated|le11a\(11) & ((\Mult0|auto_generated|add24_result[20]~100_combout\) # (!\Mult0|auto_generated|op_2~117COUT1_170\))) # (!\Mult0|auto_generated|le11a\(11) & 
-- (\Mult0|auto_generated|add24_result[20]~100_combout\ & !\Mult0|auto_generated|op_2~117COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(11),
	datab => \Mult0|auto_generated|add24_result[20]~100_combout\,
	cin => \Mult0|auto_generated|op_2~97\,
	cin0 => \Mult0|auto_generated|op_2~117\,
	cin1 => \Mult0|auto_generated|op_2~117COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~120_combout\,
	cout => \Mult0|auto_generated|op_2~122\);

-- Location: LC_X10_Y5_N8
\Mult0|auto_generated|le11a[14]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(14) = LCELL(((\input2~combout\(15) & ((\input1~combout\(14))))))

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
	datab => \input2~combout\(15),
	datad => \input1~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(14));

-- Location: LC_X10_Y5_N7
\Mult0|auto_generated|le10a[15]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(15) = LCELL((\input1~combout\(14) & ((\Mult0|auto_generated|cs1a\(7)) # ((\input1~combout\(15) & \Mult0|auto_generated|cs2a\(7))))) # (!\input1~combout\(14) & (\input1~combout\(15) & (\Mult0|auto_generated|cs2a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input1~combout\(14),
	datab => \input1~combout\(15),
	datac => \Mult0|auto_generated|cs2a\(7),
	datad => \Mult0|auto_generated|cs1a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(15));

-- Location: LC_X9_Y4_N0
\Mult0|auto_generated|le11a[13]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(13) = LCELL(((\input2~combout\(15) & ((\input1~combout\(13))))))

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
	datab => \input2~combout\(15),
	datad => \input1~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(13));

-- Location: LC_X10_Y7_N0
\Mult0|auto_generated|le11a[12]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(12) = LCELL((((\input1~combout\(12) & \input2~combout\(15)))))

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
	datac => \input1~combout\(12),
	datad => \input2~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(12));

-- Location: LC_X9_Y6_N5
\Mult0|auto_generated|op_2~125\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~125_combout\ = \Mult0|auto_generated|le11a\(12) $ (\Mult0|auto_generated|add24_result[21]~105_combout\ $ ((\Mult0|auto_generated|op_2~122\)))
-- \Mult0|auto_generated|op_2~127\ = CARRY((\Mult0|auto_generated|le11a\(12) & (!\Mult0|auto_generated|add24_result[21]~105_combout\ & !\Mult0|auto_generated|op_2~122\)) # (!\Mult0|auto_generated|le11a\(12) & ((!\Mult0|auto_generated|op_2~122\) # 
-- (!\Mult0|auto_generated|add24_result[21]~105_combout\))))
-- \Mult0|auto_generated|op_2~127COUT1_171\ = CARRY((\Mult0|auto_generated|le11a\(12) & (!\Mult0|auto_generated|add24_result[21]~105_combout\ & !\Mult0|auto_generated|op_2~122\)) # (!\Mult0|auto_generated|le11a\(12) & ((!\Mult0|auto_generated|op_2~122\) # 
-- (!\Mult0|auto_generated|add24_result[21]~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(12),
	datab => \Mult0|auto_generated|add24_result[21]~105_combout\,
	cin => \Mult0|auto_generated|op_2~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~125_combout\,
	cout0 => \Mult0|auto_generated|op_2~127\,
	cout1 => \Mult0|auto_generated|op_2~127COUT1_171\);

-- Location: LC_X9_Y6_N6
\Mult0|auto_generated|op_2~130\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~130_combout\ = \Mult0|auto_generated|le11a\(13) $ (\Mult0|auto_generated|add24_result[22]~110_combout\ $ ((!(!\Mult0|auto_generated|op_2~122\ & \Mult0|auto_generated|op_2~127\) # (\Mult0|auto_generated|op_2~122\ & 
-- \Mult0|auto_generated|op_2~127COUT1_171\))))
-- \Mult0|auto_generated|op_2~132\ = CARRY((\Mult0|auto_generated|le11a\(13) & ((\Mult0|auto_generated|add24_result[22]~110_combout\) # (!\Mult0|auto_generated|op_2~127\))) # (!\Mult0|auto_generated|le11a\(13) & 
-- (\Mult0|auto_generated|add24_result[22]~110_combout\ & !\Mult0|auto_generated|op_2~127\)))
-- \Mult0|auto_generated|op_2~132COUT1_172\ = CARRY((\Mult0|auto_generated|le11a\(13) & ((\Mult0|auto_generated|add24_result[22]~110_combout\) # (!\Mult0|auto_generated|op_2~127COUT1_171\))) # (!\Mult0|auto_generated|le11a\(13) & 
-- (\Mult0|auto_generated|add24_result[22]~110_combout\ & !\Mult0|auto_generated|op_2~127COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(13),
	datab => \Mult0|auto_generated|add24_result[22]~110_combout\,
	cin => \Mult0|auto_generated|op_2~122\,
	cin0 => \Mult0|auto_generated|op_2~127\,
	cin1 => \Mult0|auto_generated|op_2~127COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~130_combout\,
	cout0 => \Mult0|auto_generated|op_2~132\,
	cout1 => \Mult0|auto_generated|op_2~132COUT1_172\);

-- Location: LC_X9_Y6_N7
\Mult0|auto_generated|op_2~135\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~135_combout\ = \Mult0|auto_generated|le11a\(14) $ (\Mult0|auto_generated|le10a\(15) $ (((!\Mult0|auto_generated|op_2~122\ & \Mult0|auto_generated|op_2~132\) # (\Mult0|auto_generated|op_2~122\ & 
-- \Mult0|auto_generated|op_2~132COUT1_172\))))
-- \Mult0|auto_generated|op_2~137\ = CARRY((\Mult0|auto_generated|le11a\(14) & (!\Mult0|auto_generated|le10a\(15) & !\Mult0|auto_generated|op_2~132\)) # (!\Mult0|auto_generated|le11a\(14) & ((!\Mult0|auto_generated|op_2~132\) # 
-- (!\Mult0|auto_generated|le10a\(15)))))
-- \Mult0|auto_generated|op_2~137COUT1_173\ = CARRY((\Mult0|auto_generated|le11a\(14) & (!\Mult0|auto_generated|le10a\(15) & !\Mult0|auto_generated|op_2~132COUT1_172\)) # (!\Mult0|auto_generated|le11a\(14) & ((!\Mult0|auto_generated|op_2~132COUT1_172\) # 
-- (!\Mult0|auto_generated|le10a\(15)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le11a\(14),
	datab => \Mult0|auto_generated|le10a\(15),
	cin => \Mult0|auto_generated|op_2~122\,
	cin0 => \Mult0|auto_generated|op_2~132\,
	cin1 => \Mult0|auto_generated|op_2~132COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~135_combout\,
	cout0 => \Mult0|auto_generated|op_2~137\,
	cout1 => \Mult0|auto_generated|op_2~137COUT1_173\);

-- Location: LC_X9_Y6_N8
\Mult0|auto_generated|op_2~140\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~140_combout\ = \Mult0|auto_generated|le10a\(16) $ (\Mult0|auto_generated|le11a\(15) $ ((!(!\Mult0|auto_generated|op_2~122\ & \Mult0|auto_generated|op_2~137\) # (\Mult0|auto_generated|op_2~122\ & 
-- \Mult0|auto_generated|op_2~137COUT1_173\))))
-- \Mult0|auto_generated|op_2~142\ = CARRY((\Mult0|auto_generated|le10a\(16) & ((\Mult0|auto_generated|le11a\(15)) # (!\Mult0|auto_generated|op_2~137\))) # (!\Mult0|auto_generated|le10a\(16) & (\Mult0|auto_generated|le11a\(15) & 
-- !\Mult0|auto_generated|op_2~137\)))
-- \Mult0|auto_generated|op_2~142COUT1_174\ = CARRY((\Mult0|auto_generated|le10a\(16) & ((\Mult0|auto_generated|le11a\(15)) # (!\Mult0|auto_generated|op_2~137COUT1_173\))) # (!\Mult0|auto_generated|le10a\(16) & (\Mult0|auto_generated|le11a\(15) & 
-- !\Mult0|auto_generated|op_2~137COUT1_173\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(16),
	datab => \Mult0|auto_generated|le11a\(15),
	cin => \Mult0|auto_generated|op_2~122\,
	cin0 => \Mult0|auto_generated|op_2~137\,
	cin1 => \Mult0|auto_generated|op_2~137COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~140_combout\,
	cout0 => \Mult0|auto_generated|op_2~142\,
	cout1 => \Mult0|auto_generated|op_2~142COUT1_174\);

-- Location: LC_X8_Y7_N8
\Mult0|auto_generated|op_1~120\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~120_combout\ = \Mult0|auto_generated|op_3~100_combout\ $ (\Mult0|auto_generated|op_2~110_combout\ $ ((!(!\Mult0|auto_generated|op_1~102\ & \Mult0|auto_generated|op_1~117\) # (\Mult0|auto_generated|op_1~102\ & 
-- \Mult0|auto_generated|op_1~117COUT1_179\))))
-- \Mult0|auto_generated|op_1~122\ = CARRY((\Mult0|auto_generated|op_3~100_combout\ & ((\Mult0|auto_generated|op_2~110_combout\) # (!\Mult0|auto_generated|op_1~117\))) # (!\Mult0|auto_generated|op_3~100_combout\ & (\Mult0|auto_generated|op_2~110_combout\ & 
-- !\Mult0|auto_generated|op_1~117\)))
-- \Mult0|auto_generated|op_1~122COUT1_180\ = CARRY((\Mult0|auto_generated|op_3~100_combout\ & ((\Mult0|auto_generated|op_2~110_combout\) # (!\Mult0|auto_generated|op_1~117COUT1_179\))) # (!\Mult0|auto_generated|op_3~100_combout\ & 
-- (\Mult0|auto_generated|op_2~110_combout\ & !\Mult0|auto_generated|op_1~117COUT1_179\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~100_combout\,
	datab => \Mult0|auto_generated|op_2~110_combout\,
	cin => \Mult0|auto_generated|op_1~102\,
	cin0 => \Mult0|auto_generated|op_1~117\,
	cin1 => \Mult0|auto_generated|op_1~117COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~120_combout\,
	cout0 => \Mult0|auto_generated|op_1~122\,
	cout1 => \Mult0|auto_generated|op_1~122COUT1_180\);

-- Location: LC_X8_Y7_N9
\Mult0|auto_generated|op_1~125\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~125_combout\ = \Mult0|auto_generated|op_2~115_combout\ $ (\Mult0|auto_generated|op_3~105_combout\ $ (((!\Mult0|auto_generated|op_1~102\ & \Mult0|auto_generated|op_1~122\) # (\Mult0|auto_generated|op_1~102\ & 
-- \Mult0|auto_generated|op_1~122COUT1_180\))))
-- \Mult0|auto_generated|op_1~127\ = CARRY((\Mult0|auto_generated|op_2~115_combout\ & (!\Mult0|auto_generated|op_3~105_combout\ & !\Mult0|auto_generated|op_1~122COUT1_180\)) # (!\Mult0|auto_generated|op_2~115_combout\ & 
-- ((!\Mult0|auto_generated|op_1~122COUT1_180\) # (!\Mult0|auto_generated|op_3~105_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_2~115_combout\,
	datab => \Mult0|auto_generated|op_3~105_combout\,
	cin => \Mult0|auto_generated|op_1~102\,
	cin0 => \Mult0|auto_generated|op_1~122\,
	cin1 => \Mult0|auto_generated|op_1~122COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~125_combout\,
	cout => \Mult0|auto_generated|op_1~127\);

-- Location: LC_X9_Y7_N0
\Mult0|auto_generated|op_1~130\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~130_combout\ = \Mult0|auto_generated|op_3~110_combout\ $ (\Mult0|auto_generated|op_2~120_combout\ $ ((!\Mult0|auto_generated|op_1~127\)))
-- \Mult0|auto_generated|op_1~132\ = CARRY((\Mult0|auto_generated|op_3~110_combout\ & ((\Mult0|auto_generated|op_2~120_combout\) # (!\Mult0|auto_generated|op_1~127\))) # (!\Mult0|auto_generated|op_3~110_combout\ & (\Mult0|auto_generated|op_2~120_combout\ & 
-- !\Mult0|auto_generated|op_1~127\)))
-- \Mult0|auto_generated|op_1~132COUT1_181\ = CARRY((\Mult0|auto_generated|op_3~110_combout\ & ((\Mult0|auto_generated|op_2~120_combout\) # (!\Mult0|auto_generated|op_1~127\))) # (!\Mult0|auto_generated|op_3~110_combout\ & 
-- (\Mult0|auto_generated|op_2~120_combout\ & !\Mult0|auto_generated|op_1~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~110_combout\,
	datab => \Mult0|auto_generated|op_2~120_combout\,
	cin => \Mult0|auto_generated|op_1~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~130_combout\,
	cout0 => \Mult0|auto_generated|op_1~132\,
	cout1 => \Mult0|auto_generated|op_1~132COUT1_181\);

-- Location: LC_X9_Y7_N1
\Mult0|auto_generated|op_1~135\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~135_combout\ = \Mult0|auto_generated|op_3~115_combout\ $ (\Mult0|auto_generated|op_2~125_combout\ $ (((!\Mult0|auto_generated|op_1~127\ & \Mult0|auto_generated|op_1~132\) # (\Mult0|auto_generated|op_1~127\ & 
-- \Mult0|auto_generated|op_1~132COUT1_181\))))
-- \Mult0|auto_generated|op_1~137\ = CARRY((\Mult0|auto_generated|op_3~115_combout\ & (!\Mult0|auto_generated|op_2~125_combout\ & !\Mult0|auto_generated|op_1~132\)) # (!\Mult0|auto_generated|op_3~115_combout\ & ((!\Mult0|auto_generated|op_1~132\) # 
-- (!\Mult0|auto_generated|op_2~125_combout\))))
-- \Mult0|auto_generated|op_1~137COUT1_182\ = CARRY((\Mult0|auto_generated|op_3~115_combout\ & (!\Mult0|auto_generated|op_2~125_combout\ & !\Mult0|auto_generated|op_1~132COUT1_181\)) # (!\Mult0|auto_generated|op_3~115_combout\ & 
-- ((!\Mult0|auto_generated|op_1~132COUT1_181\) # (!\Mult0|auto_generated|op_2~125_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~115_combout\,
	datab => \Mult0|auto_generated|op_2~125_combout\,
	cin => \Mult0|auto_generated|op_1~127\,
	cin0 => \Mult0|auto_generated|op_1~132\,
	cin1 => \Mult0|auto_generated|op_1~132COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~135_combout\,
	cout0 => \Mult0|auto_generated|op_1~137\,
	cout1 => \Mult0|auto_generated|op_1~137COUT1_182\);

-- Location: LC_X9_Y7_N2
\Mult0|auto_generated|op_1~140\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~140_combout\ = \Mult0|auto_generated|op_3~120_combout\ $ (\Mult0|auto_generated|op_2~130_combout\ $ ((!(!\Mult0|auto_generated|op_1~127\ & \Mult0|auto_generated|op_1~137\) # (\Mult0|auto_generated|op_1~127\ & 
-- \Mult0|auto_generated|op_1~137COUT1_182\))))
-- \Mult0|auto_generated|op_1~142\ = CARRY((\Mult0|auto_generated|op_3~120_combout\ & ((\Mult0|auto_generated|op_2~130_combout\) # (!\Mult0|auto_generated|op_1~137\))) # (!\Mult0|auto_generated|op_3~120_combout\ & (\Mult0|auto_generated|op_2~130_combout\ & 
-- !\Mult0|auto_generated|op_1~137\)))
-- \Mult0|auto_generated|op_1~142COUT1_183\ = CARRY((\Mult0|auto_generated|op_3~120_combout\ & ((\Mult0|auto_generated|op_2~130_combout\) # (!\Mult0|auto_generated|op_1~137COUT1_182\))) # (!\Mult0|auto_generated|op_3~120_combout\ & 
-- (\Mult0|auto_generated|op_2~130_combout\ & !\Mult0|auto_generated|op_1~137COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~120_combout\,
	datab => \Mult0|auto_generated|op_2~130_combout\,
	cin => \Mult0|auto_generated|op_1~127\,
	cin0 => \Mult0|auto_generated|op_1~137\,
	cin1 => \Mult0|auto_generated|op_1~137COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~140_combout\,
	cout0 => \Mult0|auto_generated|op_1~142\,
	cout1 => \Mult0|auto_generated|op_1~142COUT1_183\);

-- Location: LC_X9_Y7_N3
\Mult0|auto_generated|op_1~145\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~145_combout\ = \Mult0|auto_generated|op_3~125_combout\ $ (\Mult0|auto_generated|op_2~135_combout\ $ (((!\Mult0|auto_generated|op_1~127\ & \Mult0|auto_generated|op_1~142\) # (\Mult0|auto_generated|op_1~127\ & 
-- \Mult0|auto_generated|op_1~142COUT1_183\))))
-- \Mult0|auto_generated|op_1~147\ = CARRY((\Mult0|auto_generated|op_3~125_combout\ & (!\Mult0|auto_generated|op_2~135_combout\ & !\Mult0|auto_generated|op_1~142\)) # (!\Mult0|auto_generated|op_3~125_combout\ & ((!\Mult0|auto_generated|op_1~142\) # 
-- (!\Mult0|auto_generated|op_2~135_combout\))))
-- \Mult0|auto_generated|op_1~147COUT1_184\ = CARRY((\Mult0|auto_generated|op_3~125_combout\ & (!\Mult0|auto_generated|op_2~135_combout\ & !\Mult0|auto_generated|op_1~142COUT1_183\)) # (!\Mult0|auto_generated|op_3~125_combout\ & 
-- ((!\Mult0|auto_generated|op_1~142COUT1_183\) # (!\Mult0|auto_generated|op_2~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~125_combout\,
	datab => \Mult0|auto_generated|op_2~135_combout\,
	cin => \Mult0|auto_generated|op_1~127\,
	cin0 => \Mult0|auto_generated|op_1~142\,
	cin1 => \Mult0|auto_generated|op_1~142COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~145_combout\,
	cout0 => \Mult0|auto_generated|op_1~147\,
	cout1 => \Mult0|auto_generated|op_1~147COUT1_184\);

-- Location: LC_X9_Y7_N4
\Mult0|auto_generated|op_1~150\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~150_combout\ = \Mult0|auto_generated|op_3~130_combout\ $ (\Mult0|auto_generated|op_2~140_combout\ $ ((!(!\Mult0|auto_generated|op_1~127\ & \Mult0|auto_generated|op_1~147\) # (\Mult0|auto_generated|op_1~127\ & 
-- \Mult0|auto_generated|op_1~147COUT1_184\))))
-- \Mult0|auto_generated|op_1~152\ = CARRY((\Mult0|auto_generated|op_3~130_combout\ & ((\Mult0|auto_generated|op_2~140_combout\) # (!\Mult0|auto_generated|op_1~147COUT1_184\))) # (!\Mult0|auto_generated|op_3~130_combout\ & 
-- (\Mult0|auto_generated|op_2~140_combout\ & !\Mult0|auto_generated|op_1~147COUT1_184\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_3~130_combout\,
	datab => \Mult0|auto_generated|op_2~140_combout\,
	cin => \Mult0|auto_generated|op_1~127\,
	cin0 => \Mult0|auto_generated|op_1~147\,
	cin1 => \Mult0|auto_generated|op_1~147COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~150_combout\,
	cout => \Mult0|auto_generated|op_1~152\);

-- Location: LC_X6_Y7_N0
\Mult0|auto_generated|le10a[17]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le10a\(17) = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le10a\(17));

-- Location: LC_X10_Y1_N2
\Mult0|auto_generated|le11a[16]\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|le11a\(16) = LCELL(GND)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|le11a\(16));

-- Location: LC_X9_Y6_N9
\Mult0|auto_generated|op_2~145\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_2~145_combout\ = \Mult0|auto_generated|le10a\(17) $ (\Mult0|auto_generated|le11a\(16) $ (((!\Mult0|auto_generated|op_2~122\ & \Mult0|auto_generated|op_2~142\) # (\Mult0|auto_generated|op_2~122\ & 
-- \Mult0|auto_generated|op_2~142COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|le10a\(17),
	datab => \Mult0|auto_generated|le11a\(16),
	cin => \Mult0|auto_generated|op_2~122\,
	cin0 => \Mult0|auto_generated|op_2~142\,
	cin1 => \Mult0|auto_generated|op_2~142COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_2~145_combout\);

-- Location: LC_X12_Y7_N8
\Mult0|auto_generated|op_3~135\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_3~135_combout\ = (((!(!\Mult0|auto_generated|op_3~117\ & \Mult0|auto_generated|op_3~132\) # (\Mult0|auto_generated|op_3~117\ & \Mult0|auto_generated|op_3~132COUT1_162\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mult0|auto_generated|op_3~117\,
	cin0 => \Mult0|auto_generated|op_3~132\,
	cin1 => \Mult0|auto_generated|op_3~132COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_3~135_combout\);

-- Location: LC_X9_Y7_N5
\Mult0|auto_generated|op_1~155\ : maxii_lcell
-- Equation(s):
-- \Mult0|auto_generated|op_1~155_combout\ = (\Mult0|auto_generated|op_2~145_combout\ $ (\Mult0|auto_generated|op_1~152\ $ (\Mult0|auto_generated|op_3~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mult0|auto_generated|op_2~145_combout\,
	datad => \Mult0|auto_generated|op_3~135_combout\,
	cin => \Mult0|auto_generated|op_1~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mult0|auto_generated|op_1~155_combout\);

-- Location: LC_X9_Y7_N7
\LessThan0~7\ : maxii_lcell
-- Equation(s):
-- \LessThan0~7_combout\ = (\Mult0|auto_generated|op_1~150_combout\) # ((\Mult0|auto_generated|op_1~140_combout\) # ((\Mult0|auto_generated|op_1~155_combout\) # (\Mult0|auto_generated|op_1~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~150_combout\,
	datab => \Mult0|auto_generated|op_1~140_combout\,
	datac => \Mult0|auto_generated|op_1~155_combout\,
	datad => \Mult0|auto_generated|op_1~145_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~7_combout\);

-- Location: LC_X5_Y7_N5
\LessThan0~2\ : maxii_lcell
-- Equation(s):
-- \LessThan0~2_combout\ = (\Mult0|auto_generated|op_1~70_combout\) # ((\Mult0|auto_generated|op_1~65_combout\) # ((\Mult0|auto_generated|op_1~60_combout\) # (\Mult0|auto_generated|op_1~75_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~70_combout\,
	datab => \Mult0|auto_generated|op_1~65_combout\,
	datac => \Mult0|auto_generated|op_1~60_combout\,
	datad => \Mult0|auto_generated|op_1~75_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~2_combout\);

-- Location: LC_X6_Y7_N1
\LessThan0~3\ : maxii_lcell
-- Equation(s):
-- \LessThan0~3_combout\ = (\Mult0|auto_generated|op_1~90_combout\) # ((\Mult0|auto_generated|op_1~85_combout\) # ((\Mult0|auto_generated|op_1~80_combout\) # (\Mult0|auto_generated|op_1~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~90_combout\,
	datab => \Mult0|auto_generated|op_1~85_combout\,
	datac => \Mult0|auto_generated|op_1~80_combout\,
	datad => \Mult0|auto_generated|op_1~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~3_combout\);

-- Location: LC_X5_Y7_N9
\LessThan0~1\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1_combout\ = (\Mult0|auto_generated|op_1~55_combout\) # ((\Mult0|auto_generated|op_1~45_combout\) # ((\Mult0|auto_generated|op_1~50_combout\) # (\Mult0|auto_generated|op_1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~55_combout\,
	datab => \Mult0|auto_generated|op_1~45_combout\,
	datac => \Mult0|auto_generated|op_1~50_combout\,
	datad => \Mult0|auto_generated|op_1~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1_combout\);

-- Location: LC_X6_Y7_N2
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (\Mult0|auto_generated|op_1~20_combout\) # ((\Mult0|auto_generated|op_1~25_combout\) # ((\Mult0|auto_generated|op_1~30_combout\) # (\Mult0|auto_generated|op_1~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~20_combout\,
	datab => \Mult0|auto_generated|op_1~25_combout\,
	datac => \Mult0|auto_generated|op_1~30_combout\,
	datad => \Mult0|auto_generated|op_1~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X6_Y7_N3
\LessThan0~4\ : maxii_lcell
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~2_combout\) # ((\LessThan0~3_combout\) # ((\LessThan0~1_combout\) # (\LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~2_combout\,
	datab => \LessThan0~3_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~4_combout\);

-- Location: LC_X9_Y7_N9
\LessThan0~6\ : maxii_lcell
-- Equation(s):
-- \LessThan0~6_combout\ = (\Mult0|auto_generated|op_1~125_combout\) # ((\Mult0|auto_generated|op_1~135_combout\) # ((\Mult0|auto_generated|op_1~120_combout\) # (\Mult0|auto_generated|op_1~130_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mult0|auto_generated|op_1~125_combout\,
	datab => \Mult0|auto_generated|op_1~135_combout\,
	datac => \Mult0|auto_generated|op_1~120_combout\,
	datad => \Mult0|auto_generated|op_1~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~6_combout\);

-- Location: LC_X9_Y7_N8
\LessThan0~8\ : maxii_lcell
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~7_combout\) # ((\LessThan0~4_combout\) # (\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~8_combout\);

-- Location: LC_X4_Y7_N9
\Mux16~1\ : maxii_lcell
-- Equation(s):
-- \Mux16~1_combout\ = (\sel~combout\(1) & (((!\sel~combout\(3) & \LessThan0~8_combout\)))) # (!\sel~combout\(1) & (\Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sel~combout\(1),
	datab => \Mux16~0_combout\,
	datac => \sel~combout\(3),
	datad => \LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux16~1_combout\);

-- Location: LC_X4_Y7_N2
\Mux16~2\ : maxii_lcell
-- Equation(s):
-- \Mux16~2_combout\ = ((!\sel~combout\(2) & (!\sel~combout\(0) & \Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \sel~combout\(2),
	datac => \sel~combout\(0),
	datad => \Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux16~2_combout\);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[0]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux15~7_combout\,
	oe => VCC,
	padio => ww_output(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[1]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux14~5_combout\,
	oe => VCC,
	padio => ww_output(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[2]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux13~5_combout\,
	oe => VCC,
	padio => ww_output(2));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[3]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux12~5_combout\,
	oe => VCC,
	padio => ww_output(3));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[4]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux11~5_combout\,
	oe => VCC,
	padio => ww_output(4));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[5]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux10~5_combout\,
	oe => VCC,
	padio => ww_output(5));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[6]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux9~5_combout\,
	oe => VCC,
	padio => ww_output(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[7]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux8~1_combout\,
	oe => VCC,
	padio => ww_output(7));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[8]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux7~1_combout\,
	oe => VCC,
	padio => ww_output(8));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[9]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux6~5_combout\,
	oe => VCC,
	padio => ww_output(9));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[10]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux5~5_combout\,
	oe => VCC,
	padio => ww_output(10));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[11]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux4~5_combout\,
	oe => VCC,
	padio => ww_output(11));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[12]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux3~5_combout\,
	oe => VCC,
	padio => ww_output(12));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[13]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux2~5_combout\,
	oe => VCC,
	padio => ww_output(13));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[14]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux1~5_combout\,
	oe => VCC,
	padio => ww_output(14));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output[15]~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux0~1_combout\,
	oe => VCC,
	padio => ww_output(15));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\overflow~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Mux16~2_combout\,
	oe => VCC,
	padio => ww_overflow);
END structure;


