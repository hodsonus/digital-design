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

-- DATE "02/19/2019 13:28:01"

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
	rst : IN std_logic;
	switch : IN std_logic_vector(9 DOWNTO 0);
	button : IN std_logic_vector(1 DOWNTO 0);
	led0 : BUFFER std_logic_vector(6 DOWNTO 0);
	led0_dp : BUFFER std_logic;
	led1 : BUFFER std_logic_vector(6 DOWNTO 0);
	led1_dp : BUFFER std_logic;
	led2 : BUFFER std_logic_vector(6 DOWNTO 0);
	led2_dp : BUFFER std_logic;
	led3 : BUFFER std_logic_vector(6 DOWNTO 0);
	led3_dp : BUFFER std_logic;
	led4 : BUFFER std_logic_vector(6 DOWNTO 0);
	led4_dp : BUFFER std_logic;
	led5 : BUFFER std_logic_vector(6 DOWNTO 0);
	led5_dp : BUFFER std_logic;
	clk_gen_out : BUFFER std_logic
	);
END top_level;

-- Design Ports Information
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- clk_gen_out	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk50MHz	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_rst : std_logic;
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
SIGNAL ww_clk_gen_out : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_CLK_GEN|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk50MHz~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \clk_gen_out~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \clk_gen_out~output_o\ : std_logic;
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
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~1\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~3\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~5\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~6_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~7\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~8_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|count~5_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~9\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~10_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~11\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~12_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|count~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~13\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~14_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~15\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~16_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|count~3_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~17\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~18_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|count~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~19\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~20_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~21\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~22_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~23\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~24_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~25\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~26_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~27\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~28_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|count~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~29\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~30_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|count~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~5_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~6_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~8_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~7_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~9_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~31\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~32_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~33\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~34_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~35\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~36_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~37\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~38_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~39\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~40_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~41\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~42_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~43\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~44_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~45\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~46_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~3_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~47\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~48_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~49\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~50_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~51\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~52_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~53\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~54_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~55\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~56_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~57\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~58_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~59\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~60_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~61\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Add0~62_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|clk_out~feeder_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|clk_out~q\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~24_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~106_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~25\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~26_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~105_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~27\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~28_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~104_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~29\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~30_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~107_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~31\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~32_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~100_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~33\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~34_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~103_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~35\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~36_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~102_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~37\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~38_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~101_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~7_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~39\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~40_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~99_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~41\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~42_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~98_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~43\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~44_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~97_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~45\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~46_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~96_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~6_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~47\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~48_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~95_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~49\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~50_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~94_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~51\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~52_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~93_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~53\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~54_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~92_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~5_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~8_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~9_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~55\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~56_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~91_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~57\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~58_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~90_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~59\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~60_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~89_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~61\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~62_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~88_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~63\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~64_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~119_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~65\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~66_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~118_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~67\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~68_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~117_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~69\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~70_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~116_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~71\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~72_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~115_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~73\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~74_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~114_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~75\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~76_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~113_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~77\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~78_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~112_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~79\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~80_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~111_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~81\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~82_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~110_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~83\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~84_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~109_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~85\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~86_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Add0~108_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~1_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~2_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~3_combout\ : std_logic;
SIGNAL \U_CLK_GEN|Equal0~4_combout\ : std_logic;
SIGNAL \U_CLK_GEN|clk_out~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|clk_out~feeder_combout\ : std_logic;
SIGNAL \U_CLK_GEN|clk_out~q\ : std_logic;
SIGNAL \U_CLK_GEN|clk_out~clkctrl_outclk\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \U_COUNTER|state~1_combout\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_COUNTER|state~0_combout\ : std_logic;
SIGNAL \U_COUNTER|state~2_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \U_COUNTER|Mux1~0_combout\ : std_logic;
SIGNAL \U_COUNTER|state~3_combout\ : std_logic;
SIGNAL \U_COUNTER|Mux0~0_combout\ : std_logic;
SIGNAL \U_COUNTER|state~4_combout\ : std_logic;
SIGNAL \U_LED4|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED4|Mux0~0_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE_3~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_2~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE_2~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_6~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE_6~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_7~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_5~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_4~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_C~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_D~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE_D~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_F~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_E~feeder_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE_E~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_A~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_B~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_9~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_8~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_0~0_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE_0~q\ : std_logic;
SIGNAL \U_GRAY|state.STATE_1~0_combout\ : std_logic;
SIGNAL \U_GRAY|state.STATE_1~q\ : std_logic;
SIGNAL \U_GRAY|WideOr0~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr1~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr1~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr0~1_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr0~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr3~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~0_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr3~combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~1_combout\ : std_logic;
SIGNAL \U_GRAY|WideOr2~combout\ : std_logic;
SIGNAL \U_LED5|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED5|Mux0~0_combout\ : std_logic;
SIGNAL \U_CLK_GEN|U_CLK_DIV|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_COUNTER|state\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_CLK_GEN|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \U_LED5|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \U_LED5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \U_LED5|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \U_LED4|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk50MHz <= clk50MHz;
ww_rst <= rst;
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
clk_gen_out <= ww_clk_gen_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\U_CLK_GEN|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_GEN|clk_out~q\);

\U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_CLK_GEN|U_CLK_DIV|clk_out~q\);

\clk50MHz~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk50MHz~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\U_LED5|ALT_INV_Mux1~0_combout\ <= NOT \U_LED5|Mux1~0_combout\;
\U_LED5|ALT_INV_Mux2~0_combout\ <= NOT \U_LED5|Mux2~0_combout\;
\U_LED5|ALT_INV_Mux3~0_combout\ <= NOT \U_LED5|Mux3~0_combout\;
\U_LED4|ALT_INV_Mux6~0_combout\ <= NOT \U_LED4|Mux6~0_combout\;
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X24_Y0_N30
\clk_gen_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_CLK_GEN|clk_out~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \clk_gen_out~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\led0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => \U_LED4|ALT_INV_Mux6~0_combout\,
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
	i => \U_LED4|Mux0~0_combout\,
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
	i => VCC,
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
	i => \U_LED5|ALT_INV_Mux3~0_combout\,
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
	i => \U_LED5|ALT_INV_Mux2~0_combout\,
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
	i => \U_LED5|ALT_INV_Mux1~0_combout\,
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
	i => \U_LED5|Mux0~0_combout\,
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

-- Location: LCCOMB_X2_Y38_N0
\U_CLK_GEN|U_CLK_DIV|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~0_combout\ = \U_CLK_GEN|U_CLK_DIV|count\(0) $ (VCC)
-- \U_CLK_GEN|U_CLK_DIV|Add0~1\ = CARRY(\U_CLK_GEN|U_CLK_DIV|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(0),
	datad => VCC,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~0_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~1\);

-- Location: IOIBUF_X31_Y0_N22
\rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G17
\rst~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X2_Y38_N1
\U_CLK_GEN|U_CLK_DIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(0));

-- Location: LCCOMB_X2_Y38_N2
\U_CLK_GEN|U_CLK_DIV|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~2_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(1) & (!\U_CLK_GEN|U_CLK_DIV|Add0~1\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(1) & ((\U_CLK_GEN|U_CLK_DIV|Add0~1\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~3\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~1\) # (!\U_CLK_GEN|U_CLK_DIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(1),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~1\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~2_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~3\);

-- Location: FF_X2_Y38_N3
\U_CLK_GEN|U_CLK_DIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(1));

-- Location: LCCOMB_X2_Y38_N4
\U_CLK_GEN|U_CLK_DIV|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~4_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(2) & (\U_CLK_GEN|U_CLK_DIV|Add0~3\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(2) & (!\U_CLK_GEN|U_CLK_DIV|Add0~3\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~5\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(2) & !\U_CLK_GEN|U_CLK_DIV|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(2),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~3\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~4_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~5\);

-- Location: FF_X2_Y38_N5
\U_CLK_GEN|U_CLK_DIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(2));

-- Location: LCCOMB_X2_Y38_N6
\U_CLK_GEN|U_CLK_DIV|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~6_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(3) & (!\U_CLK_GEN|U_CLK_DIV|Add0~5\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(3) & ((\U_CLK_GEN|U_CLK_DIV|Add0~5\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~7\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~5\) # (!\U_CLK_GEN|U_CLK_DIV|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(3),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~5\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~6_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~7\);

-- Location: FF_X2_Y38_N7
\U_CLK_GEN|U_CLK_DIV|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~6_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(3));

-- Location: LCCOMB_X2_Y38_N8
\U_CLK_GEN|U_CLK_DIV|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~8_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(4) & (\U_CLK_GEN|U_CLK_DIV|Add0~7\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(4) & (!\U_CLK_GEN|U_CLK_DIV|Add0~7\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~9\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(4) & !\U_CLK_GEN|U_CLK_DIV|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(4),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~7\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~8_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~9\);

-- Location: LCCOMB_X1_Y38_N14
\U_CLK_GEN|U_CLK_DIV|count~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|count~5_combout\ = (\U_CLK_GEN|U_CLK_DIV|Add0~8_combout\ & !\U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|Add0~8_combout\,
	datac => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|count~5_combout\);

-- Location: FF_X1_Y38_N15
\U_CLK_GEN|U_CLK_DIV|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|count~5_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(4));

-- Location: LCCOMB_X2_Y38_N10
\U_CLK_GEN|U_CLK_DIV|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~10_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(5) & (!\U_CLK_GEN|U_CLK_DIV|Add0~9\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(5) & ((\U_CLK_GEN|U_CLK_DIV|Add0~9\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~11\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~9\) # (!\U_CLK_GEN|U_CLK_DIV|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(5),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~9\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~10_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~11\);

-- Location: FF_X2_Y38_N11
\U_CLK_GEN|U_CLK_DIV|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(5));

-- Location: LCCOMB_X2_Y38_N12
\U_CLK_GEN|U_CLK_DIV|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~12_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(6) & (\U_CLK_GEN|U_CLK_DIV|Add0~11\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(6) & (!\U_CLK_GEN|U_CLK_DIV|Add0~11\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~13\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(6) & !\U_CLK_GEN|U_CLK_DIV|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(6),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~11\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~12_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~13\);

-- Location: LCCOMB_X1_Y38_N6
\U_CLK_GEN|U_CLK_DIV|count~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|count~4_combout\ = (\U_CLK_GEN|U_CLK_DIV|Add0~12_combout\ & !\U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|U_CLK_DIV|Add0~12_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|count~4_combout\);

-- Location: FF_X1_Y38_N7
\U_CLK_GEN|U_CLK_DIV|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|count~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(6));

-- Location: LCCOMB_X2_Y38_N14
\U_CLK_GEN|U_CLK_DIV|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~14_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(7) & (!\U_CLK_GEN|U_CLK_DIV|Add0~13\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(7) & ((\U_CLK_GEN|U_CLK_DIV|Add0~13\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~15\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~13\) # (!\U_CLK_GEN|U_CLK_DIV|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(7),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~13\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~14_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~15\);

-- Location: FF_X2_Y38_N15
\U_CLK_GEN|U_CLK_DIV|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~14_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(7));

-- Location: LCCOMB_X2_Y38_N16
\U_CLK_GEN|U_CLK_DIV|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~16_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(8) & (\U_CLK_GEN|U_CLK_DIV|Add0~15\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(8) & (!\U_CLK_GEN|U_CLK_DIV|Add0~15\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~17\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(8) & !\U_CLK_GEN|U_CLK_DIV|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(8),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~15\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~16_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~17\);

-- Location: LCCOMB_X1_Y38_N24
\U_CLK_GEN|U_CLK_DIV|count~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|count~3_combout\ = (!\U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\ & \U_CLK_GEN|U_CLK_DIV|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Add0~16_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|count~3_combout\);

-- Location: FF_X1_Y38_N25
\U_CLK_GEN|U_CLK_DIV|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|count~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(8));

-- Location: LCCOMB_X2_Y38_N18
\U_CLK_GEN|U_CLK_DIV|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~18_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(9) & (!\U_CLK_GEN|U_CLK_DIV|Add0~17\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(9) & ((\U_CLK_GEN|U_CLK_DIV|Add0~17\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~19\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~17\) # (!\U_CLK_GEN|U_CLK_DIV|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(9),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~17\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~18_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~19\);

-- Location: LCCOMB_X1_Y38_N18
\U_CLK_GEN|U_CLK_DIV|count~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|count~2_combout\ = (!\U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\ & \U_CLK_GEN|U_CLK_DIV|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Add0~18_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|count~2_combout\);

-- Location: FF_X1_Y38_N19
\U_CLK_GEN|U_CLK_DIV|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|count~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(9));

-- Location: LCCOMB_X2_Y38_N20
\U_CLK_GEN|U_CLK_DIV|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~20_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(10) & (\U_CLK_GEN|U_CLK_DIV|Add0~19\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(10) & (!\U_CLK_GEN|U_CLK_DIV|Add0~19\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~21\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(10) & !\U_CLK_GEN|U_CLK_DIV|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(10),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~19\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~20_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~21\);

-- Location: FF_X2_Y38_N21
\U_CLK_GEN|U_CLK_DIV|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~20_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(10));

-- Location: LCCOMB_X2_Y38_N22
\U_CLK_GEN|U_CLK_DIV|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~22_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(11) & (!\U_CLK_GEN|U_CLK_DIV|Add0~21\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(11) & ((\U_CLK_GEN|U_CLK_DIV|Add0~21\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~23\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~21\) # (!\U_CLK_GEN|U_CLK_DIV|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(11),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~21\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~22_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~23\);

-- Location: FF_X2_Y38_N23
\U_CLK_GEN|U_CLK_DIV|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~22_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(11));

-- Location: LCCOMB_X2_Y38_N24
\U_CLK_GEN|U_CLK_DIV|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~24_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(12) & (\U_CLK_GEN|U_CLK_DIV|Add0~23\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(12) & (!\U_CLK_GEN|U_CLK_DIV|Add0~23\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~25\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(12) & !\U_CLK_GEN|U_CLK_DIV|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(12),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~23\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~24_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~25\);

-- Location: FF_X2_Y38_N25
\U_CLK_GEN|U_CLK_DIV|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~24_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(12));

-- Location: LCCOMB_X2_Y38_N26
\U_CLK_GEN|U_CLK_DIV|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~26_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(13) & (!\U_CLK_GEN|U_CLK_DIV|Add0~25\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(13) & ((\U_CLK_GEN|U_CLK_DIV|Add0~25\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~27\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~25\) # (!\U_CLK_GEN|U_CLK_DIV|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(13),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~25\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~26_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~27\);

-- Location: FF_X2_Y38_N27
\U_CLK_GEN|U_CLK_DIV|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~26_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(13));

-- Location: LCCOMB_X2_Y38_N28
\U_CLK_GEN|U_CLK_DIV|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~28_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(14) & (\U_CLK_GEN|U_CLK_DIV|Add0~27\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(14) & (!\U_CLK_GEN|U_CLK_DIV|Add0~27\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~29\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(14) & !\U_CLK_GEN|U_CLK_DIV|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(14),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~27\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~28_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~29\);

-- Location: LCCOMB_X1_Y38_N26
\U_CLK_GEN|U_CLK_DIV|count~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|count~1_combout\ = (!\U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\ & \U_CLK_GEN|U_CLK_DIV|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Add0~28_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|count~1_combout\);

-- Location: FF_X1_Y38_N27
\U_CLK_GEN|U_CLK_DIV|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|count~1_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(14));

-- Location: LCCOMB_X2_Y38_N30
\U_CLK_GEN|U_CLK_DIV|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~30_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(15) & (!\U_CLK_GEN|U_CLK_DIV|Add0~29\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(15) & ((\U_CLK_GEN|U_CLK_DIV|Add0~29\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~31\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~29\) # (!\U_CLK_GEN|U_CLK_DIV|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(15),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~29\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~30_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~31\);

-- Location: LCCOMB_X1_Y38_N10
\U_CLK_GEN|U_CLK_DIV|count~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|count~0_combout\ = (\U_CLK_GEN|U_CLK_DIV|Add0~30_combout\ & !\U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|U_CLK_DIV|Add0~30_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|count~0_combout\);

-- Location: FF_X1_Y38_N11
\U_CLK_GEN|U_CLK_DIV|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|count~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(15));

-- Location: LCCOMB_X1_Y38_N30
\U_CLK_GEN|U_CLK_DIV|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~5_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(14) & (!\U_CLK_GEN|U_CLK_DIV|count\(12) & (!\U_CLK_GEN|U_CLK_DIV|count\(13) & \U_CLK_GEN|U_CLK_DIV|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(14),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(12),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(13),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(15),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~5_combout\);

-- Location: LCCOMB_X1_Y38_N16
\U_CLK_GEN|U_CLK_DIV|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~6_combout\ = (!\U_CLK_GEN|U_CLK_DIV|count\(10) & (!\U_CLK_GEN|U_CLK_DIV|count\(11) & (\U_CLK_GEN|U_CLK_DIV|count\(8) & \U_CLK_GEN|U_CLK_DIV|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(10),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(11),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(8),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(9),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~6_combout\);

-- Location: LCCOMB_X1_Y38_N4
\U_CLK_GEN|U_CLK_DIV|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~8_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(2) & (\U_CLK_GEN|U_CLK_DIV|count\(0) & (\U_CLK_GEN|U_CLK_DIV|count\(3) & \U_CLK_GEN|U_CLK_DIV|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(2),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(0),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(3),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(1),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~8_combout\);

-- Location: LCCOMB_X1_Y38_N20
\U_CLK_GEN|U_CLK_DIV|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~7_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(6) & (!\U_CLK_GEN|U_CLK_DIV|count\(7) & (!\U_CLK_GEN|U_CLK_DIV|count\(5) & !\U_CLK_GEN|U_CLK_DIV|count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(6),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(7),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(5),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(4),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~7_combout\);

-- Location: LCCOMB_X1_Y38_N12
\U_CLK_GEN|U_CLK_DIV|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~9_combout\ = (\U_CLK_GEN|U_CLK_DIV|Equal0~5_combout\ & (\U_CLK_GEN|U_CLK_DIV|Equal0~6_combout\ & (\U_CLK_GEN|U_CLK_DIV|Equal0~8_combout\ & \U_CLK_GEN|U_CLK_DIV|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|Equal0~5_combout\,
	datab => \U_CLK_GEN|U_CLK_DIV|Equal0~6_combout\,
	datac => \U_CLK_GEN|U_CLK_DIV|Equal0~8_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Equal0~7_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~9_combout\);

-- Location: LCCOMB_X2_Y37_N0
\U_CLK_GEN|U_CLK_DIV|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~32_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(16) & (\U_CLK_GEN|U_CLK_DIV|Add0~31\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(16) & (!\U_CLK_GEN|U_CLK_DIV|Add0~31\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~33\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(16) & !\U_CLK_GEN|U_CLK_DIV|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(16),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~31\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~32_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~33\);

-- Location: FF_X2_Y37_N1
\U_CLK_GEN|U_CLK_DIV|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~32_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(16));

-- Location: LCCOMB_X2_Y37_N2
\U_CLK_GEN|U_CLK_DIV|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~34_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(17) & (!\U_CLK_GEN|U_CLK_DIV|Add0~33\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(17) & ((\U_CLK_GEN|U_CLK_DIV|Add0~33\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~35\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~33\) # (!\U_CLK_GEN|U_CLK_DIV|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(17),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~33\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~34_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~35\);

-- Location: FF_X2_Y37_N3
\U_CLK_GEN|U_CLK_DIV|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~34_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(17));

-- Location: LCCOMB_X2_Y37_N4
\U_CLK_GEN|U_CLK_DIV|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~36_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(18) & (\U_CLK_GEN|U_CLK_DIV|Add0~35\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(18) & (!\U_CLK_GEN|U_CLK_DIV|Add0~35\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~37\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(18) & !\U_CLK_GEN|U_CLK_DIV|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(18),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~35\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~36_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~37\);

-- Location: FF_X2_Y37_N5
\U_CLK_GEN|U_CLK_DIV|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~36_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(18));

-- Location: LCCOMB_X2_Y37_N6
\U_CLK_GEN|U_CLK_DIV|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~38_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(19) & (!\U_CLK_GEN|U_CLK_DIV|Add0~37\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(19) & ((\U_CLK_GEN|U_CLK_DIV|Add0~37\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~39\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~37\) # (!\U_CLK_GEN|U_CLK_DIV|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(19),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~37\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~38_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~39\);

-- Location: FF_X2_Y37_N7
\U_CLK_GEN|U_CLK_DIV|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~38_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(19));

-- Location: LCCOMB_X1_Y37_N22
\U_CLK_GEN|U_CLK_DIV|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~4_combout\ = (!\U_CLK_GEN|U_CLK_DIV|count\(18) & (!\U_CLK_GEN|U_CLK_DIV|count\(16) & (!\U_CLK_GEN|U_CLK_DIV|count\(19) & !\U_CLK_GEN|U_CLK_DIV|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(18),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(16),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(19),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(17),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y37_N8
\U_CLK_GEN|U_CLK_DIV|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~40_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(20) & (\U_CLK_GEN|U_CLK_DIV|Add0~39\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(20) & (!\U_CLK_GEN|U_CLK_DIV|Add0~39\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~41\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(20) & !\U_CLK_GEN|U_CLK_DIV|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(20),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~39\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~40_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~41\);

-- Location: FF_X2_Y37_N9
\U_CLK_GEN|U_CLK_DIV|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~40_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(20));

-- Location: LCCOMB_X2_Y37_N10
\U_CLK_GEN|U_CLK_DIV|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~42_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(21) & (!\U_CLK_GEN|U_CLK_DIV|Add0~41\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(21) & ((\U_CLK_GEN|U_CLK_DIV|Add0~41\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~43\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~41\) # (!\U_CLK_GEN|U_CLK_DIV|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(21),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~41\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~42_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~43\);

-- Location: FF_X2_Y37_N11
\U_CLK_GEN|U_CLK_DIV|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~42_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(21));

-- Location: LCCOMB_X2_Y37_N12
\U_CLK_GEN|U_CLK_DIV|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~44_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(22) & (\U_CLK_GEN|U_CLK_DIV|Add0~43\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(22) & (!\U_CLK_GEN|U_CLK_DIV|Add0~43\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~45\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(22) & !\U_CLK_GEN|U_CLK_DIV|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(22),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~43\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~44_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~45\);

-- Location: FF_X2_Y37_N13
\U_CLK_GEN|U_CLK_DIV|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~44_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(22));

-- Location: LCCOMB_X2_Y37_N14
\U_CLK_GEN|U_CLK_DIV|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~46_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(23) & (!\U_CLK_GEN|U_CLK_DIV|Add0~45\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(23) & ((\U_CLK_GEN|U_CLK_DIV|Add0~45\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~47\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~45\) # (!\U_CLK_GEN|U_CLK_DIV|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(23),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~45\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~46_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~47\);

-- Location: FF_X2_Y37_N15
\U_CLK_GEN|U_CLK_DIV|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~46_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(23));

-- Location: LCCOMB_X1_Y37_N28
\U_CLK_GEN|U_CLK_DIV|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~3_combout\ = (!\U_CLK_GEN|U_CLK_DIV|count\(20) & (!\U_CLK_GEN|U_CLK_DIV|count\(22) & (!\U_CLK_GEN|U_CLK_DIV|count\(23) & !\U_CLK_GEN|U_CLK_DIV|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(20),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(22),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(23),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(21),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y37_N16
\U_CLK_GEN|U_CLK_DIV|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~48_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(24) & (\U_CLK_GEN|U_CLK_DIV|Add0~47\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(24) & (!\U_CLK_GEN|U_CLK_DIV|Add0~47\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~49\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(24) & !\U_CLK_GEN|U_CLK_DIV|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(24),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~47\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~48_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~49\);

-- Location: FF_X2_Y37_N17
\U_CLK_GEN|U_CLK_DIV|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~48_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(24));

-- Location: LCCOMB_X2_Y37_N18
\U_CLK_GEN|U_CLK_DIV|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~50_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(25) & (!\U_CLK_GEN|U_CLK_DIV|Add0~49\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(25) & ((\U_CLK_GEN|U_CLK_DIV|Add0~49\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~51\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~49\) # (!\U_CLK_GEN|U_CLK_DIV|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(25),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~49\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~50_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~51\);

-- Location: FF_X2_Y37_N19
\U_CLK_GEN|U_CLK_DIV|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~50_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(25));

-- Location: LCCOMB_X2_Y37_N20
\U_CLK_GEN|U_CLK_DIV|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~52_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(26) & (\U_CLK_GEN|U_CLK_DIV|Add0~51\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(26) & (!\U_CLK_GEN|U_CLK_DIV|Add0~51\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~53\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(26) & !\U_CLK_GEN|U_CLK_DIV|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(26),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~51\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~52_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~53\);

-- Location: FF_X2_Y37_N21
\U_CLK_GEN|U_CLK_DIV|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~52_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(26));

-- Location: LCCOMB_X2_Y37_N22
\U_CLK_GEN|U_CLK_DIV|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~54_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(27) & (!\U_CLK_GEN|U_CLK_DIV|Add0~53\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(27) & ((\U_CLK_GEN|U_CLK_DIV|Add0~53\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~55\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~53\) # (!\U_CLK_GEN|U_CLK_DIV|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(27),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~53\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~54_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~55\);

-- Location: FF_X2_Y37_N23
\U_CLK_GEN|U_CLK_DIV|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~54_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(27));

-- Location: LCCOMB_X2_Y37_N24
\U_CLK_GEN|U_CLK_DIV|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~56_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(28) & (\U_CLK_GEN|U_CLK_DIV|Add0~55\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(28) & (!\U_CLK_GEN|U_CLK_DIV|Add0~55\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~57\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(28) & !\U_CLK_GEN|U_CLK_DIV|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(28),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~55\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~56_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~57\);

-- Location: FF_X2_Y37_N25
\U_CLK_GEN|U_CLK_DIV|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~56_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(28));

-- Location: LCCOMB_X2_Y37_N26
\U_CLK_GEN|U_CLK_DIV|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~58_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(29) & (!\U_CLK_GEN|U_CLK_DIV|Add0~57\)) # (!\U_CLK_GEN|U_CLK_DIV|count\(29) & ((\U_CLK_GEN|U_CLK_DIV|Add0~57\) # (GND)))
-- \U_CLK_GEN|U_CLK_DIV|Add0~59\ = CARRY((!\U_CLK_GEN|U_CLK_DIV|Add0~57\) # (!\U_CLK_GEN|U_CLK_DIV|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(29),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~57\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~58_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~59\);

-- Location: FF_X2_Y37_N27
\U_CLK_GEN|U_CLK_DIV|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~58_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(29));

-- Location: LCCOMB_X2_Y37_N28
\U_CLK_GEN|U_CLK_DIV|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~60_combout\ = (\U_CLK_GEN|U_CLK_DIV|count\(30) & (\U_CLK_GEN|U_CLK_DIV|Add0~59\ $ (GND))) # (!\U_CLK_GEN|U_CLK_DIV|count\(30) & (!\U_CLK_GEN|U_CLK_DIV|Add0~59\ & VCC))
-- \U_CLK_GEN|U_CLK_DIV|Add0~61\ = CARRY((\U_CLK_GEN|U_CLK_DIV|count\(30) & !\U_CLK_GEN|U_CLK_DIV|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|count\(30),
	datad => VCC,
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~59\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~60_combout\,
	cout => \U_CLK_GEN|U_CLK_DIV|Add0~61\);

-- Location: FF_X2_Y37_N29
\U_CLK_GEN|U_CLK_DIV|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~60_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(30));

-- Location: LCCOMB_X2_Y37_N30
\U_CLK_GEN|U_CLK_DIV|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Add0~62_combout\ = \U_CLK_GEN|U_CLK_DIV|count\(31) $ (\U_CLK_GEN|U_CLK_DIV|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(31),
	cin => \U_CLK_GEN|U_CLK_DIV|Add0~61\,
	combout => \U_CLK_GEN|U_CLK_DIV|Add0~62_combout\);

-- Location: FF_X2_Y37_N31
\U_CLK_GEN|U_CLK_DIV|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|Add0~62_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|count\(31));

-- Location: LCCOMB_X1_Y37_N0
\U_CLK_GEN|U_CLK_DIV|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~0_combout\ = (!\U_CLK_GEN|U_CLK_DIV|count\(31) & (!\U_CLK_GEN|U_CLK_DIV|count\(28) & (!\U_CLK_GEN|U_CLK_DIV|count\(29) & !\U_CLK_GEN|U_CLK_DIV|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(31),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(28),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(29),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(30),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y37_N10
\U_CLK_GEN|U_CLK_DIV|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~1_combout\ = (!\U_CLK_GEN|U_CLK_DIV|count\(24) & (!\U_CLK_GEN|U_CLK_DIV|count\(27) & (!\U_CLK_GEN|U_CLK_DIV|count\(26) & !\U_CLK_GEN|U_CLK_DIV|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|count\(24),
	datab => \U_CLK_GEN|U_CLK_DIV|count\(27),
	datac => \U_CLK_GEN|U_CLK_DIV|count\(26),
	datad => \U_CLK_GEN|U_CLK_DIV|count\(25),
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y38_N28
\U_CLK_GEN|U_CLK_DIV|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~2_combout\ = (\U_CLK_GEN|U_CLK_DIV|Equal0~0_combout\ & \U_CLK_GEN|U_CLK_DIV|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|U_CLK_DIV|Equal0~0_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Equal0~1_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~2_combout\);

-- Location: LCCOMB_X1_Y38_N22
\U_CLK_GEN|U_CLK_DIV|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\ = (\U_CLK_GEN|U_CLK_DIV|Equal0~9_combout\ & (\U_CLK_GEN|U_CLK_DIV|Equal0~4_combout\ & (\U_CLK_GEN|U_CLK_DIV|Equal0~3_combout\ & \U_CLK_GEN|U_CLK_DIV|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|U_CLK_DIV|Equal0~9_combout\,
	datab => \U_CLK_GEN|U_CLK_DIV|Equal0~4_combout\,
	datac => \U_CLK_GEN|U_CLK_DIV|Equal0~3_combout\,
	datad => \U_CLK_GEN|U_CLK_DIV|Equal0~2_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\);

-- Location: LCCOMB_X1_Y38_N8
\U_CLK_GEN|U_CLK_DIV|clk_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|U_CLK_DIV|clk_out~feeder_combout\ = \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|U_CLK_DIV|Equal0~10_combout\,
	combout => \U_CLK_GEN|U_CLK_DIV|clk_out~feeder_combout\);

-- Location: FF_X1_Y38_N9
\U_CLK_GEN|U_CLK_DIV|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk50MHz~inputclkctrl_outclk\,
	d => \U_CLK_GEN|U_CLK_DIV|clk_out~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|U_CLK_DIV|clk_out~q\);

-- Location: CLKCTRL_G0
\U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\);

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

-- Location: LCCOMB_X46_Y50_N0
\U_CLK_GEN|Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~24_combout\ = \U_CLK_GEN|count\(0) $ (VCC)
-- \U_CLK_GEN|Add0~25\ = CARRY(\U_CLK_GEN|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(0),
	datad => VCC,
	combout => \U_CLK_GEN|Add0~24_combout\,
	cout => \U_CLK_GEN|Add0~25\);

-- Location: LCCOMB_X47_Y50_N20
\U_CLK_GEN|Add0~106\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~106_combout\ = (!\button[1]~input_o\ & ((\U_CLK_GEN|Add0~24_combout\) # ((!\U_CLK_GEN|Equal0~9_combout\ & !\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~24_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~106_combout\);

-- Location: FF_X46_Y50_N3
\U_CLK_GEN|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	asdata => \U_CLK_GEN|Add0~106_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(0));

-- Location: LCCOMB_X46_Y50_N2
\U_CLK_GEN|Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~26_combout\ = (\U_CLK_GEN|count\(1) & (!\U_CLK_GEN|Add0~25\)) # (!\U_CLK_GEN|count\(1) & ((\U_CLK_GEN|Add0~25\) # (GND)))
-- \U_CLK_GEN|Add0~27\ = CARRY((!\U_CLK_GEN|Add0~25\) # (!\U_CLK_GEN|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(1),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~25\,
	combout => \U_CLK_GEN|Add0~26_combout\,
	cout => \U_CLK_GEN|Add0~27\);

-- Location: LCCOMB_X47_Y50_N14
\U_CLK_GEN|Add0~105\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~105_combout\ = (\U_CLK_GEN|Add0~26_combout\ & (!\button[1]~input_o\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~26_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~105_combout\);

-- Location: FF_X46_Y50_N27
\U_CLK_GEN|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	asdata => \U_CLK_GEN|Add0~105_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(1));

-- Location: LCCOMB_X46_Y50_N4
\U_CLK_GEN|Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~28_combout\ = (\U_CLK_GEN|count\(2) & (\U_CLK_GEN|Add0~27\ $ (GND))) # (!\U_CLK_GEN|count\(2) & (!\U_CLK_GEN|Add0~27\ & VCC))
-- \U_CLK_GEN|Add0~29\ = CARRY((\U_CLK_GEN|count\(2) & !\U_CLK_GEN|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(2),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~27\,
	combout => \U_CLK_GEN|Add0~28_combout\,
	cout => \U_CLK_GEN|Add0~29\);

-- Location: LCCOMB_X47_Y50_N8
\U_CLK_GEN|Add0~104\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~104_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~28_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Add0~28_combout\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~104_combout\);

-- Location: FF_X46_Y50_N29
\U_CLK_GEN|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	asdata => \U_CLK_GEN|Add0~104_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(2));

-- Location: LCCOMB_X46_Y50_N6
\U_CLK_GEN|Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~30_combout\ = (\U_CLK_GEN|count\(3) & (!\U_CLK_GEN|Add0~29\)) # (!\U_CLK_GEN|count\(3) & ((\U_CLK_GEN|Add0~29\) # (GND)))
-- \U_CLK_GEN|Add0~31\ = CARRY((!\U_CLK_GEN|Add0~29\) # (!\U_CLK_GEN|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(3),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~29\,
	combout => \U_CLK_GEN|Add0~30_combout\,
	cout => \U_CLK_GEN|Add0~31\);

-- Location: LCCOMB_X47_Y50_N30
\U_CLK_GEN|Add0~107\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~107_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~30_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Add0~30_combout\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~107_combout\);

-- Location: FF_X46_Y50_N19
\U_CLK_GEN|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	asdata => \U_CLK_GEN|Add0~107_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(3));

-- Location: LCCOMB_X46_Y50_N8
\U_CLK_GEN|Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~32_combout\ = (\U_CLK_GEN|count\(4) & (\U_CLK_GEN|Add0~31\ $ (GND))) # (!\U_CLK_GEN|count\(4) & (!\U_CLK_GEN|Add0~31\ & VCC))
-- \U_CLK_GEN|Add0~33\ = CARRY((\U_CLK_GEN|count\(4) & !\U_CLK_GEN|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(4),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~31\,
	combout => \U_CLK_GEN|Add0~32_combout\,
	cout => \U_CLK_GEN|Add0~33\);

-- Location: LCCOMB_X47_Y50_N22
\U_CLK_GEN|Add0~100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~100_combout\ = (\U_CLK_GEN|Add0~32_combout\ & (!\button[1]~input_o\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~32_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~100_combout\);

-- Location: FF_X47_Y50_N23
\U_CLK_GEN|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~100_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(4));

-- Location: LCCOMB_X46_Y50_N10
\U_CLK_GEN|Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~34_combout\ = (\U_CLK_GEN|count\(5) & (!\U_CLK_GEN|Add0~33\)) # (!\U_CLK_GEN|count\(5) & ((\U_CLK_GEN|Add0~33\) # (GND)))
-- \U_CLK_GEN|Add0~35\ = CARRY((!\U_CLK_GEN|Add0~33\) # (!\U_CLK_GEN|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(5),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~33\,
	combout => \U_CLK_GEN|Add0~34_combout\,
	cout => \U_CLK_GEN|Add0~35\);

-- Location: LCCOMB_X47_Y50_N10
\U_CLK_GEN|Add0~103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~103_combout\ = (\U_CLK_GEN|Add0~34_combout\ & (!\button[1]~input_o\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~34_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~103_combout\);

-- Location: FF_X46_Y50_N25
\U_CLK_GEN|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	asdata => \U_CLK_GEN|Add0~103_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(5));

-- Location: LCCOMB_X46_Y50_N12
\U_CLK_GEN|Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~36_combout\ = (\U_CLK_GEN|count\(6) & (\U_CLK_GEN|Add0~35\ $ (GND))) # (!\U_CLK_GEN|count\(6) & (!\U_CLK_GEN|Add0~35\ & VCC))
-- \U_CLK_GEN|Add0~37\ = CARRY((\U_CLK_GEN|count\(6) & !\U_CLK_GEN|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(6),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~35\,
	combout => \U_CLK_GEN|Add0~36_combout\,
	cout => \U_CLK_GEN|Add0~37\);

-- Location: LCCOMB_X47_Y50_N26
\U_CLK_GEN|Add0~102\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~102_combout\ = (\U_CLK_GEN|Add0~36_combout\ & (!\button[1]~input_o\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~36_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~102_combout\);

-- Location: FF_X47_Y50_N27
\U_CLK_GEN|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~102_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(6));

-- Location: LCCOMB_X46_Y50_N14
\U_CLK_GEN|Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~38_combout\ = (\U_CLK_GEN|count\(7) & (!\U_CLK_GEN|Add0~37\)) # (!\U_CLK_GEN|count\(7) & ((\U_CLK_GEN|Add0~37\) # (GND)))
-- \U_CLK_GEN|Add0~39\ = CARRY((!\U_CLK_GEN|Add0~37\) # (!\U_CLK_GEN|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(7),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~37\,
	combout => \U_CLK_GEN|Add0~38_combout\,
	cout => \U_CLK_GEN|Add0~39\);

-- Location: LCCOMB_X47_Y50_N28
\U_CLK_GEN|Add0~101\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~101_combout\ = (\U_CLK_GEN|Add0~38_combout\ & (!\button[1]~input_o\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~38_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~101_combout\);

-- Location: FF_X47_Y50_N29
\U_CLK_GEN|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~101_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(7));

-- Location: LCCOMB_X47_Y50_N12
\U_CLK_GEN|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~7_combout\ = (\U_CLK_GEN|count\(4)) # (((!\U_CLK_GEN|count\(5)) # (!\U_CLK_GEN|count\(6))) # (!\U_CLK_GEN|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(4),
	datab => \U_CLK_GEN|count\(7),
	datac => \U_CLK_GEN|count\(6),
	datad => \U_CLK_GEN|count\(5),
	combout => \U_CLK_GEN|Equal0~7_combout\);

-- Location: LCCOMB_X46_Y50_N16
\U_CLK_GEN|Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~40_combout\ = (\U_CLK_GEN|count\(8) & (\U_CLK_GEN|Add0~39\ $ (GND))) # (!\U_CLK_GEN|count\(8) & (!\U_CLK_GEN|Add0~39\ & VCC))
-- \U_CLK_GEN|Add0~41\ = CARRY((\U_CLK_GEN|count\(8) & !\U_CLK_GEN|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(8),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~39\,
	combout => \U_CLK_GEN|Add0~40_combout\,
	cout => \U_CLK_GEN|Add0~41\);

-- Location: LCCOMB_X47_Y50_N18
\U_CLK_GEN|Add0~99\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~99_combout\ = (\U_CLK_GEN|Add0~40_combout\ & (!\button[1]~input_o\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~40_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~99_combout\);

-- Location: FF_X47_Y50_N19
\U_CLK_GEN|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~99_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(8));

-- Location: LCCOMB_X46_Y50_N18
\U_CLK_GEN|Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~42_combout\ = (\U_CLK_GEN|count\(9) & (!\U_CLK_GEN|Add0~41\)) # (!\U_CLK_GEN|count\(9) & ((\U_CLK_GEN|Add0~41\) # (GND)))
-- \U_CLK_GEN|Add0~43\ = CARRY((!\U_CLK_GEN|Add0~41\) # (!\U_CLK_GEN|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(9),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~41\,
	combout => \U_CLK_GEN|Add0~42_combout\,
	cout => \U_CLK_GEN|Add0~43\);

-- Location: LCCOMB_X47_Y50_N16
\U_CLK_GEN|Add0~98\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~98_combout\ = (\U_CLK_GEN|Add0~42_combout\ & (!\button[1]~input_o\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Add0~42_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Equal0~4_combout\,
	combout => \U_CLK_GEN|Add0~98_combout\);

-- Location: FF_X47_Y50_N17
\U_CLK_GEN|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~98_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(9));

-- Location: LCCOMB_X46_Y50_N20
\U_CLK_GEN|Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~44_combout\ = (\U_CLK_GEN|count\(10) & (\U_CLK_GEN|Add0~43\ $ (GND))) # (!\U_CLK_GEN|count\(10) & (!\U_CLK_GEN|Add0~43\ & VCC))
-- \U_CLK_GEN|Add0~45\ = CARRY((\U_CLK_GEN|count\(10) & !\U_CLK_GEN|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(10),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~43\,
	combout => \U_CLK_GEN|Add0~44_combout\,
	cout => \U_CLK_GEN|Add0~45\);

-- Location: LCCOMB_X47_Y50_N2
\U_CLK_GEN|Add0~97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~97_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~44_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~44_combout\,
	combout => \U_CLK_GEN|Add0~97_combout\);

-- Location: FF_X47_Y50_N3
\U_CLK_GEN|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~97_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(10));

-- Location: LCCOMB_X46_Y50_N22
\U_CLK_GEN|Add0~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~46_combout\ = (\U_CLK_GEN|count\(11) & (!\U_CLK_GEN|Add0~45\)) # (!\U_CLK_GEN|count\(11) & ((\U_CLK_GEN|Add0~45\) # (GND)))
-- \U_CLK_GEN|Add0~47\ = CARRY((!\U_CLK_GEN|Add0~45\) # (!\U_CLK_GEN|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(11),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~45\,
	combout => \U_CLK_GEN|Add0~46_combout\,
	cout => \U_CLK_GEN|Add0~47\);

-- Location: LCCOMB_X47_Y50_N4
\U_CLK_GEN|Add0~96\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~96_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~46_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~46_combout\,
	combout => \U_CLK_GEN|Add0~96_combout\);

-- Location: FF_X47_Y50_N5
\U_CLK_GEN|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~96_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(11));

-- Location: LCCOMB_X47_Y50_N0
\U_CLK_GEN|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~6_combout\ = ((\U_CLK_GEN|count\(10)) # ((\U_CLK_GEN|count\(11)) # (!\U_CLK_GEN|count\(9)))) # (!\U_CLK_GEN|count\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(8),
	datab => \U_CLK_GEN|count\(10),
	datac => \U_CLK_GEN|count\(11),
	datad => \U_CLK_GEN|count\(9),
	combout => \U_CLK_GEN|Equal0~6_combout\);

-- Location: LCCOMB_X46_Y50_N24
\U_CLK_GEN|Add0~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~48_combout\ = (\U_CLK_GEN|count\(12) & (\U_CLK_GEN|Add0~47\ $ (GND))) # (!\U_CLK_GEN|count\(12) & (!\U_CLK_GEN|Add0~47\ & VCC))
-- \U_CLK_GEN|Add0~49\ = CARRY((\U_CLK_GEN|count\(12) & !\U_CLK_GEN|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(12),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~47\,
	combout => \U_CLK_GEN|Add0~48_combout\,
	cout => \U_CLK_GEN|Add0~49\);

-- Location: LCCOMB_X45_Y50_N16
\U_CLK_GEN|Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~95_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~48_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~48_combout\,
	combout => \U_CLK_GEN|Add0~95_combout\);

-- Location: FF_X45_Y50_N17
\U_CLK_GEN|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~95_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(12));

-- Location: LCCOMB_X46_Y50_N26
\U_CLK_GEN|Add0~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~50_combout\ = (\U_CLK_GEN|count\(13) & (!\U_CLK_GEN|Add0~49\)) # (!\U_CLK_GEN|count\(13) & ((\U_CLK_GEN|Add0~49\) # (GND)))
-- \U_CLK_GEN|Add0~51\ = CARRY((!\U_CLK_GEN|Add0~49\) # (!\U_CLK_GEN|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(13),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~49\,
	combout => \U_CLK_GEN|Add0~50_combout\,
	cout => \U_CLK_GEN|Add0~51\);

-- Location: LCCOMB_X45_Y50_N14
\U_CLK_GEN|Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~94_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~50_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~50_combout\,
	combout => \U_CLK_GEN|Add0~94_combout\);

-- Location: FF_X45_Y50_N15
\U_CLK_GEN|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~94_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(13));

-- Location: LCCOMB_X46_Y50_N28
\U_CLK_GEN|Add0~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~52_combout\ = (\U_CLK_GEN|count\(14) & (\U_CLK_GEN|Add0~51\ $ (GND))) # (!\U_CLK_GEN|count\(14) & (!\U_CLK_GEN|Add0~51\ & VCC))
-- \U_CLK_GEN|Add0~53\ = CARRY((\U_CLK_GEN|count\(14) & !\U_CLK_GEN|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(14),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~51\,
	combout => \U_CLK_GEN|Add0~52_combout\,
	cout => \U_CLK_GEN|Add0~53\);

-- Location: LCCOMB_X45_Y50_N6
\U_CLK_GEN|Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~93_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~52_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~9_combout\,
	datac => \U_CLK_GEN|Equal0~4_combout\,
	datad => \U_CLK_GEN|Add0~52_combout\,
	combout => \U_CLK_GEN|Add0~93_combout\);

-- Location: FF_X45_Y50_N7
\U_CLK_GEN|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~93_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(14));

-- Location: LCCOMB_X46_Y50_N30
\U_CLK_GEN|Add0~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~54_combout\ = (\U_CLK_GEN|count\(15) & (!\U_CLK_GEN|Add0~53\)) # (!\U_CLK_GEN|count\(15) & ((\U_CLK_GEN|Add0~53\) # (GND)))
-- \U_CLK_GEN|Add0~55\ = CARRY((!\U_CLK_GEN|Add0~53\) # (!\U_CLK_GEN|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(15),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~53\,
	combout => \U_CLK_GEN|Add0~54_combout\,
	cout => \U_CLK_GEN|Add0~55\);

-- Location: LCCOMB_X45_Y50_N0
\U_CLK_GEN|Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~92_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~54_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~54_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~92_combout\);

-- Location: FF_X45_Y50_N1
\U_CLK_GEN|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~92_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(15));

-- Location: LCCOMB_X45_Y50_N24
\U_CLK_GEN|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~5_combout\ = (\U_CLK_GEN|count\(14)) # ((\U_CLK_GEN|count\(15)) # ((\U_CLK_GEN|count\(13)) # (\U_CLK_GEN|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(14),
	datab => \U_CLK_GEN|count\(15),
	datac => \U_CLK_GEN|count\(13),
	datad => \U_CLK_GEN|count\(12),
	combout => \U_CLK_GEN|Equal0~5_combout\);

-- Location: LCCOMB_X47_Y50_N6
\U_CLK_GEN|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~8_combout\ = (\U_CLK_GEN|count\(0)) # ((\U_CLK_GEN|count\(2)) # ((\U_CLK_GEN|count\(1)) # (!\U_CLK_GEN|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(0),
	datab => \U_CLK_GEN|count\(2),
	datac => \U_CLK_GEN|count\(1),
	datad => \U_CLK_GEN|count\(3),
	combout => \U_CLK_GEN|Equal0~8_combout\);

-- Location: LCCOMB_X47_Y50_N24
\U_CLK_GEN|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~9_combout\ = (\U_CLK_GEN|Equal0~7_combout\) # ((\U_CLK_GEN|Equal0~6_combout\) # ((\U_CLK_GEN|Equal0~5_combout\) # (\U_CLK_GEN|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~7_combout\,
	datab => \U_CLK_GEN|Equal0~6_combout\,
	datac => \U_CLK_GEN|Equal0~5_combout\,
	datad => \U_CLK_GEN|Equal0~8_combout\,
	combout => \U_CLK_GEN|Equal0~9_combout\);

-- Location: LCCOMB_X46_Y49_N0
\U_CLK_GEN|Add0~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~56_combout\ = (\U_CLK_GEN|count\(16) & (\U_CLK_GEN|Add0~55\ $ (GND))) # (!\U_CLK_GEN|count\(16) & (!\U_CLK_GEN|Add0~55\ & VCC))
-- \U_CLK_GEN|Add0~57\ = CARRY((\U_CLK_GEN|count\(16) & !\U_CLK_GEN|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(16),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~55\,
	combout => \U_CLK_GEN|Add0~56_combout\,
	cout => \U_CLK_GEN|Add0~57\);

-- Location: LCCOMB_X47_Y49_N18
\U_CLK_GEN|Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~91_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~56_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~56_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~91_combout\);

-- Location: FF_X47_Y49_N19
\U_CLK_GEN|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~91_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(16));

-- Location: LCCOMB_X46_Y49_N2
\U_CLK_GEN|Add0~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~58_combout\ = (\U_CLK_GEN|count\(17) & (!\U_CLK_GEN|Add0~57\)) # (!\U_CLK_GEN|count\(17) & ((\U_CLK_GEN|Add0~57\) # (GND)))
-- \U_CLK_GEN|Add0~59\ = CARRY((!\U_CLK_GEN|Add0~57\) # (!\U_CLK_GEN|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(17),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~57\,
	combout => \U_CLK_GEN|Add0~58_combout\,
	cout => \U_CLK_GEN|Add0~59\);

-- Location: LCCOMB_X47_Y49_N12
\U_CLK_GEN|Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~90_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~58_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~58_combout\,
	combout => \U_CLK_GEN|Add0~90_combout\);

-- Location: FF_X47_Y49_N13
\U_CLK_GEN|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~90_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(17));

-- Location: LCCOMB_X46_Y49_N4
\U_CLK_GEN|Add0~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~60_combout\ = (\U_CLK_GEN|count\(18) & (\U_CLK_GEN|Add0~59\ $ (GND))) # (!\U_CLK_GEN|count\(18) & (!\U_CLK_GEN|Add0~59\ & VCC))
-- \U_CLK_GEN|Add0~61\ = CARRY((\U_CLK_GEN|count\(18) & !\U_CLK_GEN|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(18),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~59\,
	combout => \U_CLK_GEN|Add0~60_combout\,
	cout => \U_CLK_GEN|Add0~61\);

-- Location: LCCOMB_X47_Y49_N30
\U_CLK_GEN|Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~89_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~60_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~60_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~89_combout\);

-- Location: FF_X47_Y49_N31
\U_CLK_GEN|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~89_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(18));

-- Location: LCCOMB_X46_Y49_N6
\U_CLK_GEN|Add0~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~62_combout\ = (\U_CLK_GEN|count\(19) & (!\U_CLK_GEN|Add0~61\)) # (!\U_CLK_GEN|count\(19) & ((\U_CLK_GEN|Add0~61\) # (GND)))
-- \U_CLK_GEN|Add0~63\ = CARRY((!\U_CLK_GEN|Add0~61\) # (!\U_CLK_GEN|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(19),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~61\,
	combout => \U_CLK_GEN|Add0~62_combout\,
	cout => \U_CLK_GEN|Add0~63\);

-- Location: LCCOMB_X47_Y49_N28
\U_CLK_GEN|Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~88_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~62_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~62_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~88_combout\);

-- Location: FF_X47_Y49_N29
\U_CLK_GEN|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~88_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(19));

-- Location: LCCOMB_X46_Y49_N8
\U_CLK_GEN|Add0~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~64_combout\ = (\U_CLK_GEN|count\(20) & (\U_CLK_GEN|Add0~63\ $ (GND))) # (!\U_CLK_GEN|count\(20) & (!\U_CLK_GEN|Add0~63\ & VCC))
-- \U_CLK_GEN|Add0~65\ = CARRY((\U_CLK_GEN|count\(20) & !\U_CLK_GEN|Add0~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(20),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~63\,
	combout => \U_CLK_GEN|Add0~64_combout\,
	cout => \U_CLK_GEN|Add0~65\);

-- Location: LCCOMB_X45_Y49_N10
\U_CLK_GEN|Add0~119\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~119_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~64_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~64_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~119_combout\);

-- Location: FF_X45_Y49_N11
\U_CLK_GEN|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~119_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(20));

-- Location: LCCOMB_X46_Y49_N10
\U_CLK_GEN|Add0~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~66_combout\ = (\U_CLK_GEN|count\(21) & (!\U_CLK_GEN|Add0~65\)) # (!\U_CLK_GEN|count\(21) & ((\U_CLK_GEN|Add0~65\) # (GND)))
-- \U_CLK_GEN|Add0~67\ = CARRY((!\U_CLK_GEN|Add0~65\) # (!\U_CLK_GEN|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(21),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~65\,
	combout => \U_CLK_GEN|Add0~66_combout\,
	cout => \U_CLK_GEN|Add0~67\);

-- Location: LCCOMB_X45_Y49_N20
\U_CLK_GEN|Add0~118\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~118_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~66_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~66_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~118_combout\);

-- Location: FF_X45_Y49_N21
\U_CLK_GEN|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~118_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(21));

-- Location: LCCOMB_X46_Y49_N12
\U_CLK_GEN|Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~68_combout\ = (\U_CLK_GEN|count\(22) & (\U_CLK_GEN|Add0~67\ $ (GND))) # (!\U_CLK_GEN|count\(22) & (!\U_CLK_GEN|Add0~67\ & VCC))
-- \U_CLK_GEN|Add0~69\ = CARRY((\U_CLK_GEN|count\(22) & !\U_CLK_GEN|Add0~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(22),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~67\,
	combout => \U_CLK_GEN|Add0~68_combout\,
	cout => \U_CLK_GEN|Add0~69\);

-- Location: LCCOMB_X45_Y49_N30
\U_CLK_GEN|Add0~117\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~117_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~68_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~68_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~117_combout\);

-- Location: FF_X45_Y49_N31
\U_CLK_GEN|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~117_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(22));

-- Location: LCCOMB_X46_Y49_N14
\U_CLK_GEN|Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~70_combout\ = (\U_CLK_GEN|count\(23) & (!\U_CLK_GEN|Add0~69\)) # (!\U_CLK_GEN|count\(23) & ((\U_CLK_GEN|Add0~69\) # (GND)))
-- \U_CLK_GEN|Add0~71\ = CARRY((!\U_CLK_GEN|Add0~69\) # (!\U_CLK_GEN|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(23),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~69\,
	combout => \U_CLK_GEN|Add0~70_combout\,
	cout => \U_CLK_GEN|Add0~71\);

-- Location: LCCOMB_X45_Y49_N0
\U_CLK_GEN|Add0~116\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~116_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~70_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~70_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~116_combout\);

-- Location: FF_X45_Y49_N1
\U_CLK_GEN|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~116_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(23));

-- Location: LCCOMB_X46_Y49_N16
\U_CLK_GEN|Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~72_combout\ = (\U_CLK_GEN|count\(24) & (\U_CLK_GEN|Add0~71\ $ (GND))) # (!\U_CLK_GEN|count\(24) & (!\U_CLK_GEN|Add0~71\ & VCC))
-- \U_CLK_GEN|Add0~73\ = CARRY((\U_CLK_GEN|count\(24) & !\U_CLK_GEN|Add0~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(24),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~71\,
	combout => \U_CLK_GEN|Add0~72_combout\,
	cout => \U_CLK_GEN|Add0~73\);

-- Location: LCCOMB_X45_Y49_N16
\U_CLK_GEN|Add0~115\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~115_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~72_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~72_combout\,
	combout => \U_CLK_GEN|Add0~115_combout\);

-- Location: FF_X45_Y49_N17
\U_CLK_GEN|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~115_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(24));

-- Location: LCCOMB_X46_Y49_N18
\U_CLK_GEN|Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~74_combout\ = (\U_CLK_GEN|count\(25) & (!\U_CLK_GEN|Add0~73\)) # (!\U_CLK_GEN|count\(25) & ((\U_CLK_GEN|Add0~73\) # (GND)))
-- \U_CLK_GEN|Add0~75\ = CARRY((!\U_CLK_GEN|Add0~73\) # (!\U_CLK_GEN|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(25),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~73\,
	combout => \U_CLK_GEN|Add0~74_combout\,
	cout => \U_CLK_GEN|Add0~75\);

-- Location: LCCOMB_X45_Y49_N22
\U_CLK_GEN|Add0~114\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~114_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~74_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~74_combout\,
	combout => \U_CLK_GEN|Add0~114_combout\);

-- Location: FF_X45_Y49_N23
\U_CLK_GEN|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~114_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(25));

-- Location: LCCOMB_X46_Y49_N20
\U_CLK_GEN|Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~76_combout\ = (\U_CLK_GEN|count\(26) & (\U_CLK_GEN|Add0~75\ $ (GND))) # (!\U_CLK_GEN|count\(26) & (!\U_CLK_GEN|Add0~75\ & VCC))
-- \U_CLK_GEN|Add0~77\ = CARRY((\U_CLK_GEN|count\(26) & !\U_CLK_GEN|Add0~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(26),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~75\,
	combout => \U_CLK_GEN|Add0~76_combout\,
	cout => \U_CLK_GEN|Add0~77\);

-- Location: LCCOMB_X45_Y49_N24
\U_CLK_GEN|Add0~113\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~113_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~76_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~76_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~113_combout\);

-- Location: FF_X45_Y49_N25
\U_CLK_GEN|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~113_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(26));

-- Location: LCCOMB_X46_Y49_N22
\U_CLK_GEN|Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~78_combout\ = (\U_CLK_GEN|count\(27) & (!\U_CLK_GEN|Add0~77\)) # (!\U_CLK_GEN|count\(27) & ((\U_CLK_GEN|Add0~77\) # (GND)))
-- \U_CLK_GEN|Add0~79\ = CARRY((!\U_CLK_GEN|Add0~77\) # (!\U_CLK_GEN|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(27),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~77\,
	combout => \U_CLK_GEN|Add0~78_combout\,
	cout => \U_CLK_GEN|Add0~79\);

-- Location: LCCOMB_X45_Y49_N14
\U_CLK_GEN|Add0~112\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~112_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~78_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~78_combout\,
	combout => \U_CLK_GEN|Add0~112_combout\);

-- Location: FF_X45_Y49_N15
\U_CLK_GEN|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~112_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(27));

-- Location: LCCOMB_X46_Y49_N24
\U_CLK_GEN|Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~80_combout\ = (\U_CLK_GEN|count\(28) & (\U_CLK_GEN|Add0~79\ $ (GND))) # (!\U_CLK_GEN|count\(28) & (!\U_CLK_GEN|Add0~79\ & VCC))
-- \U_CLK_GEN|Add0~81\ = CARRY((\U_CLK_GEN|count\(28) & !\U_CLK_GEN|Add0~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(28),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~79\,
	combout => \U_CLK_GEN|Add0~80_combout\,
	cout => \U_CLK_GEN|Add0~81\);

-- Location: LCCOMB_X45_Y49_N26
\U_CLK_GEN|Add0~111\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~111_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~80_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~80_combout\,
	combout => \U_CLK_GEN|Add0~111_combout\);

-- Location: FF_X45_Y49_N27
\U_CLK_GEN|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~111_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(28));

-- Location: LCCOMB_X46_Y49_N26
\U_CLK_GEN|Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~82_combout\ = (\U_CLK_GEN|count\(29) & (!\U_CLK_GEN|Add0~81\)) # (!\U_CLK_GEN|count\(29) & ((\U_CLK_GEN|Add0~81\) # (GND)))
-- \U_CLK_GEN|Add0~83\ = CARRY((!\U_CLK_GEN|Add0~81\) # (!\U_CLK_GEN|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(29),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~81\,
	combout => \U_CLK_GEN|Add0~82_combout\,
	cout => \U_CLK_GEN|Add0~83\);

-- Location: LCCOMB_X45_Y49_N28
\U_CLK_GEN|Add0~110\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~110_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~82_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~82_combout\,
	combout => \U_CLK_GEN|Add0~110_combout\);

-- Location: FF_X45_Y49_N29
\U_CLK_GEN|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~110_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(29));

-- Location: LCCOMB_X46_Y49_N28
\U_CLK_GEN|Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~84_combout\ = (\U_CLK_GEN|count\(30) & (\U_CLK_GEN|Add0~83\ $ (GND))) # (!\U_CLK_GEN|count\(30) & (!\U_CLK_GEN|Add0~83\ & VCC))
-- \U_CLK_GEN|Add0~85\ = CARRY((\U_CLK_GEN|count\(30) & !\U_CLK_GEN|Add0~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(30),
	datad => VCC,
	cin => \U_CLK_GEN|Add0~83\,
	combout => \U_CLK_GEN|Add0~84_combout\,
	cout => \U_CLK_GEN|Add0~85\);

-- Location: LCCOMB_X45_Y49_N2
\U_CLK_GEN|Add0~109\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~109_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~84_combout\ & ((\U_CLK_GEN|Equal0~9_combout\) # (\U_CLK_GEN|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~9_combout\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \button[1]~input_o\,
	datad => \U_CLK_GEN|Add0~84_combout\,
	combout => \U_CLK_GEN|Add0~109_combout\);

-- Location: FF_X45_Y49_N3
\U_CLK_GEN|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~109_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(30));

-- Location: LCCOMB_X46_Y49_N30
\U_CLK_GEN|Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~86_combout\ = \U_CLK_GEN|count\(31) $ (\U_CLK_GEN|Add0~85\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_CLK_GEN|count\(31),
	cin => \U_CLK_GEN|Add0~85\,
	combout => \U_CLK_GEN|Add0~86_combout\);

-- Location: LCCOMB_X45_Y49_N4
\U_CLK_GEN|Add0~108\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Add0~108_combout\ = (!\button[1]~input_o\ & (\U_CLK_GEN|Add0~86_combout\ & ((\U_CLK_GEN|Equal0~4_combout\) # (\U_CLK_GEN|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_CLK_GEN|Equal0~4_combout\,
	datac => \U_CLK_GEN|Add0~86_combout\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|Add0~108_combout\);

-- Location: FF_X45_Y49_N5
\U_CLK_GEN|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|Add0~108_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|count\(31));

-- Location: LCCOMB_X45_Y49_N12
\U_CLK_GEN|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~0_combout\ = (\U_CLK_GEN|count\(28)) # ((\U_CLK_GEN|count\(29)) # ((\U_CLK_GEN|count\(31)) # (\U_CLK_GEN|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(28),
	datab => \U_CLK_GEN|count\(29),
	datac => \U_CLK_GEN|count\(31),
	datad => \U_CLK_GEN|count\(30),
	combout => \U_CLK_GEN|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y49_N18
\U_CLK_GEN|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~1_combout\ = (\U_CLK_GEN|count\(25)) # ((\U_CLK_GEN|count\(26)) # ((\U_CLK_GEN|count\(27)) # (\U_CLK_GEN|count\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(25),
	datab => \U_CLK_GEN|count\(26),
	datac => \U_CLK_GEN|count\(27),
	datad => \U_CLK_GEN|count\(24),
	combout => \U_CLK_GEN|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y49_N8
\U_CLK_GEN|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~2_combout\ = (\U_CLK_GEN|count\(20)) # ((\U_CLK_GEN|count\(23)) # ((\U_CLK_GEN|count\(22)) # (\U_CLK_GEN|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(20),
	datab => \U_CLK_GEN|count\(23),
	datac => \U_CLK_GEN|count\(22),
	datad => \U_CLK_GEN|count\(21),
	combout => \U_CLK_GEN|Equal0~2_combout\);

-- Location: LCCOMB_X47_Y49_N24
\U_CLK_GEN|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~3_combout\ = (\U_CLK_GEN|count\(17)) # ((\U_CLK_GEN|count\(19)) # ((\U_CLK_GEN|count\(18)) # (\U_CLK_GEN|count\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|count\(17),
	datab => \U_CLK_GEN|count\(19),
	datac => \U_CLK_GEN|count\(18),
	datad => \U_CLK_GEN|count\(16),
	combout => \U_CLK_GEN|Equal0~3_combout\);

-- Location: LCCOMB_X45_Y49_N6
\U_CLK_GEN|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|Equal0~4_combout\ = (\U_CLK_GEN|Equal0~0_combout\) # ((\U_CLK_GEN|Equal0~1_combout\) # ((\U_CLK_GEN|Equal0~2_combout\) # (\U_CLK_GEN|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~0_combout\,
	datab => \U_CLK_GEN|Equal0~1_combout\,
	datac => \U_CLK_GEN|Equal0~2_combout\,
	datad => \U_CLK_GEN|Equal0~3_combout\,
	combout => \U_CLK_GEN|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y50_N28
\U_CLK_GEN|clk_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|clk_out~0_combout\ = (\U_CLK_GEN|clk_out~q\) # ((!\U_CLK_GEN|Equal0~4_combout\ & (!\button[1]~input_o\ & !\U_CLK_GEN|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_CLK_GEN|Equal0~4_combout\,
	datab => \button[1]~input_o\,
	datac => \U_CLK_GEN|clk_out~q\,
	datad => \U_CLK_GEN|Equal0~9_combout\,
	combout => \U_CLK_GEN|clk_out~0_combout\);

-- Location: LCCOMB_X45_Y50_N22
\U_CLK_GEN|clk_out~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_CLK_GEN|clk_out~feeder_combout\ = \U_CLK_GEN|clk_out~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_CLK_GEN|clk_out~0_combout\,
	combout => \U_CLK_GEN|clk_out~feeder_combout\);

-- Location: FF_X45_Y50_N23
\U_CLK_GEN|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|U_CLK_DIV|clk_out~clkctrl_outclk\,
	d => \U_CLK_GEN|clk_out~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_CLK_GEN|clk_out~q\);

-- Location: CLKCTRL_G10
\U_CLK_GEN|clk_out~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_CLK_GEN|clk_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_CLK_GEN|clk_out~clkctrl_outclk\);

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

-- Location: LCCOMB_X77_Y46_N10
\U_COUNTER|state~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|state~1_combout\ = (\switch[4]~input_o\ & (\switch[5]~input_o\)) # (!\switch[4]~input_o\ & ((\switch[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_COUNTER|state~1_combout\);

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

-- Location: LCCOMB_X77_Y46_N8
\U_COUNTER|state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|state~0_combout\ = (\switch[4]~input_o\ & ((!\U_COUNTER|state\(0)))) # (!\switch[4]~input_o\ & (\switch[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[4]~input_o\,
	datac => \U_COUNTER|state\(0),
	combout => \U_COUNTER|state~0_combout\);

-- Location: FF_X77_Y46_N9
\U_COUNTER|state[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|state~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|state\(0));

-- Location: LCCOMB_X77_Y46_N18
\U_COUNTER|state~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|state~2_combout\ = \U_COUNTER|state~1_combout\ $ (((\switch[4]~input_o\ & (\U_COUNTER|state\(1) $ (\U_COUNTER|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state~1_combout\,
	datab => \switch[4]~input_o\,
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_COUNTER|state~2_combout\);

-- Location: FF_X77_Y46_N19
\U_COUNTER|state[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|state~2_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|state\(1));

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

-- Location: LCCOMB_X77_Y46_N24
\U_COUNTER|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Mux1~0_combout\ = \U_COUNTER|state\(2) $ (((\switch[5]~input_o\ & (!\U_COUNTER|state\(1) & !\U_COUNTER|state\(0))) # (!\switch[5]~input_o\ & (\U_COUNTER|state\(1) & \U_COUNTER|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \U_COUNTER|state\(1),
	datac => \U_COUNTER|state\(0),
	datad => \U_COUNTER|state\(2),
	combout => \U_COUNTER|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y46_N0
\U_COUNTER|state~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|state~3_combout\ = (\switch[4]~input_o\ & ((\U_COUNTER|Mux1~0_combout\))) # (!\switch[4]~input_o\ & (\switch[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[4]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \U_COUNTER|Mux1~0_combout\,
	combout => \U_COUNTER|state~3_combout\);

-- Location: FF_X77_Y46_N1
\U_COUNTER|state[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|state~3_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|state\(2));

-- Location: LCCOMB_X77_Y46_N6
\U_COUNTER|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|Mux0~0_combout\ = (\switch[5]~input_o\ & (!\U_COUNTER|state\(1) & (!\U_COUNTER|state\(0) & !\U_COUNTER|state\(2)))) # (!\switch[5]~input_o\ & (\U_COUNTER|state\(1) & (\U_COUNTER|state\(0) & \U_COUNTER|state\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \U_COUNTER|state\(1),
	datac => \U_COUNTER|state\(0),
	datad => \U_COUNTER|state\(2),
	combout => \U_COUNTER|Mux0~0_combout\);

-- Location: LCCOMB_X77_Y46_N26
\U_COUNTER|state~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_COUNTER|state~4_combout\ = (\switch[4]~input_o\ & ((\U_COUNTER|state\(3) $ (\U_COUNTER|Mux0~0_combout\)))) # (!\switch[4]~input_o\ & (\switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[4]~input_o\,
	datac => \U_COUNTER|state\(3),
	datad => \U_COUNTER|Mux0~0_combout\,
	combout => \U_COUNTER|state~4_combout\);

-- Location: FF_X77_Y46_N27
\U_COUNTER|state[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_COUNTER|state~4_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_COUNTER|state\(3));

-- Location: LCCOMB_X77_Y46_N28
\U_LED4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux6~0_combout\ = (\U_COUNTER|state\(0) & ((\U_COUNTER|state\(3)) # (\U_COUNTER|state\(2) $ (\U_COUNTER|state\(1))))) # (!\U_COUNTER|state\(0) & ((\U_COUNTER|state\(1)) # (\U_COUNTER|state\(3) $ (\U_COUNTER|state\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state\(3),
	datab => \U_COUNTER|state\(2),
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_LED4|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y46_N30
\U_LED4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux5~0_combout\ = (\U_COUNTER|state\(2) & (\U_COUNTER|state\(0) & (\U_COUNTER|state\(3) $ (\U_COUNTER|state\(1))))) # (!\U_COUNTER|state\(2) & (!\U_COUNTER|state\(3) & ((\U_COUNTER|state\(1)) # (\U_COUNTER|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state\(3),
	datab => \U_COUNTER|state\(2),
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_LED4|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y46_N16
\U_LED4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux4~0_combout\ = (\U_COUNTER|state\(1) & (!\U_COUNTER|state\(3) & ((\U_COUNTER|state\(0))))) # (!\U_COUNTER|state\(1) & ((\U_COUNTER|state\(2) & (!\U_COUNTER|state\(3))) # (!\U_COUNTER|state\(2) & ((\U_COUNTER|state\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state\(3),
	datab => \U_COUNTER|state\(2),
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_LED4|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y46_N14
\U_LED4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux3~0_combout\ = (\U_COUNTER|state\(0) & ((\U_COUNTER|state\(2) $ (!\U_COUNTER|state\(1))))) # (!\U_COUNTER|state\(0) & ((\U_COUNTER|state\(3) & (!\U_COUNTER|state\(2) & \U_COUNTER|state\(1))) # (!\U_COUNTER|state\(3) & (\U_COUNTER|state\(2) & 
-- !\U_COUNTER|state\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state\(3),
	datab => \U_COUNTER|state\(2),
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_LED4|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y46_N4
\U_LED4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux2~0_combout\ = (\U_COUNTER|state\(3) & (\U_COUNTER|state\(2) & ((\U_COUNTER|state\(1)) # (!\U_COUNTER|state\(0))))) # (!\U_COUNTER|state\(3) & (!\U_COUNTER|state\(2) & (\U_COUNTER|state\(1) & !\U_COUNTER|state\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state\(3),
	datab => \U_COUNTER|state\(2),
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_LED4|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y46_N22
\U_LED4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux1~0_combout\ = (\U_COUNTER|state\(3) & ((\U_COUNTER|state\(0) & ((\U_COUNTER|state\(1)))) # (!\U_COUNTER|state\(0) & (\U_COUNTER|state\(2))))) # (!\U_COUNTER|state\(3) & (\U_COUNTER|state\(2) & (\U_COUNTER|state\(1) $ (\U_COUNTER|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state\(3),
	datab => \U_COUNTER|state\(2),
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_LED4|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y46_N12
\U_LED4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED4|Mux0~0_combout\ = (\U_COUNTER|state\(3) & (\U_COUNTER|state\(0) & (\U_COUNTER|state\(2) $ (\U_COUNTER|state\(1))))) # (!\U_COUNTER|state\(3) & (!\U_COUNTER|state\(1) & (\U_COUNTER|state\(2) $ (\U_COUNTER|state\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_COUNTER|state\(3),
	datab => \U_COUNTER|state\(2),
	datac => \U_COUNTER|state\(1),
	datad => \U_COUNTER|state\(0),
	combout => \U_LED4|Mux0~0_combout\);

-- Location: FF_X76_Y37_N19
\U_GRAY|state.STATE_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_1~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_3~q\);

-- Location: LCCOMB_X76_Y37_N2
\U_GRAY|state.STATE_2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE_2~feeder_combout\ = \U_GRAY|state.STATE_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE_3~q\,
	combout => \U_GRAY|state.STATE_2~feeder_combout\);

-- Location: FF_X76_Y37_N3
\U_GRAY|state.STATE_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE_2~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_2~q\);

-- Location: LCCOMB_X76_Y37_N14
\U_GRAY|state.STATE_6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE_6~feeder_combout\ = \U_GRAY|state.STATE_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE_2~q\,
	combout => \U_GRAY|state.STATE_6~feeder_combout\);

-- Location: FF_X76_Y37_N15
\U_GRAY|state.STATE_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE_6~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_6~q\);

-- Location: FF_X76_Y37_N9
\U_GRAY|state.STATE_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_6~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_7~q\);

-- Location: FF_X76_Y37_N25
\U_GRAY|state.STATE_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_7~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_5~q\);

-- Location: FF_X76_Y37_N27
\U_GRAY|state.STATE_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_5~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_4~q\);

-- Location: FF_X76_Y37_N17
\U_GRAY|state.STATE_C\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_4~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_C~q\);

-- Location: LCCOMB_X76_Y37_N22
\U_GRAY|state.STATE_D~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE_D~feeder_combout\ = \U_GRAY|state.STATE_C~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE_C~q\,
	combout => \U_GRAY|state.STATE_D~feeder_combout\);

-- Location: FF_X76_Y37_N23
\U_GRAY|state.STATE_D\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE_D~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_D~q\);

-- Location: FF_X76_Y37_N1
\U_GRAY|state.STATE_F\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_D~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_F~q\);

-- Location: LCCOMB_X76_Y37_N6
\U_GRAY|state.STATE_E~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE_E~feeder_combout\ = \U_GRAY|state.STATE_F~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE_F~q\,
	combout => \U_GRAY|state.STATE_E~feeder_combout\);

-- Location: FF_X76_Y37_N7
\U_GRAY|state.STATE_E\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE_E~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_E~q\);

-- Location: FF_X76_Y37_N5
\U_GRAY|state.STATE_A\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_E~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_A~q\);

-- Location: FF_X76_Y37_N11
\U_GRAY|state.STATE_B\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_A~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_B~q\);

-- Location: FF_X76_Y37_N29
\U_GRAY|state.STATE_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_B~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_9~q\);

-- Location: FF_X76_Y37_N13
\U_GRAY|state.STATE_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	asdata => \U_GRAY|state.STATE_9~q\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_8~q\);

-- Location: LCCOMB_X76_Y37_N20
\U_GRAY|state.STATE_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE_0~0_combout\ = !\U_GRAY|state.STATE_8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE_8~q\,
	combout => \U_GRAY|state.STATE_0~0_combout\);

-- Location: FF_X76_Y37_N21
\U_GRAY|state.STATE_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE_0~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_0~q\);

-- Location: LCCOMB_X76_Y37_N30
\U_GRAY|state.STATE_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|state.STATE_1~0_combout\ = !\U_GRAY|state.STATE_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_GRAY|state.STATE_0~q\,
	combout => \U_GRAY|state.STATE_1~0_combout\);

-- Location: FF_X76_Y37_N31
\U_GRAY|state.STATE_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_CLK_GEN|clk_out~clkctrl_outclk\,
	d => \U_GRAY|state.STATE_1~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_GRAY|state.STATE_1~q\);

-- Location: LCCOMB_X76_Y37_N18
\U_GRAY|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~0_combout\ = (!\U_GRAY|state.STATE_1~q\ & (!\U_GRAY|state.STATE_2~q\ & (!\U_GRAY|state.STATE_3~q\ & \U_GRAY|state.STATE_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE_1~q\,
	datab => \U_GRAY|state.STATE_2~q\,
	datac => \U_GRAY|state.STATE_3~q\,
	datad => \U_GRAY|state.STATE_0~q\,
	combout => \U_GRAY|WideOr0~0_combout\);

-- Location: LCCOMB_X76_Y37_N10
\U_GRAY|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr1~0_combout\ = (\U_GRAY|state.STATE_9~q\) # ((\U_GRAY|state.STATE_A~q\) # ((\U_GRAY|state.STATE_B~q\) # (\U_GRAY|state.STATE_8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE_9~q\,
	datab => \U_GRAY|state.STATE_A~q\,
	datac => \U_GRAY|state.STATE_B~q\,
	datad => \U_GRAY|state.STATE_8~q\,
	combout => \U_GRAY|WideOr1~0_combout\);

-- Location: LCCOMB_X76_Y37_N0
\U_GRAY|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr1~combout\ = (\U_GRAY|WideOr1~0_combout\) # (!\U_GRAY|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~0_combout\,
	datad => \U_GRAY|WideOr1~0_combout\,
	combout => \U_GRAY|WideOr1~combout\);

-- Location: LCCOMB_X76_Y37_N8
\U_GRAY|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~1_combout\ = (\U_GRAY|state.STATE_5~q\) # ((\U_GRAY|state.STATE_6~q\) # ((\U_GRAY|state.STATE_7~q\) # (\U_GRAY|state.STATE_4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE_5~q\,
	datab => \U_GRAY|state.STATE_6~q\,
	datac => \U_GRAY|state.STATE_7~q\,
	datad => \U_GRAY|state.STATE_4~q\,
	combout => \U_GRAY|WideOr0~1_combout\);

-- Location: LCCOMB_X76_Y37_N24
\U_GRAY|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr0~combout\ = (\U_GRAY|WideOr0~1_combout\) # (!\U_GRAY|WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr0~0_combout\,
	datad => \U_GRAY|WideOr0~1_combout\,
	combout => \U_GRAY|WideOr0~combout\);

-- Location: LCCOMB_X76_Y37_N4
\U_GRAY|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr3~0_combout\ = (\U_GRAY|state.STATE_6~q\) # ((\U_GRAY|state.STATE_E~q\) # ((\U_GRAY|state.STATE_A~q\) # (\U_GRAY|state.STATE_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE_6~q\,
	datab => \U_GRAY|state.STATE_E~q\,
	datac => \U_GRAY|state.STATE_A~q\,
	datad => \U_GRAY|state.STATE_2~q\,
	combout => \U_GRAY|WideOr3~0_combout\);

-- Location: LCCOMB_X76_Y37_N12
\U_GRAY|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~0_combout\ = (!\U_GRAY|state.STATE_C~q\ & (!\U_GRAY|state.STATE_4~q\ & (!\U_GRAY|state.STATE_8~q\ & \U_GRAY|state.STATE_0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE_C~q\,
	datab => \U_GRAY|state.STATE_4~q\,
	datac => \U_GRAY|state.STATE_8~q\,
	datad => \U_GRAY|state.STATE_0~q\,
	combout => \U_GRAY|WideOr2~0_combout\);

-- Location: LCCOMB_X76_Y37_N16
\U_GRAY|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr3~combout\ = (\U_GRAY|WideOr3~0_combout\) # (!\U_GRAY|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GRAY|WideOr3~0_combout\,
	datad => \U_GRAY|WideOr2~0_combout\,
	combout => \U_GRAY|WideOr3~combout\);

-- Location: LCCOMB_X76_Y37_N28
\U_GRAY|WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~1_combout\ = (\U_GRAY|state.STATE_5~q\) # ((\U_GRAY|state.STATE_1~q\) # ((\U_GRAY|state.STATE_9~q\) # (\U_GRAY|state.STATE_D~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|state.STATE_5~q\,
	datab => \U_GRAY|state.STATE_1~q\,
	datac => \U_GRAY|state.STATE_9~q\,
	datad => \U_GRAY|state.STATE_D~q\,
	combout => \U_GRAY|WideOr2~1_combout\);

-- Location: LCCOMB_X76_Y37_N26
\U_GRAY|WideOr2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_GRAY|WideOr2~combout\ = (\U_GRAY|WideOr2~1_combout\) # (!\U_GRAY|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_GRAY|WideOr2~0_combout\,
	datad => \U_GRAY|WideOr2~1_combout\,
	combout => \U_GRAY|WideOr2~combout\);

-- Location: LCCOMB_X77_Y37_N4
\U_LED5|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux6~0_combout\ = (\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr1~combout\ $ (!\U_GRAY|WideOr0~combout\)))) # (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr0~combout\ & (\U_GRAY|WideOr1~combout\ $ 
-- (!\U_GRAY|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr1~combout\,
	datab => \U_GRAY|WideOr0~combout\,
	datac => \U_GRAY|WideOr3~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED5|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y37_N2
\U_LED5|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux5~0_combout\ = (\U_GRAY|WideOr1~combout\ & (\U_GRAY|WideOr0~combout\ & ((!\U_GRAY|WideOr2~combout\) # (!\U_GRAY|WideOr3~combout\)))) # (!\U_GRAY|WideOr1~combout\ & (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr0~combout\ $ 
-- (\U_GRAY|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr1~combout\,
	datab => \U_GRAY|WideOr0~combout\,
	datac => \U_GRAY|WideOr3~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED5|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y37_N16
\U_LED5|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux4~0_combout\ = (\U_GRAY|WideOr2~combout\ & ((\U_GRAY|WideOr1~combout\ & ((!\U_GRAY|WideOr3~combout\))) # (!\U_GRAY|WideOr1~combout\ & (\U_GRAY|WideOr0~combout\)))) # (!\U_GRAY|WideOr2~combout\ & (((\U_GRAY|WideOr0~combout\ & 
-- !\U_GRAY|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr1~combout\,
	datab => \U_GRAY|WideOr0~combout\,
	datac => \U_GRAY|WideOr3~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED5|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y37_N6
\U_LED5|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux3~0_combout\ = (\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr1~combout\ & ((\U_GRAY|WideOr0~combout\) # (\U_GRAY|WideOr2~combout\))) # (!\U_GRAY|WideOr1~combout\ & ((!\U_GRAY|WideOr2~combout\) # (!\U_GRAY|WideOr0~combout\))))) # 
-- (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr1~combout\ $ (((\U_GRAY|WideOr2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr1~combout\,
	datab => \U_GRAY|WideOr0~combout\,
	datac => \U_GRAY|WideOr3~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED5|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y37_N8
\U_LED5|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux2~0_combout\ = (\U_GRAY|WideOr1~combout\ & (((\U_GRAY|WideOr2~combout\) # (!\U_GRAY|WideOr3~combout\)) # (!\U_GRAY|WideOr0~combout\))) # (!\U_GRAY|WideOr1~combout\ & ((\U_GRAY|WideOr0~combout\) # ((!\U_GRAY|WideOr3~combout\ & 
-- \U_GRAY|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr1~combout\,
	datab => \U_GRAY|WideOr0~combout\,
	datac => \U_GRAY|WideOr3~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED5|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y37_N22
\U_LED5|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux1~0_combout\ = (\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr1~combout\) # (\U_GRAY|WideOr3~combout\ $ (!\U_GRAY|WideOr2~combout\)))) # (!\U_GRAY|WideOr0~combout\ & ((\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr1~combout\)) # 
-- (!\U_GRAY|WideOr3~combout\ & ((\U_GRAY|WideOr2~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr1~combout\,
	datab => \U_GRAY|WideOr0~combout\,
	datac => \U_GRAY|WideOr3~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED5|Mux1~0_combout\);

-- Location: LCCOMB_X77_Y37_N12
\U_LED5|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED5|Mux0~0_combout\ = (\U_GRAY|WideOr1~combout\ & (!\U_GRAY|WideOr3~combout\ & (\U_GRAY|WideOr0~combout\ $ (!\U_GRAY|WideOr2~combout\)))) # (!\U_GRAY|WideOr1~combout\ & (\U_GRAY|WideOr2~combout\ & (\U_GRAY|WideOr0~combout\ $ 
-- (!\U_GRAY|WideOr3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_GRAY|WideOr1~combout\,
	datab => \U_GRAY|WideOr0~combout\,
	datac => \U_GRAY|WideOr3~combout\,
	datad => \U_GRAY|WideOr2~combout\,
	combout => \U_LED5|Mux0~0_combout\);

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

-- Location: IOIBUF_X24_Y0_N29
\clk_gen_out~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_gen_out,
	o => \clk_gen_out~input_o\);

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

ww_clk_gen_out <= \clk_gen_out~output_o\;
END structure;


