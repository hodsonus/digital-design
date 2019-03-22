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

-- DATE "03/11/2019 20:39:36"

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

ENTITY 	top_level IS
    PORT (
	clk50MHz : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : OUT std_logic_vector(6 DOWNTO 0);
	led0_dp : OUT std_logic;
	led1 : OUT std_logic_vector(6 DOWNTO 0);
	led1_dp : OUT std_logic;
	led2 : OUT std_logic_vector(6 DOWNTO 0);
	led2_dp : OUT std_logic;
	led3 : OUT std_logic_vector(6 DOWNTO 0);
	led3_dp : OUT std_logic;
	led4 : OUT std_logic_vector(6 DOWNTO 0);
	led4_dp : OUT std_logic;
	led5 : OUT std_logic_vector(6 DOWNTO 0);
	led5_dp : OUT std_logic
	);
END top_level;

-- Design Ports Information
-- led0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led0_dp	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led1_dp	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2_dp	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3_dp	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led4_dp	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led5_dp	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk50MHz : std_logic;
SIGNAL ww_switch : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_button : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_led0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led0_dp : std_logic;
SIGNAL ww_led1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led1_dp : std_logic;
SIGNAL ww_led2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led2_dp : std_logic;
SIGNAL ww_led3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led3_dp : std_logic;
SIGNAL ww_led4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led4_dp : std_logic;
SIGNAL ww_led5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_led5_dp : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \led0[0]~output_o\ : std_logic;
SIGNAL \led0[1]~output_o\ : std_logic;
SIGNAL \led0[2]~output_o\ : std_logic;
SIGNAL \led0[3]~output_o\ : std_logic;
SIGNAL \led0[4]~output_o\ : std_logic;
SIGNAL \led0[5]~output_o\ : std_logic;
SIGNAL \led0[6]~output_o\ : std_logic;
SIGNAL \led0_dp~output_o\ : std_logic;
SIGNAL \led1[0]~output_o\ : std_logic;
SIGNAL \led1[1]~output_o\ : std_logic;
SIGNAL \led1[2]~output_o\ : std_logic;
SIGNAL \led1[3]~output_o\ : std_logic;
SIGNAL \led1[4]~output_o\ : std_logic;
SIGNAL \led1[5]~output_o\ : std_logic;
SIGNAL \led1[6]~output_o\ : std_logic;
SIGNAL \led1_dp~output_o\ : std_logic;
SIGNAL \led2[0]~output_o\ : std_logic;
SIGNAL \led2[1]~output_o\ : std_logic;
SIGNAL \led2[2]~output_o\ : std_logic;
SIGNAL \led2[3]~output_o\ : std_logic;
SIGNAL \led2[4]~output_o\ : std_logic;
SIGNAL \led2[5]~output_o\ : std_logic;
SIGNAL \led2[6]~output_o\ : std_logic;
SIGNAL \led2_dp~output_o\ : std_logic;
SIGNAL \led3[0]~output_o\ : std_logic;
SIGNAL \led3[1]~output_o\ : std_logic;
SIGNAL \led3[2]~output_o\ : std_logic;
SIGNAL \led3[3]~output_o\ : std_logic;
SIGNAL \led3[4]~output_o\ : std_logic;
SIGNAL \led3[5]~output_o\ : std_logic;
SIGNAL \led3[6]~output_o\ : std_logic;
SIGNAL \led3_dp~output_o\ : std_logic;
SIGNAL \led4[0]~output_o\ : std_logic;
SIGNAL \led4[1]~output_o\ : std_logic;
SIGNAL \led4[2]~output_o\ : std_logic;
SIGNAL \led4[3]~output_o\ : std_logic;
SIGNAL \led4[4]~output_o\ : std_logic;
SIGNAL \led4[5]~output_o\ : std_logic;
SIGNAL \led4[6]~output_o\ : std_logic;
SIGNAL \led4_dp~output_o\ : std_logic;
SIGNAL \led5[0]~output_o\ : std_logic;
SIGNAL \led5[1]~output_o\ : std_logic;
SIGNAL \led5[2]~output_o\ : std_logic;
SIGNAL \led5[3]~output_o\ : std_logic;
SIGNAL \led5[4]~output_o\ : std_logic;
SIGNAL \led5[5]~output_o\ : std_logic;
SIGNAL \led5[6]~output_o\ : std_logic;
SIGNAL \led5_dp~output_o\ : std_logic;
SIGNAL \clk50MHz~input_o\ : std_logic;
SIGNAL \clk50MHz~inputclkctrl_outclk\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[1]~1_combout\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \U_GCD|U_CTRL|y_en~1_combout\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[0]~0_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[0]~0_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[7]~7_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|x_en~2_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[7]~7_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[7]~7_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[6]~6_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[5]~4_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[4]~4_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4_combout\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[3]~3_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[2]~2_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[0]~1\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[1]~3\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[2]~4_combout\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[2]~3_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[2]~5\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[3]~6_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[3]~2_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[3]~7\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[4]~8_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[4]~5_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[4]~9\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[5]~10_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[5]~5_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[5]~11\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[6]~12_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[6]~7_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[6]~13\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[7]~14_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_Y|output[7]~6_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~1_cout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~3_cout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~5_cout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~7_cout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~9_cout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~11_cout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~13_cout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|LessThan0~14_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|next_state.LOOP_BODY_B~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.LOOP_BODY_B~q\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[0]~0_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|Equal0~0_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|Equal0~2_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|Equal0~1_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|Equal0~3_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|next_state.DISP~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.DISP~q\ : std_logic;
SIGNAL \U_GCD|U_CTRL|Selector3~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.WAIT_0~q\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.START~feeder_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.START~q\ : std_logic;
SIGNAL \U_GCD|U_CTRL|Selector1~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.WAIT_1~q\ : std_logic;
SIGNAL \U_GCD|U_CTRL|next_state.INIT~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.INIT~q\ : std_logic;
SIGNAL \U_GCD|U_CTRL|WideOr1~combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.LOOP_COND~q\ : std_logic;
SIGNAL \U_GCD|U_CTRL|next_state.LOOP_BODY_A~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|state.LOOP_BODY_A~q\ : std_logic;
SIGNAL \U_GCD|U_CTRL|WideOr3~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|sub_sel~combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_SUB|output[1]~2_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_MUX_X|output[1]~1_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_OUT_REG|output[0]~feeder_combout\ : std_logic;
SIGNAL \U_LED4|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux0~0_combout\ : std_logic;
SIGNAL \U_GCD|U_DATAPATH|U_OUT_REG|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_GCD|U_DATAPATH|U_TMP_X_REG|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_LED5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U_GCD|U_CTRL|ALT_INV_state.WAIT_0~q\ : std_logic;
SIGNAL \U_LED4|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_switch <= switch;
ww_button <= button;
led0 <= ww_led0;
led0_dp <= ww_led0_dp;
led1 <= ww_led1;
led1_dp <= ww_led1_dp;
led2 <= ww_led2;
led2_dp <= ww_led2_dp;
led3 <= ww_led3;
led3_dp <= ww_led3_dp;
led4 <= ww_led4;
led4_dp <= ww_led4_dp;
led5 <= ww_led5;
led5_dp <= ww_led5_dp;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);
\U_LED5|ALT_INV_Mux0~0_combout\ <= NOT \U_LED5|Mux0~0_combout\;
\U_GCD|U_CTRL|ALT_INV_state.WAIT_0~q\ <= NOT \U_GCD|U_CTRL|state.WAIT_0~q\;
\U_LED4|ALT_INV_Mux0~0_combout\ <= NOT \U_LED4|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y43_N16
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

-- Location: IOOBUF_X58_Y54_N16
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\led0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\led0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\led0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\led0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\led0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\led0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\led0_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led0_dp~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\led1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\led1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\led1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\led1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\led1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\led1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\led1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\led1_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led1_dp~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\led2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\led2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\led2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\led2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\led2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\led2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\led2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\led2_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led2_dp~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\led3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\led3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\led3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\led3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\led3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\led3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \led3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\led3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\led3_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led3_dp~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\led4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\led4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\led4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\led4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\led4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\led4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\led4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\led4_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_GCD|U_CTRL|ALT_INV_state.WAIT_0~q\,
	devoe => ww_devoe,
	o => \led4_dp~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\led5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \led5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\led5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \led5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\led5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \led5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\led5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \led5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\led5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \led5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\led5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \led5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\led5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_LED5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \led5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\led5_dp~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \led5_dp~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk50MHz~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk50MHz,
	o => \clk50MHz~input_o\);

-- Location: CLKCTRL_G19
\clk50MHz~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk50MHz~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk50MHz~inputclkctrl_outclk\);

-- Location: IOIBUF_X49_Y54_N29
\button[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(1),
	o => \button[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\switch[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(1),
	o => \switch[1]~input_o\);

-- Location: LCCOMB_X51_Y51_N22
\U_GCD|U_DATAPATH|U_MUX_Y|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[1]~1_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & ((\U_GCD|U_DATAPATH|U_SUB|output[1]~2_combout\))) # (!\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & (\switch[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	datac => \switch[1]~input_o\,
	datad => \U_GCD|U_DATAPATH|U_SUB|output[1]~2_combout\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[1]~1_combout\);

-- Location: IOIBUF_X46_Y54_N29
\button[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_button(0),
	o => \button[0]~input_o\);

-- Location: LCCOMB_X52_Y51_N26
\U_GCD|U_CTRL|y_en~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|y_en~1_combout\ = (\U_GCD|U_CTRL|state.INIT~q\) # (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|U_CTRL|state.INIT~q\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	combout => \U_GCD|U_CTRL|y_en~1_combout\);

-- Location: FF_X51_Y51_N23
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[1]~1_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1));

-- Location: IOIBUF_X49_Y54_N1
\switch[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(5),
	o => \switch[5]~input_o\);

-- Location: IOIBUF_X51_Y54_N29
\switch[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(0),
	o => \switch[0]~input_o\);

-- Location: LCCOMB_X51_Y51_N8
\U_GCD|U_DATAPATH|U_MUX_Y|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[0]~0_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & (\U_GCD|U_DATAPATH|U_SUB|output[0]~0_combout\)) # (!\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & ((\switch[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	datab => \U_GCD|U_DATAPATH|U_SUB|output[0]~0_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[0]~0_combout\);

-- Location: FF_X51_Y51_N9
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[0]~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0));

-- Location: LCCOMB_X51_Y51_N4
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0),
	datac => \U_GCD|U_CTRL|sub_sel~combout\,
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0_combout\);

-- Location: LCCOMB_X51_Y51_N18
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0),
	datac => \U_GCD|U_CTRL|sub_sel~combout\,
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0_combout\);

-- Location: LCCOMB_X50_Y51_N14
\U_GCD|U_DATAPATH|U_SUB|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[0]~0_combout\ = (\U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0_combout\ & ((GND) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0_combout\))) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0_combout\ & 
-- (\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0_combout\ $ (GND)))
-- \U_GCD|U_DATAPATH|U_SUB|output[0]~1\ = CARRY((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0_combout\) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[0]~0_combout\,
	datab => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[0]~0_combout\,
	datad => VCC,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[0]~0_combout\,
	cout => \U_GCD|U_DATAPATH|U_SUB|output[0]~1\);

-- Location: LCCOMB_X52_Y51_N30
\U_GCD|U_DATAPATH|U_MUX_X|output[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[7]~7_combout\ = (\U_GCD|U_DATAPATH|U_SUB|output[7]~14_combout\ & \U_GCD|U_CTRL|state.LOOP_BODY_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|U_DATAPATH|U_SUB|output[7]~14_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[7]~7_combout\);

-- Location: LCCOMB_X52_Y51_N18
\U_GCD|U_CTRL|x_en~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|x_en~2_combout\ = (\U_GCD|U_CTRL|state.INIT~q\) # (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_CTRL|state.INIT~q\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_CTRL|x_en~2_combout\);

-- Location: FF_X52_Y51_N31
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[7]~7_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7));

-- Location: LCCOMB_X51_Y51_N2
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[7]~7_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[7]~7_combout\);

-- Location: LCCOMB_X51_Y51_N30
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[7]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[7]~7_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[7]~7_combout\);

-- Location: LCCOMB_X52_Y51_N4
\U_GCD|U_DATAPATH|U_MUX_X|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[6]~6_combout\ = (\U_GCD|U_DATAPATH|U_SUB|output[6]~12_combout\ & \U_GCD|U_CTRL|state.LOOP_BODY_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|U_DATAPATH|U_SUB|output[6]~12_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[6]~6_combout\);

-- Location: FF_X52_Y51_N5
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[6]~6_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6));

-- Location: LCCOMB_X51_Y51_N10
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6),
	datac => \U_GCD|U_CTRL|sub_sel~combout\,
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6_combout\);

-- Location: LCCOMB_X50_Y51_N0
\U_GCD|U_DATAPATH|U_MUX_Y|output[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[5]~4_combout\ = (\U_GCD|U_DATAPATH|U_SUB|output[5]~10_combout\ & \U_GCD|U_CTRL|state.LOOP_BODY_A~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_SUB|output[5]~10_combout\,
	datab => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[5]~4_combout\);

-- Location: FF_X50_Y51_N1
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[5]~4_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5));

-- Location: LCCOMB_X50_Y51_N8
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\);

-- Location: IOIBUF_X54_Y54_N22
\switch[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(4),
	o => \switch[4]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\switch[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(9),
	o => \switch[9]~input_o\);

-- Location: LCCOMB_X52_Y51_N28
\U_GCD|U_DATAPATH|U_MUX_X|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[4]~4_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & ((\U_GCD|U_DATAPATH|U_SUB|output[4]~8_combout\))) # (!\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & (\switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	datad => \U_GCD|U_DATAPATH|U_SUB|output[4]~8_combout\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[4]~4_combout\);

-- Location: FF_X52_Y51_N29
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[4]~4_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4));

-- Location: LCCOMB_X50_Y51_N2
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4_combout\);

-- Location: IOIBUF_X54_Y54_N29
\switch[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(3),
	o => \switch[3]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\switch[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(8),
	o => \switch[8]~input_o\);

-- Location: LCCOMB_X52_Y51_N10
\U_GCD|U_DATAPATH|U_MUX_X|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[3]~3_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & (\U_GCD|U_DATAPATH|U_SUB|output[3]~6_combout\)) # (!\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & ((\switch[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_SUB|output[3]~6_combout\,
	datac => \switch[8]~input_o\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[3]~3_combout\);

-- Location: FF_X52_Y51_N11
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[3]~3_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3));

-- Location: LCCOMB_X51_Y51_N24
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\);

-- Location: IOIBUF_X58_Y54_N29
\switch[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(7),
	o => \switch[7]~input_o\);

-- Location: LCCOMB_X52_Y51_N20
\U_GCD|U_DATAPATH|U_MUX_X|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[2]~2_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & (\U_GCD|U_DATAPATH|U_SUB|output[2]~4_combout\)) # (!\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & ((\switch[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_SUB|output[2]~4_combout\,
	datab => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	datad => \switch[7]~input_o\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[2]~2_combout\);

-- Location: FF_X52_Y51_N21
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[2]~2_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2));

-- Location: LCCOMB_X50_Y51_N30
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2),
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2_combout\);

-- Location: LCCOMB_X51_Y51_N6
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1),
	datab => \U_GCD|U_CTRL|sub_sel~combout\,
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\);

-- Location: LCCOMB_X50_Y51_N16
\U_GCD|U_DATAPATH|U_SUB|output[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[1]~2_combout\ = (\U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\ & ((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\ & (!\U_GCD|U_DATAPATH|U_SUB|output[0]~1\)) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\ & 
-- (\U_GCD|U_DATAPATH|U_SUB|output[0]~1\ & VCC)))) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\ & ((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\ & ((\U_GCD|U_DATAPATH|U_SUB|output[0]~1\) # (GND))) # 
-- (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\ & (!\U_GCD|U_DATAPATH|U_SUB|output[0]~1\))))
-- \U_GCD|U_DATAPATH|U_SUB|output[1]~3\ = CARRY((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\ & (\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\ & !\U_GCD|U_DATAPATH|U_SUB|output[0]~1\)) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\ & 
-- ((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\) # (!\U_GCD|U_DATAPATH|U_SUB|output[0]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\,
	datab => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[1]~1_combout\,
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_SUB|output[0]~1\,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[1]~2_combout\,
	cout => \U_GCD|U_DATAPATH|U_SUB|output[1]~3\);

-- Location: LCCOMB_X50_Y51_N18
\U_GCD|U_DATAPATH|U_SUB|output[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[2]~4_combout\ = ((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2_combout\ $ (\U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2_combout\ $ (\U_GCD|U_DATAPATH|U_SUB|output[1]~3\)))) # (GND)
-- \U_GCD|U_DATAPATH|U_SUB|output[2]~5\ = CARRY((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2_combout\ & (\U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2_combout\ & !\U_GCD|U_DATAPATH|U_SUB|output[1]~3\)) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2_combout\ & 
-- ((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2_combout\) # (!\U_GCD|U_DATAPATH|U_SUB|output[1]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2_combout\,
	datab => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[2]~2_combout\,
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_SUB|output[1]~3\,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[2]~4_combout\,
	cout => \U_GCD|U_DATAPATH|U_SUB|output[2]~5\);

-- Location: IOIBUF_X51_Y54_N1
\switch[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(2),
	o => \switch[2]~input_o\);

-- Location: LCCOMB_X49_Y51_N26
\U_GCD|U_DATAPATH|U_MUX_Y|output[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[2]~3_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & (\U_GCD|U_DATAPATH|U_SUB|output[2]~4_combout\)) # (!\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & ((\switch[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_SUB|output[2]~4_combout\,
	datac => \switch[2]~input_o\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[2]~3_combout\);

-- Location: FF_X49_Y51_N27
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[2]~3_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2));

-- Location: LCCOMB_X49_Y51_N2
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2),
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[2]~2_combout\);

-- Location: LCCOMB_X50_Y51_N20
\U_GCD|U_DATAPATH|U_SUB|output[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[3]~6_combout\ = (\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\ & ((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\ & (!\U_GCD|U_DATAPATH|U_SUB|output[2]~5\)) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\ & 
-- ((\U_GCD|U_DATAPATH|U_SUB|output[2]~5\) # (GND))))) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\ & ((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\ & (\U_GCD|U_DATAPATH|U_SUB|output[2]~5\ & VCC)) # 
-- (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\ & (!\U_GCD|U_DATAPATH|U_SUB|output[2]~5\))))
-- \U_GCD|U_DATAPATH|U_SUB|output[3]~7\ = CARRY((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\ & ((!\U_GCD|U_DATAPATH|U_SUB|output[2]~5\) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\))) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\ & 
-- (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\ & !\U_GCD|U_DATAPATH|U_SUB|output[2]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\,
	datab => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[3]~3_combout\,
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_SUB|output[2]~5\,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[3]~6_combout\,
	cout => \U_GCD|U_DATAPATH|U_SUB|output[3]~7\);

-- Location: LCCOMB_X49_Y51_N6
\U_GCD|U_DATAPATH|U_MUX_Y|output[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[3]~2_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & ((\U_GCD|U_DATAPATH|U_SUB|output[3]~6_combout\))) # (!\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & (\switch[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datac => \U_GCD|U_DATAPATH|U_SUB|output[3]~6_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[3]~2_combout\);

-- Location: FF_X49_Y51_N7
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[3]~2_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3));

-- Location: LCCOMB_X50_Y51_N4
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[3]~3_combout\);

-- Location: LCCOMB_X50_Y51_N22
\U_GCD|U_DATAPATH|U_SUB|output[4]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[4]~8_combout\ = ((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4_combout\ $ (\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4_combout\ $ (\U_GCD|U_DATAPATH|U_SUB|output[3]~7\)))) # (GND)
-- \U_GCD|U_DATAPATH|U_SUB|output[4]~9\ = CARRY((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4_combout\ & ((!\U_GCD|U_DATAPATH|U_SUB|output[3]~7\) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4_combout\))) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4_combout\ & 
-- (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4_combout\ & !\U_GCD|U_DATAPATH|U_SUB|output[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4_combout\,
	datab => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[4]~4_combout\,
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_SUB|output[3]~7\,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[4]~8_combout\,
	cout => \U_GCD|U_DATAPATH|U_SUB|output[4]~9\);

-- Location: LCCOMB_X49_Y51_N24
\U_GCD|U_DATAPATH|U_MUX_Y|output[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[4]~5_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & ((\U_GCD|U_DATAPATH|U_SUB|output[4]~8_combout\))) # (!\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & (\switch[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datac => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	datad => \U_GCD|U_DATAPATH|U_SUB|output[4]~8_combout\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[4]~5_combout\);

-- Location: FF_X49_Y51_N25
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[4]~5_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4));

-- Location: LCCOMB_X50_Y51_N12
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4),
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[4]~4_combout\);

-- Location: LCCOMB_X50_Y51_N24
\U_GCD|U_DATAPATH|U_SUB|output[5]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[5]~10_combout\ = (\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\ & ((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\ & (!\U_GCD|U_DATAPATH|U_SUB|output[4]~9\)) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\ & 
-- ((\U_GCD|U_DATAPATH|U_SUB|output[4]~9\) # (GND))))) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\ & ((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\ & (\U_GCD|U_DATAPATH|U_SUB|output[4]~9\ & VCC)) # 
-- (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\ & (!\U_GCD|U_DATAPATH|U_SUB|output[4]~9\))))
-- \U_GCD|U_DATAPATH|U_SUB|output[5]~11\ = CARRY((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\ & ((!\U_GCD|U_DATAPATH|U_SUB|output[4]~9\) # (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\))) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\ & 
-- (!\U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\ & !\U_GCD|U_DATAPATH|U_SUB|output[4]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\,
	datab => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[5]~5_combout\,
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_SUB|output[4]~9\,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[5]~10_combout\,
	cout => \U_GCD|U_DATAPATH|U_SUB|output[5]~11\);

-- Location: LCCOMB_X52_Y51_N14
\U_GCD|U_DATAPATH|U_MUX_X|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[5]~5_combout\ = (\U_GCD|U_DATAPATH|U_SUB|output[5]~10_combout\ & \U_GCD|U_CTRL|state.LOOP_BODY_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_SUB|output[5]~10_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[5]~5_combout\);

-- Location: FF_X52_Y51_N15
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[5]~5_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5));

-- Location: LCCOMB_X50_Y51_N10
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[5]~5_combout\);

-- Location: LCCOMB_X50_Y51_N26
\U_GCD|U_DATAPATH|U_SUB|output[6]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[6]~12_combout\ = ((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6_combout\ $ (\U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6_combout\ $ (\U_GCD|U_DATAPATH|U_SUB|output[5]~11\)))) # (GND)
-- \U_GCD|U_DATAPATH|U_SUB|output[6]~13\ = CARRY((\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6_combout\ & (\U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6_combout\ & !\U_GCD|U_DATAPATH|U_SUB|output[5]~11\)) # (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6_combout\ & 
-- ((\U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6_combout\) # (!\U_GCD|U_DATAPATH|U_SUB|output[5]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6_combout\,
	datab => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[6]~6_combout\,
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_SUB|output[5]~11\,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[6]~12_combout\,
	cout => \U_GCD|U_DATAPATH|U_SUB|output[6]~13\);

-- Location: LCCOMB_X51_Y51_N20
\U_GCD|U_DATAPATH|U_MUX_Y|output[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[6]~7_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & \U_GCD|U_DATAPATH|U_SUB|output[6]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	datac => \U_GCD|U_DATAPATH|U_SUB|output[6]~12_combout\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[6]~7_combout\);

-- Location: FF_X51_Y51_N21
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[6]~7_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6));

-- Location: LCCOMB_X51_Y51_N0
\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6)))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6),
	datac => \U_GCD|U_CTRL|sub_sel~combout\,
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6),
	combout => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[6]~6_combout\);

-- Location: LCCOMB_X50_Y51_N28
\U_GCD|U_DATAPATH|U_SUB|output[7]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_SUB|output[7]~14_combout\ = \U_GCD|U_DATAPATH|U_MUX_LEFT|output[7]~7_combout\ $ (\U_GCD|U_DATAPATH|U_SUB|output[6]~13\ $ (!\U_GCD|U_DATAPATH|U_MUX_RIGHT|output[7]~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[7]~7_combout\,
	datad => \U_GCD|U_DATAPATH|U_MUX_RIGHT|output[7]~7_combout\,
	cin => \U_GCD|U_DATAPATH|U_SUB|output[6]~13\,
	combout => \U_GCD|U_DATAPATH|U_SUB|output[7]~14_combout\);

-- Location: LCCOMB_X51_Y51_N16
\U_GCD|U_DATAPATH|U_MUX_Y|output[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_Y|output[7]~6_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\ & \U_GCD|U_DATAPATH|U_SUB|output[7]~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	datab => \U_GCD|U_DATAPATH|U_SUB|output[7]~14_combout\,
	combout => \U_GCD|U_DATAPATH|U_MUX_Y|output[7]~6_combout\);

-- Location: FF_X51_Y51_N17
\U_GCD|U_DATAPATH|U_TMP_Y_REG|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_Y|output[7]~6_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|y_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7));

-- Location: LCCOMB_X49_Y51_N8
\U_GCD|U_DATAPATH|U_COMP|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~1_cout\ = CARRY((!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0) & \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0),
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0),
	datad => VCC,
	cout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~1_cout\);

-- Location: LCCOMB_X49_Y51_N10
\U_GCD|U_DATAPATH|U_COMP|LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~3_cout\ = CARRY((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1) & ((!\U_GCD|U_DATAPATH|U_COMP|LessThan0~1_cout\) # (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1)))) # (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1) & 
-- (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1) & !\U_GCD|U_DATAPATH|U_COMP|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1),
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_COMP|LessThan0~1_cout\,
	cout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~3_cout\);

-- Location: LCCOMB_X49_Y51_N12
\U_GCD|U_DATAPATH|U_COMP|LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~5_cout\ = CARRY((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2) & ((!\U_GCD|U_DATAPATH|U_COMP|LessThan0~3_cout\) # (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2)))) # (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2) & 
-- (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2) & !\U_GCD|U_DATAPATH|U_COMP|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2),
	datab => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2),
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_COMP|LessThan0~3_cout\,
	cout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~5_cout\);

-- Location: LCCOMB_X49_Y51_N14
\U_GCD|U_DATAPATH|U_COMP|LessThan0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~7_cout\ = CARRY((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3) & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3) & !\U_GCD|U_DATAPATH|U_COMP|LessThan0~5_cout\)) # (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3) & 
-- ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3)) # (!\U_GCD|U_DATAPATH|U_COMP|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3),
	datab => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3),
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_COMP|LessThan0~5_cout\,
	cout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~7_cout\);

-- Location: LCCOMB_X49_Y51_N16
\U_GCD|U_DATAPATH|U_COMP|LessThan0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~9_cout\ = CARRY((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4) & !\U_GCD|U_DATAPATH|U_COMP|LessThan0~7_cout\)) # (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4) & 
-- ((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4)) # (!\U_GCD|U_DATAPATH|U_COMP|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4),
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_COMP|LessThan0~7_cout\,
	cout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~9_cout\);

-- Location: LCCOMB_X49_Y51_N18
\U_GCD|U_DATAPATH|U_COMP|LessThan0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~11_cout\ = CARRY((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5) & ((!\U_GCD|U_DATAPATH|U_COMP|LessThan0~9_cout\) # (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5)))) # (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5) & 
-- (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5) & !\U_GCD|U_DATAPATH|U_COMP|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5),
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5),
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_COMP|LessThan0~9_cout\,
	cout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~11_cout\);

-- Location: LCCOMB_X49_Y51_N20
\U_GCD|U_DATAPATH|U_COMP|LessThan0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~13_cout\ = CARRY((\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6) & ((!\U_GCD|U_DATAPATH|U_COMP|LessThan0~11_cout\) # (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6)))) # (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6) & 
-- (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6) & !\U_GCD|U_DATAPATH|U_COMP|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6),
	datab => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6),
	datad => VCC,
	cin => \U_GCD|U_DATAPATH|U_COMP|LessThan0~11_cout\,
	cout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~13_cout\);

-- Location: LCCOMB_X49_Y51_N22
\U_GCD|U_DATAPATH|U_COMP|LessThan0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|LessThan0~14_combout\ = (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7) & ((\U_GCD|U_DATAPATH|U_COMP|LessThan0~13_cout\) # (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7)))) # (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7) & 
-- (\U_GCD|U_DATAPATH|U_COMP|LessThan0~13_cout\ & !\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7),
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7),
	cin => \U_GCD|U_DATAPATH|U_COMP|LessThan0~13_cout\,
	combout => \U_GCD|U_DATAPATH|U_COMP|LessThan0~14_combout\);

-- Location: LCCOMB_X49_Y51_N28
\U_GCD|U_CTRL|next_state.LOOP_BODY_B~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|next_state.LOOP_BODY_B~0_combout\ = (!\U_GCD|U_DATAPATH|U_COMP|LessThan0~14_combout\ & (!\U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\ & \U_GCD|U_CTRL|state.LOOP_COND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_COMP|LessThan0~14_combout\,
	datac => \U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_COND~q\,
	combout => \U_GCD|U_CTRL|next_state.LOOP_BODY_B~0_combout\);

-- Location: FF_X49_Y51_N29
\U_GCD|U_CTRL|state.LOOP_BODY_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~input_o\,
	d => \U_GCD|U_CTRL|next_state.LOOP_BODY_B~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\);

-- Location: LCCOMB_X52_Y51_N22
\U_GCD|U_DATAPATH|U_MUX_X|output[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[0]~0_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & ((\U_GCD|U_DATAPATH|U_SUB|output[0]~0_combout\))) # (!\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & (\switch[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[5]~input_o\,
	datac => \U_GCD|U_DATAPATH|U_SUB|output[0]~0_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[0]~0_combout\);

-- Location: FF_X52_Y51_N23
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[0]~0_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0));

-- Location: LCCOMB_X52_Y51_N16
\U_GCD|U_DATAPATH|U_COMP|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|Equal0~0_combout\ = (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1) & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0) $ (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0))))) # 
-- (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1) & (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1) & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0) $ (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1),
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(0),
	combout => \U_GCD|U_DATAPATH|U_COMP|Equal0~0_combout\);

-- Location: LCCOMB_X49_Y51_N0
\U_GCD|U_DATAPATH|U_COMP|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|Equal0~2_combout\ = (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5) $ (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5))))) # 
-- (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4) & (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5) $ (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(4),
	datac => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(5),
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5),
	combout => \U_GCD|U_DATAPATH|U_COMP|Equal0~2_combout\);

-- Location: LCCOMB_X49_Y51_N4
\U_GCD|U_DATAPATH|U_COMP|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|Equal0~1_combout\ = (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2) & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2) & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3) $ (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3))))) # 
-- (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2) & (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2) & (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3) $ (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(2),
	datab => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2),
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(3),
	combout => \U_GCD|U_DATAPATH|U_COMP|Equal0~1_combout\);

-- Location: LCCOMB_X51_Y51_N26
\U_GCD|U_DATAPATH|U_COMP|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|Equal0~3_combout\ = (\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7) $ (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7))))) # 
-- (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6) & (!\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6) & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7) $ (!\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6),
	datab => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(7),
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7),
	datad => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(6),
	combout => \U_GCD|U_DATAPATH|U_COMP|Equal0~3_combout\);

-- Location: LCCOMB_X49_Y51_N30
\U_GCD|U_DATAPATH|U_COMP|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\ = (\U_GCD|U_DATAPATH|U_COMP|Equal0~0_combout\ & (\U_GCD|U_DATAPATH|U_COMP|Equal0~2_combout\ & (\U_GCD|U_DATAPATH|U_COMP|Equal0~1_combout\ & \U_GCD|U_DATAPATH|U_COMP|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_COMP|Equal0~0_combout\,
	datab => \U_GCD|U_DATAPATH|U_COMP|Equal0~2_combout\,
	datac => \U_GCD|U_DATAPATH|U_COMP|Equal0~1_combout\,
	datad => \U_GCD|U_DATAPATH|U_COMP|Equal0~3_combout\,
	combout => \U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\);

-- Location: LCCOMB_X52_Y51_N0
\U_GCD|U_CTRL|next_state.DISP~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|next_state.DISP~0_combout\ = (\U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\ & \U_GCD|U_CTRL|state.LOOP_COND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_COND~q\,
	combout => \U_GCD|U_CTRL|next_state.DISP~0_combout\);

-- Location: FF_X52_Y51_N1
\U_GCD|U_CTRL|state.DISP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_CTRL|next_state.DISP~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.DISP~q\);

-- Location: LCCOMB_X52_Y51_N12
\U_GCD|U_CTRL|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|Selector3~0_combout\ = (\U_GCD|U_CTRL|state.DISP~q\) # ((!\button[1]~input_o\ & \U_GCD|U_CTRL|state.WAIT_0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[1]~input_o\,
	datac => \U_GCD|U_CTRL|state.WAIT_0~q\,
	datad => \U_GCD|U_CTRL|state.DISP~q\,
	combout => \U_GCD|U_CTRL|Selector3~0_combout\);

-- Location: FF_X52_Y51_N13
\U_GCD|U_CTRL|state.WAIT_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_CTRL|Selector3~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.WAIT_0~q\);

-- Location: LCCOMB_X54_Y51_N10
\U_GCD|U_CTRL|state.START~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|state.START~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \U_GCD|U_CTRL|state.START~feeder_combout\);

-- Location: FF_X54_Y51_N11
\U_GCD|U_CTRL|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_CTRL|state.START~feeder_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.START~q\);

-- Location: LCCOMB_X52_Y51_N24
\U_GCD|U_CTRL|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|Selector1~0_combout\ = ((\button[1]~input_o\ & ((\U_GCD|U_CTRL|state.WAIT_0~q\) # (\U_GCD|U_CTRL|state.WAIT_1~q\)))) # (!\U_GCD|U_CTRL|state.START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|state.WAIT_0~q\,
	datab => \button[1]~input_o\,
	datac => \U_GCD|U_CTRL|state.WAIT_1~q\,
	datad => \U_GCD|U_CTRL|state.START~q\,
	combout => \U_GCD|U_CTRL|Selector1~0_combout\);

-- Location: FF_X52_Y51_N25
\U_GCD|U_CTRL|state.WAIT_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_CTRL|Selector1~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.WAIT_1~q\);

-- Location: LCCOMB_X52_Y51_N8
\U_GCD|U_CTRL|next_state.INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|next_state.INIT~0_combout\ = (!\button[1]~input_o\ & \U_GCD|U_CTRL|state.WAIT_1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \button[1]~input_o\,
	datad => \U_GCD|U_CTRL|state.WAIT_1~q\,
	combout => \U_GCD|U_CTRL|next_state.INIT~0_combout\);

-- Location: FF_X52_Y51_N9
\U_GCD|U_CTRL|state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_CTRL|next_state.INIT~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.INIT~q\);

-- Location: LCCOMB_X52_Y51_N2
\U_GCD|U_CTRL|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|WideOr1~combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\) # ((\U_GCD|U_CTRL|state.INIT~q\) # (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	datab => \U_GCD|U_CTRL|state.INIT~q\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_CTRL|WideOr1~combout\);

-- Location: FF_X51_Y51_N7
\U_GCD|U_CTRL|state.LOOP_COND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_CTRL|WideOr1~combout\,
	clrn => \button[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.LOOP_COND~q\);

-- Location: LCCOMB_X51_Y51_N14
\U_GCD|U_CTRL|next_state.LOOP_BODY_A~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|next_state.LOOP_BODY_A~0_combout\ = (\U_GCD|U_CTRL|state.LOOP_COND~q\ & (!\U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\ & \U_GCD|U_DATAPATH|U_COMP|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|state.LOOP_COND~q\,
	datac => \U_GCD|U_DATAPATH|U_COMP|Equal0~4_combout\,
	datad => \U_GCD|U_DATAPATH|U_COMP|LessThan0~14_combout\,
	combout => \U_GCD|U_CTRL|next_state.LOOP_BODY_A~0_combout\);

-- Location: FF_X51_Y51_N15
\U_GCD|U_CTRL|state.LOOP_BODY_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_CTRL|next_state.LOOP_BODY_A~0_combout\,
	clrn => \button[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\);

-- Location: LCCOMB_X51_Y51_N12
\U_GCD|U_CTRL|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|WideOr3~0_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_A~q\) # (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|U_CTRL|state.LOOP_BODY_A~q\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_CTRL|WideOr3~0_combout\);

-- Location: LCCOMB_X50_Y51_N6
\U_GCD|U_CTRL|sub_sel\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_CTRL|sub_sel~combout\ = (\U_GCD|U_CTRL|WideOr3~0_combout\ & ((!\U_GCD|U_CTRL|state.LOOP_BODY_B~q\))) # (!\U_GCD|U_CTRL|WideOr3~0_combout\ & (\U_GCD|U_CTRL|sub_sel~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_CTRL|WideOr3~0_combout\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_CTRL|sub_sel~combout\);

-- Location: LCCOMB_X51_Y51_N28
\U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\ = (\U_GCD|U_CTRL|sub_sel~combout\ & (\U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1))) # (!\U_GCD|U_CTRL|sub_sel~combout\ & ((\U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_CTRL|sub_sel~combout\,
	datac => \U_GCD|U_DATAPATH|U_TMP_Y_REG|output\(1),
	datad => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1),
	combout => \U_GCD|U_DATAPATH|U_MUX_LEFT|output[1]~1_combout\);

-- Location: IOIBUF_X54_Y54_N15
\switch[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_switch(6),
	o => \switch[6]~input_o\);

-- Location: LCCOMB_X52_Y51_N6
\U_GCD|U_DATAPATH|U_MUX_X|output[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_MUX_X|output[1]~1_combout\ = (\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & (\U_GCD|U_DATAPATH|U_SUB|output[1]~2_combout\)) # (!\U_GCD|U_CTRL|state.LOOP_BODY_B~q\ & ((\switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GCD|U_DATAPATH|U_SUB|output[1]~2_combout\,
	datac => \switch[6]~input_o\,
	datad => \U_GCD|U_CTRL|state.LOOP_BODY_B~q\,
	combout => \U_GCD|U_DATAPATH|U_MUX_X|output[1]~1_combout\);

-- Location: FF_X52_Y51_N7
\U_GCD|U_DATAPATH|U_TMP_X_REG|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_MUX_X|output[1]~1_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|x_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1));

-- Location: FF_X54_Y51_N23
\U_GCD|U_DATAPATH|U_OUT_REG|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(1),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1));

-- Location: LCCOMB_X54_Y51_N24
\U_GCD|U_DATAPATH|U_OUT_REG|output[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GCD|U_DATAPATH|U_OUT_REG|output[0]~feeder_combout\ = \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(0),
	combout => \U_GCD|U_DATAPATH|U_OUT_REG|output[0]~feeder_combout\);

-- Location: FF_X54_Y51_N25
\U_GCD|U_DATAPATH|U_OUT_REG|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_GCD|U_DATAPATH|U_OUT_REG|output[0]~feeder_combout\,
	clrn => \button[0]~input_o\,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0));

-- Location: FF_X54_Y51_N15
\U_GCD|U_DATAPATH|U_OUT_REG|output[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(3),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3));

-- Location: FF_X54_Y51_N1
\U_GCD|U_DATAPATH|U_OUT_REG|output[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(2),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2));

-- Location: LCCOMB_X54_Y51_N20
\U_LED4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux6~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(2))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2),
	combout => \U_LED4|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y51_N30
\U_LED4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux5~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(3))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(2)))))) # 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(2) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2),
	combout => \U_LED4|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y51_N16
\U_LED4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux4~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(2) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(1)) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(0))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & 
-- (\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & !\U_GCD|U_DATAPATH|U_OUT_REG|output\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2),
	combout => \U_LED4|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y51_N6
\U_LED4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux3~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) $ (((!\U_GCD|U_DATAPATH|U_OUT_REG|output\(2)))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & 
-- (\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & !\U_GCD|U_DATAPATH|U_OUT_REG|output\(2))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & \U_GCD|U_DATAPATH|U_OUT_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2),
	combout => \U_LED4|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y51_N22
\U_LED4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux2~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & (((!\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & \U_GCD|U_DATAPATH|U_OUT_REG|output\(0))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(2) & 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(3))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(2) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0),
	combout => \U_LED4|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y51_N0
\U_LED4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux1~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(0)) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(2))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) & 
-- (\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) $ (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0),
	combout => \U_LED4|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y51_N14
\U_LED4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux0~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(3)) # (\U_GCD|U_DATAPATH|U_OUT_REG|output\(1) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(2))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(0) & 
-- ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(1)) # (\U_GCD|U_DATAPATH|U_OUT_REG|output\(3) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(1),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(0),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(3),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(2),
	combout => \U_LED4|Mux0~0_combout\);

-- Location: FF_X54_Y51_N13
\U_GCD|U_DATAPATH|U_OUT_REG|output[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(4),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4));

-- Location: FF_X54_Y51_N3
\U_GCD|U_DATAPATH|U_OUT_REG|output[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(7),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7));

-- Location: FF_X54_Y51_N9
\U_GCD|U_DATAPATH|U_OUT_REG|output[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(6),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6));

-- Location: FF_X54_Y51_N19
\U_GCD|U_DATAPATH|U_OUT_REG|output[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	asdata => \U_GCD|U_DATAPATH|U_TMP_X_REG|output\(5),
	clrn => \button[0]~input_o\,
	sload => VCC,
	ena => \U_GCD|U_CTRL|state.DISP~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5));

-- Location: LCCOMB_X54_Y51_N28
\U_LED5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux6~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(5))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(5) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5),
	combout => \U_LED5|Mux6~0_combout\);

-- Location: LCCOMB_X54_Y51_N26
\U_LED5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux5~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(5)))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6))))) # 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5),
	combout => \U_LED5|Mux5~0_combout\);

-- Location: LCCOMB_X54_Y51_N4
\U_LED5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux4~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(5)) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(4))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & \U_GCD|U_DATAPATH|U_OUT_REG|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5),
	combout => \U_LED5|Mux4~0_combout\);

-- Location: LCCOMB_X54_Y51_N12
\U_LED5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux3~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) $ (((!\U_GCD|U_DATAPATH|U_OUT_REG|output\(5)))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & !\U_GCD|U_DATAPATH|U_OUT_REG|output\(5))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & \U_GCD|U_DATAPATH|U_OUT_REG|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5),
	combout => \U_LED5|Mux3~0_combout\);

-- Location: LCCOMB_X54_Y51_N18
\U_LED5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux2~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(5) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & ((!\U_GCD|U_DATAPATH|U_OUT_REG|output\(7))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(5) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & 
-- ((!\U_GCD|U_DATAPATH|U_OUT_REG|output\(7)))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7),
	combout => \U_LED5|Mux2~0_combout\);

-- Location: LCCOMB_X54_Y51_N8
\U_LED5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux1~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & (\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) $ (((\U_GCD|U_DATAPATH|U_OUT_REG|output\(5)) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(6)))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & 
-- (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(7) & (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) & \U_GCD|U_DATAPATH|U_OUT_REG|output\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5),
	combout => \U_LED5|Mux1~0_combout\);

-- Location: LCCOMB_X54_Y51_N2
\U_LED5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux0~0_combout\ = (\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(7)) # (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(5))))) # (!\U_GCD|U_DATAPATH|U_OUT_REG|output\(4) & 
-- ((\U_GCD|U_DATAPATH|U_OUT_REG|output\(5)) # (\U_GCD|U_DATAPATH|U_OUT_REG|output\(6) $ (\U_GCD|U_DATAPATH|U_OUT_REG|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GCD|U_DATAPATH|U_OUT_REG|output\(4),
	datab => \U_GCD|U_DATAPATH|U_OUT_REG|output\(6),
	datac => \U_GCD|U_DATAPATH|U_OUT_REG|output\(7),
	datad => \U_GCD|U_DATAPATH|U_OUT_REG|output\(5),
	combout => \U_LED5|Mux0~0_combout\);

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

ww_led0(0) <= \led0[0]~output_o\;

ww_led0(1) <= \led0[1]~output_o\;

ww_led0(2) <= \led0[2]~output_o\;

ww_led0(3) <= \led0[3]~output_o\;

ww_led0(4) <= \led0[4]~output_o\;

ww_led0(5) <= \led0[5]~output_o\;

ww_led0(6) <= \led0[6]~output_o\;

ww_led0_dp <= \led0_dp~output_o\;

ww_led1(0) <= \led1[0]~output_o\;

ww_led1(1) <= \led1[1]~output_o\;

ww_led1(2) <= \led1[2]~output_o\;

ww_led1(3) <= \led1[3]~output_o\;

ww_led1(4) <= \led1[4]~output_o\;

ww_led1(5) <= \led1[5]~output_o\;

ww_led1(6) <= \led1[6]~output_o\;

ww_led1_dp <= \led1_dp~output_o\;

ww_led2(0) <= \led2[0]~output_o\;

ww_led2(1) <= \led2[1]~output_o\;

ww_led2(2) <= \led2[2]~output_o\;

ww_led2(3) <= \led2[3]~output_o\;

ww_led2(4) <= \led2[4]~output_o\;

ww_led2(5) <= \led2[5]~output_o\;

ww_led2(6) <= \led2[6]~output_o\;

ww_led2_dp <= \led2_dp~output_o\;

ww_led3(0) <= \led3[0]~output_o\;

ww_led3(1) <= \led3[1]~output_o\;

ww_led3(2) <= \led3[2]~output_o\;

ww_led3(3) <= \led3[3]~output_o\;

ww_led3(4) <= \led3[4]~output_o\;

ww_led3(5) <= \led3[5]~output_o\;

ww_led3(6) <= \led3[6]~output_o\;

ww_led3_dp <= \led3_dp~output_o\;

ww_led4(0) <= \led4[0]~output_o\;

ww_led4(1) <= \led4[1]~output_o\;

ww_led4(2) <= \led4[2]~output_o\;

ww_led4(3) <= \led4[3]~output_o\;

ww_led4(4) <= \led4[4]~output_o\;

ww_led4(5) <= \led4[5]~output_o\;

ww_led4(6) <= \led4[6]~output_o\;

ww_led4_dp <= \led4_dp~output_o\;

ww_led5(0) <= \led5[0]~output_o\;

ww_led5(1) <= \led5[1]~output_o\;

ww_led5(2) <= \led5[2]~output_o\;

ww_led5(3) <= \led5[3]~output_o\;

ww_led5(4) <= \led5[4]~output_o\;

ww_led5(5) <= \led5[5]~output_o\;

ww_led5(6) <= \led5[6]~output_o\;

ww_led5_dp <= \led5_dp~output_o\;
END structure;


