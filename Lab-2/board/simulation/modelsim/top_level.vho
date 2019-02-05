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

-- DATE "02/04/2019 20:26:15"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
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
	led5_dp : BUFFER std_logic
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
-- switch[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[1]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- button[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- switch[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \button[1]~input_o\ : std_logic;
SIGNAL \switch[5]~input_o\ : std_logic;
SIGNAL \switch[0]~input_o\ : std_logic;
SIGNAL \switch[9]~input_o\ : std_logic;
SIGNAL \U_ALU|Mux0~22_combout\ : std_logic;
SIGNAL \switch[8]~input_o\ : std_logic;
SIGNAL \switch[4]~input_o\ : std_logic;
SIGNAL \switch[3]~input_o\ : std_logic;
SIGNAL \switch[7]~input_o\ : std_logic;
SIGNAL \switch[2]~input_o\ : std_logic;
SIGNAL \switch[6]~input_o\ : std_logic;
SIGNAL \U_ALU|Add1~1\ : std_logic;
SIGNAL \U_ALU|Add1~3\ : std_logic;
SIGNAL \U_ALU|Add1~5\ : std_logic;
SIGNAL \U_ALU|Add1~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~23_combout\ : std_logic;
SIGNAL \switch[1]~input_o\ : std_logic;
SIGNAL \button[0]~input_o\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~1\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~5\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~6_combout\ : std_logic;
SIGNAL \U_ALU|Add0~1\ : std_logic;
SIGNAL \U_ALU|Add0~3\ : std_logic;
SIGNAL \U_ALU|Add0~5\ : std_logic;
SIGNAL \U_ALU|Add0~6_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~20_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~21_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~17_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~18_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~16_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~19_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~2_combout\ : std_logic;
SIGNAL \U_ALU|Add0~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~28_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~29_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~30_combout\ : std_logic;
SIGNAL \U_ALU|Add1~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~31_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~13_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~12_combout\ : std_logic;
SIGNAL \U_ALU|Mux2~1_combout\ : std_logic;
SIGNAL \U_ALU|Add1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~6_combout\ : std_logic;
SIGNAL \U_ALU|Add0~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~7_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~9_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~10_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~11_combout\ : std_logic;
SIGNAL \U_ALU|Mux3~1_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~15_combout\ : std_logic;
SIGNAL \U_ALU|Add0~4_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~24_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~25_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~14_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~26_combout\ : std_logic;
SIGNAL \U_ALU|Add1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mux0~27_combout\ : std_logic;
SIGNAL \U_ALU|Mux1~1_combout\ : std_logic;
SIGNAL \U_LED0|Mux6~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux5~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux4~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux3~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux2~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux1~0_combout\ : std_logic;
SIGNAL \U_LED0|Mux0~0_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~3\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~7\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~8_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~5\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~9\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~10_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~7\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~9\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~11\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~13\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~14_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|op_3~12_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~1_combout\ : std_logic;
SIGNAL \U_ALU|Add0~7\ : std_logic;
SIGNAL \U_ALU|Add0~8_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~0_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~2_combout\ : std_logic;
SIGNAL \U_ALU|Mux4~3_combout\ : std_logic;
SIGNAL \U_ALU|Mult0|auto_generated|le4a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_ALU|Mult0|auto_generated|le3a\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \U_ALU|Mult0|auto_generated|le5a\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \U_ALU|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \U_LED0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

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
\U_ALU|ALT_INV_Mux4~3_combout\ <= NOT \U_ALU|Mux4~3_combout\;
\U_LED0|ALT_INV_Mux0~0_combout\ <= NOT \U_LED0|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N24
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
	i => \U_LED0|Mux6~0_combout\,
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
	i => \U_LED0|Mux5~0_combout\,
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
	i => \U_LED0|Mux4~0_combout\,
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
	i => \U_LED0|Mux3~0_combout\,
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
	i => \U_LED0|Mux2~0_combout\,
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
	i => \U_LED0|Mux1~0_combout\,
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
	i => \U_LED0|ALT_INV_Mux0~0_combout\,
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
	i => \U_ALU|ALT_INV_Mux4~3_combout\,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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

-- Location: LCCOMB_X57_Y52_N8
\U_ALU|Mux0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~22_combout\ = (\switch[0]~input_o\ & (\switch[9]~input_o\ $ (((\switch[5]~input_o\) # (\button[1]~input_o\))))) # (!\switch[0]~input_o\ & (((\switch[5]~input_o\ & \switch[9]~input_o\)) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~22_combout\);

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

-- Location: LCCOMB_X57_Y52_N16
\U_ALU|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~0_combout\ = (\switch[2]~input_o\ & (\switch[6]~input_o\ $ (VCC))) # (!\switch[2]~input_o\ & ((\switch[6]~input_o\) # (GND)))
-- \U_ALU|Add1~1\ = CARRY((\switch[6]~input_o\) # (!\switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[6]~input_o\,
	datad => VCC,
	combout => \U_ALU|Add1~0_combout\,
	cout => \U_ALU|Add1~1\);

-- Location: LCCOMB_X57_Y52_N18
\U_ALU|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~2_combout\ = (\switch[3]~input_o\ & ((\switch[7]~input_o\ & (!\U_ALU|Add1~1\)) # (!\switch[7]~input_o\ & ((\U_ALU|Add1~1\) # (GND))))) # (!\switch[3]~input_o\ & ((\switch[7]~input_o\ & (\U_ALU|Add1~1\ & VCC)) # (!\switch[7]~input_o\ & 
-- (!\U_ALU|Add1~1\))))
-- \U_ALU|Add1~3\ = CARRY((\switch[3]~input_o\ & ((!\U_ALU|Add1~1\) # (!\switch[7]~input_o\))) # (!\switch[3]~input_o\ & (!\switch[7]~input_o\ & !\U_ALU|Add1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[7]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~1\,
	combout => \U_ALU|Add1~2_combout\,
	cout => \U_ALU|Add1~3\);

-- Location: LCCOMB_X57_Y52_N20
\U_ALU|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~4_combout\ = ((\switch[8]~input_o\ $ (\switch[4]~input_o\ $ (\U_ALU|Add1~3\)))) # (GND)
-- \U_ALU|Add1~5\ = CARRY((\switch[8]~input_o\ & ((!\U_ALU|Add1~3\) # (!\switch[4]~input_o\))) # (!\switch[8]~input_o\ & (!\switch[4]~input_o\ & !\U_ALU|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[4]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add1~3\,
	combout => \U_ALU|Add1~4_combout\,
	cout => \U_ALU|Add1~5\);

-- Location: LCCOMB_X57_Y52_N22
\U_ALU|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add1~6_combout\ = \switch[5]~input_o\ $ (\U_ALU|Add1~5\ $ (!\switch[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \switch[5]~input_o\,
	datad => \switch[9]~input_o\,
	cin => \U_ALU|Add1~5\,
	combout => \U_ALU|Add1~6_combout\);

-- Location: LCCOMB_X57_Y52_N2
\U_ALU|Mux0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~23_combout\ = (\U_ALU|Mux0~22_combout\ & ((\button[1]~input_o\) # ((\U_ALU|Add1~6_combout\) # (\switch[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \U_ALU|Mux0~22_combout\,
	datac => \U_ALU|Add1~6_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux0~23_combout\);

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

-- Location: LCCOMB_X55_Y53_N16
\U_ALU|Mult0|auto_generated|le3a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(3) = (\switch[2]~input_o\ & ((\switch[3]~input_o\ $ (\switch[9]~input_o\)))) # (!\switch[2]~input_o\ & (!\switch[8]~input_o\ & (\switch[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(3));

-- Location: LCCOMB_X55_Y53_N12
\U_ALU|Mult0|auto_generated|le4a[5]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(5) = \switch[5]~input_o\ $ (((\switch[4]~input_o\ & \switch[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(5));

-- Location: LCCOMB_X56_Y53_N26
\U_ALU|Mult0|auto_generated|le3a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(2) = (\switch[2]~input_o\ & (\switch[3]~input_o\ $ ((\switch[8]~input_o\)))) # (!\switch[2]~input_o\ & (\switch[3]~input_o\ & ((!\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(2));

-- Location: LCCOMB_X55_Y53_N0
\U_ALU|Mult0|auto_generated|op_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~0_combout\ = (\U_ALU|Mult0|auto_generated|le4a\(5) & (\U_ALU|Mult0|auto_generated|le3a\(2) $ (VCC))) # (!\U_ALU|Mult0|auto_generated|le4a\(5) & (\U_ALU|Mult0|auto_generated|le3a\(2) & VCC))
-- \U_ALU|Mult0|auto_generated|op_1~1\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(5) & \U_ALU|Mult0|auto_generated|le3a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(5),
	datab => \U_ALU|Mult0|auto_generated|le3a\(2),
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~1\);

-- Location: LCCOMB_X55_Y53_N2
\U_ALU|Mult0|auto_generated|op_1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~2_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(3) & (!\U_ALU|Mult0|auto_generated|op_1~1\)) # (!\U_ALU|Mult0|auto_generated|le3a\(3) & ((\U_ALU|Mult0|auto_generated|op_1~1\) # (GND)))
-- \U_ALU|Mult0|auto_generated|op_1~3\ = CARRY((!\U_ALU|Mult0|auto_generated|op_1~1\) # (!\U_ALU|Mult0|auto_generated|le3a\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|le3a\(3),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~1\,
	combout => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~3\);

-- Location: LCCOMB_X56_Y53_N6
\U_ALU|Mult0|auto_generated|cs2a[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ = \switch[3]~input_o\ $ (\switch[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datad => \switch[4]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\);

-- Location: LCCOMB_X56_Y53_N24
\U_ALU|Mult0|auto_generated|le4a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(1) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) $ (((\switch[7]~input_o\))))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) & 
-- (!\switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|le4a\(5),
	datac => \switch[6]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(1));

-- Location: LCCOMB_X56_Y53_N28
\U_ALU|Mult0|auto_generated|le4a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(0) = \switch[5]~input_o\ $ (((\switch[4]~input_o\ & ((\switch[6]~input_o\) # (\switch[3]~input_o\))) # (!\switch[4]~input_o\ & (\switch[6]~input_o\ & \switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[6]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(0));

-- Location: LCCOMB_X55_Y53_N22
\U_ALU|Mult0|auto_generated|le3a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(1) = (\switch[2]~input_o\ & ((\switch[7]~input_o\ $ (\switch[3]~input_o\)))) # (!\switch[2]~input_o\ & (!\switch[6]~input_o\ & ((\switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[2]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(1));

-- Location: LCCOMB_X57_Y53_N14
\U_ALU|Mult0|auto_generated|le3a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(0) = \switch[3]~input_o\ $ (((\switch[2]~input_o\ & \switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[2]~input_o\,
	datac => \switch[6]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(0));

-- Location: LCCOMB_X56_Y53_N8
\U_ALU|Mult0|auto_generated|op_3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~0_combout\ = (\switch[3]~input_o\ & (\U_ALU|Mult0|auto_generated|le3a\(0) $ (VCC))) # (!\switch[3]~input_o\ & (\U_ALU|Mult0|auto_generated|le3a\(0) & VCC))
-- \U_ALU|Mult0|auto_generated|op_3~1\ = CARRY((\switch[3]~input_o\ & \U_ALU|Mult0|auto_generated|le3a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_ALU|Mult0|auto_generated|le3a\(0),
	datad => VCC,
	combout => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~1\);

-- Location: LCCOMB_X56_Y53_N10
\U_ALU|Mult0|auto_generated|op_3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~2_combout\ = (\U_ALU|Mult0|auto_generated|le3a\(1) & (!\U_ALU|Mult0|auto_generated|op_3~1\)) # (!\U_ALU|Mult0|auto_generated|le3a\(1) & ((\U_ALU|Mult0|auto_generated|op_3~1\) # (GND)))
-- \U_ALU|Mult0|auto_generated|op_3~3\ = CARRY((!\U_ALU|Mult0|auto_generated|op_3~1\) # (!\U_ALU|Mult0|auto_generated|le3a\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_ALU|Mult0|auto_generated|le3a\(1),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~1\,
	combout => \U_ALU|Mult0|auto_generated|op_3~2_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~3\);

-- Location: LCCOMB_X56_Y53_N12
\U_ALU|Mult0|auto_generated|op_3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~4_combout\ = ((\U_ALU|Mult0|auto_generated|op_1~0_combout\ $ (\U_ALU|Mult0|auto_generated|le4a\(0) $ (!\U_ALU|Mult0|auto_generated|op_3~3\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~5\ = CARRY((\U_ALU|Mult0|auto_generated|op_1~0_combout\ & ((\U_ALU|Mult0|auto_generated|le4a\(0)) # (!\U_ALU|Mult0|auto_generated|op_3~3\))) # (!\U_ALU|Mult0|auto_generated|op_1~0_combout\ & 
-- (\U_ALU|Mult0|auto_generated|le4a\(0) & !\U_ALU|Mult0|auto_generated|op_3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_1~0_combout\,
	datab => \U_ALU|Mult0|auto_generated|le4a\(0),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~3\,
	combout => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~5\);

-- Location: LCCOMB_X56_Y53_N14
\U_ALU|Mult0|auto_generated|op_3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~6_combout\ = (\U_ALU|Mult0|auto_generated|op_1~2_combout\ & ((\U_ALU|Mult0|auto_generated|le4a\(1) & (\U_ALU|Mult0|auto_generated|op_3~5\ & VCC)) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & 
-- (!\U_ALU|Mult0|auto_generated|op_3~5\)))) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & ((\U_ALU|Mult0|auto_generated|le4a\(1) & (!\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|le4a\(1) & ((\U_ALU|Mult0|auto_generated|op_3~5\) 
-- # (GND)))))
-- \U_ALU|Mult0|auto_generated|op_3~7\ = CARRY((\U_ALU|Mult0|auto_generated|op_1~2_combout\ & (!\U_ALU|Mult0|auto_generated|le4a\(1) & !\U_ALU|Mult0|auto_generated|op_3~5\)) # (!\U_ALU|Mult0|auto_generated|op_1~2_combout\ & 
-- ((!\U_ALU|Mult0|auto_generated|op_3~5\) # (!\U_ALU|Mult0|auto_generated|le4a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_1~2_combout\,
	datab => \U_ALU|Mult0|auto_generated|le4a\(1),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~5\,
	combout => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~7\);

-- Location: LCCOMB_X57_Y53_N18
\U_ALU|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~0_combout\ = (\switch[6]~input_o\ & (\switch[2]~input_o\ $ (VCC))) # (!\switch[6]~input_o\ & (\switch[2]~input_o\ & VCC))
-- \U_ALU|Add0~1\ = CARRY((\switch[6]~input_o\ & \switch[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[2]~input_o\,
	datad => VCC,
	combout => \U_ALU|Add0~0_combout\,
	cout => \U_ALU|Add0~1\);

-- Location: LCCOMB_X57_Y53_N20
\U_ALU|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~2_combout\ = (\switch[3]~input_o\ & ((\switch[7]~input_o\ & (\U_ALU|Add0~1\ & VCC)) # (!\switch[7]~input_o\ & (!\U_ALU|Add0~1\)))) # (!\switch[3]~input_o\ & ((\switch[7]~input_o\ & (!\U_ALU|Add0~1\)) # (!\switch[7]~input_o\ & ((\U_ALU|Add0~1\) 
-- # (GND)))))
-- \U_ALU|Add0~3\ = CARRY((\switch[3]~input_o\ & (!\switch[7]~input_o\ & !\U_ALU|Add0~1\)) # (!\switch[3]~input_o\ & ((!\U_ALU|Add0~1\) # (!\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[7]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~1\,
	combout => \U_ALU|Add0~2_combout\,
	cout => \U_ALU|Add0~3\);

-- Location: LCCOMB_X57_Y53_N22
\U_ALU|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~4_combout\ = ((\switch[4]~input_o\ $ (\switch[8]~input_o\ $ (!\U_ALU|Add0~3\)))) # (GND)
-- \U_ALU|Add0~5\ = CARRY((\switch[4]~input_o\ & ((\switch[8]~input_o\) # (!\U_ALU|Add0~3\))) # (!\switch[4]~input_o\ & (\switch[8]~input_o\ & !\U_ALU|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \switch[8]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~3\,
	combout => \U_ALU|Add0~4_combout\,
	cout => \U_ALU|Add0~5\);

-- Location: LCCOMB_X57_Y53_N24
\U_ALU|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~6_combout\ = (\switch[9]~input_o\ & ((\switch[5]~input_o\ & (\U_ALU|Add0~5\ & VCC)) # (!\switch[5]~input_o\ & (!\U_ALU|Add0~5\)))) # (!\switch[9]~input_o\ & ((\switch[5]~input_o\ & (!\U_ALU|Add0~5\)) # (!\switch[5]~input_o\ & ((\U_ALU|Add0~5\) 
-- # (GND)))))
-- \U_ALU|Add0~7\ = CARRY((\switch[9]~input_o\ & (!\switch[5]~input_o\ & !\U_ALU|Add0~5\)) # (!\switch[9]~input_o\ & ((!\U_ALU|Add0~5\) # (!\switch[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[9]~input_o\,
	datab => \switch[5]~input_o\,
	datad => VCC,
	cin => \U_ALU|Add0~5\,
	combout => \U_ALU|Add0~6_combout\,
	cout => \U_ALU|Add0~7\);

-- Location: LCCOMB_X57_Y53_N8
\U_ALU|Mux0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~20_combout\ = (\switch[0]~input_o\ & (((\button[1]~input_o\)))) # (!\switch[0]~input_o\ & ((\button[1]~input_o\ & (\U_ALU|Mult0|auto_generated|op_3~6_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_3~6_combout\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Add0~6_combout\,
	combout => \U_ALU|Mux0~20_combout\);

-- Location: LCCOMB_X57_Y53_N10
\U_ALU|Mux0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~21_combout\ = \U_ALU|Mux0~20_combout\ $ (((\switch[0]~input_o\ & ((\switch[5]~input_o\) # (\switch[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \U_ALU|Mux0~20_combout\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~21_combout\);

-- Location: LCCOMB_X56_Y52_N26
\U_ALU|Mux0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~17_combout\ = (\switch[1]~input_o\ & (((\button[0]~input_o\)))) # (!\switch[1]~input_o\ & ((\button[0]~input_o\ & (\U_ALU|Mux0~23_combout\)) # (!\button[0]~input_o\ & ((\U_ALU|Mux0~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~23_combout\,
	datab => \switch[1]~input_o\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux0~21_combout\,
	combout => \U_ALU|Mux0~17_combout\);

-- Location: LCCOMB_X56_Y52_N4
\U_ALU|Mux0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~18_combout\ = (!\switch[0]~input_o\ & (\switch[6]~input_o\ & \button[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \button[1]~input_o\,
	combout => \U_ALU|Mux0~18_combout\);

-- Location: LCCOMB_X56_Y52_N8
\U_ALU|Mux0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~16_combout\ = (!\switch[0]~input_o\ & ((\button[1]~input_o\ & ((\switch[7]~input_o\))) # (!\button[1]~input_o\ & (\switch[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[8]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~16_combout\);

-- Location: LCCOMB_X56_Y52_N30
\U_ALU|Mux0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~19_combout\ = (\U_ALU|Mux0~17_combout\ & ((\U_ALU|Mux0~18_combout\) # ((!\switch[1]~input_o\)))) # (!\U_ALU|Mux0~17_combout\ & (((\U_ALU|Mux0~16_combout\ & \switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~17_combout\,
	datab => \U_ALU|Mux0~18_combout\,
	datac => \U_ALU|Mux0~16_combout\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux0~19_combout\);

-- Location: LCCOMB_X57_Y53_N30
\U_ALU|Mux0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~28_combout\ = (\switch[0]~input_o\ & (((\button[1]~input_o\)))) # (!\switch[0]~input_o\ & ((\button[1]~input_o\ & (\U_ALU|Mult0|auto_generated|op_3~2_combout\)) # (!\button[1]~input_o\ & ((\U_ALU|Add0~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_3~2_combout\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Add0~2_combout\,
	combout => \U_ALU|Mux0~28_combout\);

-- Location: LCCOMB_X56_Y53_N4
\U_ALU|Mux0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~29_combout\ = \U_ALU|Mux0~28_combout\ $ (((\switch[0]~input_o\ & ((\switch[3]~input_o\) # (\switch[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_ALU|Mux0~28_combout\,
	datac => \switch[0]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mux0~29_combout\);

-- Location: LCCOMB_X57_Y52_N10
\U_ALU|Mux0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~30_combout\ = (\switch[0]~input_o\ & (\switch[7]~input_o\ $ (((\switch[3]~input_o\) # (\button[1]~input_o\))))) # (!\switch[0]~input_o\ & (((\switch[3]~input_o\ & \switch[7]~input_o\)) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[7]~input_o\,
	combout => \U_ALU|Mux0~30_combout\);

-- Location: LCCOMB_X57_Y52_N28
\U_ALU|Mux0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~31_combout\ = (\U_ALU|Mux0~30_combout\ & ((\switch[0]~input_o\) # ((\button[1]~input_o\) # (\U_ALU|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~30_combout\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Add1~2_combout\,
	combout => \U_ALU|Mux0~31_combout\);

-- Location: LCCOMB_X56_Y52_N10
\U_ALU|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~0_combout\ = (\switch[1]~input_o\ & (((\button[0]~input_o\)))) # (!\switch[1]~input_o\ & ((\button[0]~input_o\ & ((\U_ALU|Mux0~31_combout\))) # (!\button[0]~input_o\ & (\U_ALU|Mux0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~29_combout\,
	datab => \switch[1]~input_o\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux0~31_combout\,
	combout => \U_ALU|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y52_N28
\U_ALU|Mux0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~13_combout\ = (\switch[8]~input_o\ & !\switch[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[8]~input_o\,
	datac => \switch[0]~input_o\,
	combout => \U_ALU|Mux0~13_combout\);

-- Location: LCCOMB_X56_Y52_N24
\U_ALU|Mux0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~12_combout\ = (\switch[0]~input_o\ & (((!\button[1]~input_o\ & \switch[9]~input_o\)))) # (!\switch[0]~input_o\ & ((\button[1]~input_o\ & ((\switch[9]~input_o\))) # (!\button[1]~input_o\ & (\switch[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~12_combout\);

-- Location: LCCOMB_X56_Y52_N14
\U_ALU|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux2~1_combout\ = (\U_ALU|Mux2~0_combout\ & ((\U_ALU|Mux0~13_combout\) # ((!\switch[1]~input_o\)))) # (!\U_ALU|Mux2~0_combout\ & (((\U_ALU|Mux0~12_combout\ & \switch[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux2~0_combout\,
	datab => \U_ALU|Mux0~13_combout\,
	datac => \U_ALU|Mux0~12_combout\,
	datad => \switch[1]~input_o\,
	combout => \U_ALU|Mux2~1_combout\);

-- Location: LCCOMB_X57_Y52_N0
\U_ALU|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~6_combout\ = (\switch[0]~input_o\ & (((!\switch[6]~input_o\) # (!\button[1]~input_o\)))) # (!\switch[0]~input_o\ & (\switch[2]~input_o\ & (\button[1]~input_o\ & \switch[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mux0~6_combout\);

-- Location: LCCOMB_X57_Y52_N26
\U_ALU|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~7_combout\ = (\U_ALU|Mux0~6_combout\ & (((\button[1]~input_o\) # (\U_ALU|Add0~0_combout\)))) # (!\U_ALU|Mux0~6_combout\ & (\U_ALU|Add1~0_combout\ & (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Add1~0_combout\,
	datab => \U_ALU|Mux0~6_combout\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Add0~0_combout\,
	combout => \U_ALU|Mux0~7_combout\);

-- Location: LCCOMB_X57_Y52_N12
\U_ALU|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~9_combout\ = \button[1]~input_o\ $ (((\switch[0]~input_o\ & ((\switch[2]~input_o\) # (\switch[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[2]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[6]~input_o\,
	combout => \U_ALU|Mux0~9_combout\);

-- Location: LCCOMB_X57_Y52_N14
\U_ALU|Mux0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~10_combout\ = (\U_ALU|Mux0~9_combout\ & ((\switch[0]~input_o\) # ((\U_ALU|Mult0|auto_generated|op_3~0_combout\)))) # (!\U_ALU|Mux0~9_combout\ & (!\switch[0]~input_o\ & ((\U_ALU|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~9_combout\,
	datab => \switch[0]~input_o\,
	datac => \U_ALU|Mult0|auto_generated|op_3~0_combout\,
	datad => \U_ALU|Add0~0_combout\,
	combout => \U_ALU|Mux0~10_combout\);

-- Location: LCCOMB_X56_Y52_N0
\U_ALU|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~8_combout\ = (\switch[8]~input_o\ & (\switch[0]~input_o\ $ (\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[8]~input_o\,
	datac => \button[1]~input_o\,
	combout => \U_ALU|Mux0~8_combout\);

-- Location: LCCOMB_X56_Y52_N18
\U_ALU|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~0_combout\ = (\button[0]~input_o\ & (\switch[1]~input_o\)) # (!\button[0]~input_o\ & ((\switch[1]~input_o\ & ((\U_ALU|Mux0~8_combout\))) # (!\switch[1]~input_o\ & (\U_ALU|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[0]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \U_ALU|Mux0~10_combout\,
	datad => \U_ALU|Mux0~8_combout\,
	combout => \U_ALU|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y52_N20
\U_ALU|Mux0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~11_combout\ = (!\switch[0]~input_o\ & ((\button[1]~input_o\ & ((\switch[9]~input_o\))) # (!\button[1]~input_o\ & (\switch[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~11_combout\);

-- Location: LCCOMB_X56_Y52_N6
\U_ALU|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux3~1_combout\ = (\U_ALU|Mux3~0_combout\ & (((\U_ALU|Mux0~11_combout\) # (!\button[0]~input_o\)))) # (!\U_ALU|Mux3~0_combout\ & (\U_ALU|Mux0~7_combout\ & (\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~7_combout\,
	datab => \U_ALU|Mux3~0_combout\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux0~11_combout\,
	combout => \U_ALU|Mux3~1_combout\);

-- Location: LCCOMB_X56_Y52_N12
\U_ALU|Mux0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~15_combout\ = (!\switch[0]~input_o\ & ((\button[1]~input_o\ & (\switch[7]~input_o\)) # (!\button[1]~input_o\ & ((\switch[9]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[7]~input_o\,
	datac => \button[1]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux0~15_combout\);

-- Location: LCCOMB_X57_Y53_N28
\U_ALU|Mux0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~24_combout\ = (\button[1]~input_o\ & ((\switch[0]~input_o\) # ((\U_ALU|Mult0|auto_generated|op_3~4_combout\)))) # (!\button[1]~input_o\ & (!\switch[0]~input_o\ & (\U_ALU|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \U_ALU|Add0~4_combout\,
	datad => \U_ALU|Mult0|auto_generated|op_3~4_combout\,
	combout => \U_ALU|Mux0~24_combout\);

-- Location: LCCOMB_X57_Y52_N4
\U_ALU|Mux0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~25_combout\ = \U_ALU|Mux0~24_combout\ $ (((\switch[0]~input_o\ & ((\switch[8]~input_o\) # (\switch[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[0]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \U_ALU|Mux0~24_combout\,
	combout => \U_ALU|Mux0~25_combout\);

-- Location: LCCOMB_X56_Y52_N16
\U_ALU|Mux0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~14_combout\ = (!\switch[0]~input_o\ & ((\button[1]~input_o\ & (\switch[6]~input_o\)) # (!\button[1]~input_o\ & ((\switch[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[0]~input_o\,
	datab => \switch[6]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \button[1]~input_o\,
	combout => \U_ALU|Mux0~14_combout\);

-- Location: LCCOMB_X56_Y52_N2
\U_ALU|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~0_combout\ = (\switch[1]~input_o\ & (((\button[0]~input_o\) # (\U_ALU|Mux0~14_combout\)))) # (!\switch[1]~input_o\ & (\U_ALU|Mux0~25_combout\ & (!\button[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~25_combout\,
	datab => \switch[1]~input_o\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux0~14_combout\,
	combout => \U_ALU|Mux1~0_combout\);

-- Location: LCCOMB_X57_Y52_N6
\U_ALU|Mux0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~26_combout\ = (\switch[0]~input_o\ & (\switch[8]~input_o\ $ (((\button[1]~input_o\) # (\switch[4]~input_o\))))) # (!\switch[0]~input_o\ & (((\switch[4]~input_o\ & \switch[8]~input_o\)) # (!\button[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \switch[4]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux0~26_combout\);

-- Location: LCCOMB_X57_Y52_N24
\U_ALU|Mux0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux0~27_combout\ = (\U_ALU|Mux0~26_combout\ & ((\switch[0]~input_o\) # ((\button[1]~input_o\) # (\U_ALU|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~26_combout\,
	datab => \switch[0]~input_o\,
	datac => \button[1]~input_o\,
	datad => \U_ALU|Add1~4_combout\,
	combout => \U_ALU|Mux0~27_combout\);

-- Location: LCCOMB_X56_Y52_N22
\U_ALU|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux1~1_combout\ = (\U_ALU|Mux1~0_combout\ & ((\U_ALU|Mux0~15_combout\) # ((!\button[0]~input_o\)))) # (!\U_ALU|Mux1~0_combout\ & (((\button[0]~input_o\ & \U_ALU|Mux0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~15_combout\,
	datab => \U_ALU|Mux1~0_combout\,
	datac => \button[0]~input_o\,
	datad => \U_ALU|Mux0~27_combout\,
	combout => \U_ALU|Mux1~1_combout\);

-- Location: LCCOMB_X59_Y52_N0
\U_LED0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux6~0_combout\ = (\U_ALU|Mux0~19_combout\ & (\U_ALU|Mux3~1_combout\ & (\U_ALU|Mux2~1_combout\ $ (\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux0~19_combout\ & (!\U_ALU|Mux2~1_combout\ & (\U_ALU|Mux3~1_combout\ $ (\U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~19_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_LED0|Mux6~0_combout\);

-- Location: LCCOMB_X59_Y52_N10
\U_LED0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux5~0_combout\ = (\U_ALU|Mux0~19_combout\ & ((\U_ALU|Mux3~1_combout\ & (\U_ALU|Mux2~1_combout\)) # (!\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux1~1_combout\))))) # (!\U_ALU|Mux0~19_combout\ & (\U_ALU|Mux1~1_combout\ & (\U_ALU|Mux2~1_combout\ $ 
-- (\U_ALU|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~19_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_LED0|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y52_N4
\U_LED0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux4~0_combout\ = (\U_ALU|Mux0~19_combout\ & (\U_ALU|Mux1~1_combout\ & ((\U_ALU|Mux2~1_combout\) # (!\U_ALU|Mux3~1_combout\)))) # (!\U_ALU|Mux0~19_combout\ & (\U_ALU|Mux2~1_combout\ & (!\U_ALU|Mux3~1_combout\ & !\U_ALU|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~19_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_LED0|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y52_N6
\U_LED0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux3~0_combout\ = (\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux2~1_combout\ $ (!\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux0~19_combout\ & (\U_ALU|Mux2~1_combout\ & !\U_ALU|Mux1~1_combout\)) # (!\U_ALU|Mux0~19_combout\ & 
-- (!\U_ALU|Mux2~1_combout\ & \U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~19_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_LED0|Mux3~0_combout\);

-- Location: LCCOMB_X59_Y52_N24
\U_LED0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux2~0_combout\ = (\U_ALU|Mux2~1_combout\ & (!\U_ALU|Mux0~19_combout\ & (\U_ALU|Mux3~1_combout\))) # (!\U_ALU|Mux2~1_combout\ & ((\U_ALU|Mux1~1_combout\ & (!\U_ALU|Mux0~19_combout\)) # (!\U_ALU|Mux1~1_combout\ & ((\U_ALU|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~19_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_LED0|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y52_N26
\U_LED0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux1~0_combout\ = (\U_ALU|Mux2~1_combout\ & (!\U_ALU|Mux0~19_combout\ & ((\U_ALU|Mux3~1_combout\) # (!\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux2~1_combout\ & (\U_ALU|Mux3~1_combout\ & (\U_ALU|Mux0~19_combout\ $ (!\U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~19_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_LED0|Mux1~0_combout\);

-- Location: LCCOMB_X59_Y52_N20
\U_LED0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_LED0|Mux0~0_combout\ = (\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux0~19_combout\) # (\U_ALU|Mux2~1_combout\ $ (\U_ALU|Mux1~1_combout\)))) # (!\U_ALU|Mux3~1_combout\ & ((\U_ALU|Mux2~1_combout\) # (\U_ALU|Mux0~19_combout\ $ (\U_ALU|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mux0~19_combout\,
	datab => \U_ALU|Mux2~1_combout\,
	datac => \U_ALU|Mux3~1_combout\,
	datad => \U_ALU|Mux1~1_combout\,
	combout => \U_LED0|Mux0~0_combout\);

-- Location: LCCOMB_X55_Y53_N14
\U_ALU|Mult0|auto_generated|le5a[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(0) = (\switch[6]~input_o\ & ((\switch[5]~input_o\) # ((\switch[4]~input_o\ & \switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[6]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(0));

-- Location: LCCOMB_X55_Y53_N18
\U_ALU|Mult0|auto_generated|le3a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le3a\(4) = (\switch[3]~input_o\ & ((\switch[2]~input_o\) # (!\switch[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch[3]~input_o\,
	datac => \switch[2]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le3a\(4));

-- Location: LCCOMB_X55_Y53_N28
\U_ALU|Mult0|auto_generated|le4a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(2) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) $ (((\switch[8]~input_o\))))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) & 
-- (!\switch[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(5),
	datab => \switch[7]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(2));

-- Location: LCCOMB_X55_Y53_N4
\U_ALU|Mult0|auto_generated|op_1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~4_combout\ = ((\U_ALU|Mult0|auto_generated|le3a\(4) $ (\U_ALU|Mult0|auto_generated|le4a\(2) $ (!\U_ALU|Mult0|auto_generated|op_1~3\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_1~5\ = CARRY((\U_ALU|Mult0|auto_generated|le3a\(4) & ((\U_ALU|Mult0|auto_generated|le4a\(2)) # (!\U_ALU|Mult0|auto_generated|op_1~3\))) # (!\U_ALU|Mult0|auto_generated|le3a\(4) & (\U_ALU|Mult0|auto_generated|le4a\(2) & 
-- !\U_ALU|Mult0|auto_generated|op_1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le3a\(4),
	datab => \U_ALU|Mult0|auto_generated|le4a\(2),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~3\,
	combout => \U_ALU|Mult0|auto_generated|op_1~4_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~5\);

-- Location: LCCOMB_X56_Y53_N16
\U_ALU|Mult0|auto_generated|op_3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~8_combout\ = ((\U_ALU|Mult0|auto_generated|le5a\(0) $ (\U_ALU|Mult0|auto_generated|op_1~4_combout\ $ (!\U_ALU|Mult0|auto_generated|op_3~7\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~9\ = CARRY((\U_ALU|Mult0|auto_generated|le5a\(0) & ((\U_ALU|Mult0|auto_generated|op_1~4_combout\) # (!\U_ALU|Mult0|auto_generated|op_3~7\))) # (!\U_ALU|Mult0|auto_generated|le5a\(0) & 
-- (\U_ALU|Mult0|auto_generated|op_1~4_combout\ & !\U_ALU|Mult0|auto_generated|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le5a\(0),
	datab => \U_ALU|Mult0|auto_generated|op_1~4_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~7\,
	combout => \U_ALU|Mult0|auto_generated|op_3~8_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~9\);

-- Location: LCCOMB_X56_Y53_N2
\U_ALU|Mult0|auto_generated|le4a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(3) = (\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) $ ((\switch[9]~input_o\)))) # (!\U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\ & (\U_ALU|Mult0|auto_generated|le4a\(5) & 
-- ((!\switch[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(5),
	datab => \switch[9]~input_o\,
	datac => \switch[8]~input_o\,
	datad => \U_ALU|Mult0|auto_generated|cs2a[1]~0_combout\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(3));

-- Location: LCCOMB_X55_Y53_N24
\U_ALU|Mult0|auto_generated|le5a[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(1) = (\switch[7]~input_o\ & ((\switch[5]~input_o\) # ((\switch[4]~input_o\ & \switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[4]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[7]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(1));

-- Location: LCCOMB_X55_Y53_N6
\U_ALU|Mult0|auto_generated|op_1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~6_combout\ = (\U_ALU|Mult0|auto_generated|le4a\(3) & ((\U_ALU|Mult0|auto_generated|le5a\(1) & (\U_ALU|Mult0|auto_generated|op_1~5\ & VCC)) # (!\U_ALU|Mult0|auto_generated|le5a\(1) & 
-- (!\U_ALU|Mult0|auto_generated|op_1~5\)))) # (!\U_ALU|Mult0|auto_generated|le4a\(3) & ((\U_ALU|Mult0|auto_generated|le5a\(1) & (!\U_ALU|Mult0|auto_generated|op_1~5\)) # (!\U_ALU|Mult0|auto_generated|le5a\(1) & ((\U_ALU|Mult0|auto_generated|op_1~5\) # 
-- (GND)))))
-- \U_ALU|Mult0|auto_generated|op_1~7\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(3) & (!\U_ALU|Mult0|auto_generated|le5a\(1) & !\U_ALU|Mult0|auto_generated|op_1~5\)) # (!\U_ALU|Mult0|auto_generated|le4a\(3) & ((!\U_ALU|Mult0|auto_generated|op_1~5\) # 
-- (!\U_ALU|Mult0|auto_generated|le5a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(3),
	datab => \U_ALU|Mult0|auto_generated|le5a\(1),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~5\,
	combout => \U_ALU|Mult0|auto_generated|op_1~6_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~7\);

-- Location: LCCOMB_X56_Y53_N18
\U_ALU|Mult0|auto_generated|op_3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~10_combout\ = (\switch[3]~input_o\ & ((\U_ALU|Mult0|auto_generated|op_1~6_combout\ & (\U_ALU|Mult0|auto_generated|op_3~9\ & VCC)) # (!\U_ALU|Mult0|auto_generated|op_1~6_combout\ & (!\U_ALU|Mult0|auto_generated|op_3~9\)))) 
-- # (!\switch[3]~input_o\ & ((\U_ALU|Mult0|auto_generated|op_1~6_combout\ & (!\U_ALU|Mult0|auto_generated|op_3~9\)) # (!\U_ALU|Mult0|auto_generated|op_1~6_combout\ & ((\U_ALU|Mult0|auto_generated|op_3~9\) # (GND)))))
-- \U_ALU|Mult0|auto_generated|op_3~11\ = CARRY((\switch[3]~input_o\ & (!\U_ALU|Mult0|auto_generated|op_1~6_combout\ & !\U_ALU|Mult0|auto_generated|op_3~9\)) # (!\switch[3]~input_o\ & ((!\U_ALU|Mult0|auto_generated|op_3~9\) # 
-- (!\U_ALU|Mult0|auto_generated|op_1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_ALU|Mult0|auto_generated|op_1~6_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~9\,
	combout => \U_ALU|Mult0|auto_generated|op_3~10_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~11\);

-- Location: LCCOMB_X55_Y53_N30
\U_ALU|Mult0|auto_generated|le5a[3]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(3) = (\switch[9]~input_o\ & ((\switch[5]~input_o\) # ((\switch[3]~input_o\ & \switch[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(3));

-- Location: LCCOMB_X55_Y53_N26
\U_ALU|Mult0|auto_generated|le4a[4]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le4a\(4) = (\switch[9]~input_o\ & (\switch[5]~input_o\ & (\switch[3]~input_o\ $ (\switch[4]~input_o\)))) # (!\switch[9]~input_o\ & (\switch[5]~input_o\ $ (((\switch[3]~input_o\ & \switch[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[5]~input_o\,
	datab => \switch[3]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le4a\(4));

-- Location: LCCOMB_X55_Y53_N20
\U_ALU|Mult0|auto_generated|le5a[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|le5a\(2) = (\switch[8]~input_o\ & ((\switch[5]~input_o\) # ((\switch[4]~input_o\ & \switch[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \switch[8]~input_o\,
	datab => \switch[5]~input_o\,
	datac => \switch[4]~input_o\,
	datad => \switch[3]~input_o\,
	combout => \U_ALU|Mult0|auto_generated|le5a\(2));

-- Location: LCCOMB_X55_Y53_N8
\U_ALU|Mult0|auto_generated|op_1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~8_combout\ = ((\U_ALU|Mult0|auto_generated|le4a\(4) $ (\U_ALU|Mult0|auto_generated|le5a\(2) $ (!\U_ALU|Mult0|auto_generated|op_1~7\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_1~9\ = CARRY((\U_ALU|Mult0|auto_generated|le4a\(4) & ((\U_ALU|Mult0|auto_generated|le5a\(2)) # (!\U_ALU|Mult0|auto_generated|op_1~7\))) # (!\U_ALU|Mult0|auto_generated|le4a\(4) & (\U_ALU|Mult0|auto_generated|le5a\(2) & 
-- !\U_ALU|Mult0|auto_generated|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le4a\(4),
	datab => \U_ALU|Mult0|auto_generated|le5a\(2),
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_1~7\,
	combout => \U_ALU|Mult0|auto_generated|op_1~8_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_1~9\);

-- Location: LCCOMB_X55_Y53_N10
\U_ALU|Mult0|auto_generated|op_1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_1~10_combout\ = \U_ALU|Mult0|auto_generated|le5a\(3) $ (\U_ALU|Mult0|auto_generated|op_1~9\ $ (!\U_ALU|Mult0|auto_generated|le4a\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|le5a\(3),
	datad => \U_ALU|Mult0|auto_generated|le4a\(5),
	cin => \U_ALU|Mult0|auto_generated|op_1~9\,
	combout => \U_ALU|Mult0|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X56_Y53_N20
\U_ALU|Mult0|auto_generated|op_3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~12_combout\ = ((\switch[3]~input_o\ $ (\U_ALU|Mult0|auto_generated|op_1~8_combout\ $ (!\U_ALU|Mult0|auto_generated|op_3~11\)))) # (GND)
-- \U_ALU|Mult0|auto_generated|op_3~13\ = CARRY((\switch[3]~input_o\ & ((\U_ALU|Mult0|auto_generated|op_1~8_combout\) # (!\U_ALU|Mult0|auto_generated|op_3~11\))) # (!\switch[3]~input_o\ & (\U_ALU|Mult0|auto_generated|op_1~8_combout\ & 
-- !\U_ALU|Mult0|auto_generated|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datab => \U_ALU|Mult0|auto_generated|op_1~8_combout\,
	datad => VCC,
	cin => \U_ALU|Mult0|auto_generated|op_3~11\,
	combout => \U_ALU|Mult0|auto_generated|op_3~12_combout\,
	cout => \U_ALU|Mult0|auto_generated|op_3~13\);

-- Location: LCCOMB_X56_Y53_N22
\U_ALU|Mult0|auto_generated|op_3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mult0|auto_generated|op_3~14_combout\ = \switch[3]~input_o\ $ (\U_ALU|Mult0|auto_generated|op_3~13\ $ (!\U_ALU|Mult0|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \switch[3]~input_o\,
	datad => \U_ALU|Mult0|auto_generated|op_1~10_combout\,
	cin => \U_ALU|Mult0|auto_generated|op_3~13\,
	combout => \U_ALU|Mult0|auto_generated|op_3~14_combout\);

-- Location: LCCOMB_X56_Y53_N0
\U_ALU|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~1_combout\ = (\U_ALU|Mult0|auto_generated|op_3~8_combout\) # ((\U_ALU|Mult0|auto_generated|op_3~10_combout\) # ((\U_ALU|Mult0|auto_generated|op_3~14_combout\) # (\U_ALU|Mult0|auto_generated|op_3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_ALU|Mult0|auto_generated|op_3~8_combout\,
	datab => \U_ALU|Mult0|auto_generated|op_3~10_combout\,
	datac => \U_ALU|Mult0|auto_generated|op_3~14_combout\,
	datad => \U_ALU|Mult0|auto_generated|op_3~12_combout\,
	combout => \U_ALU|Mux4~1_combout\);

-- Location: LCCOMB_X57_Y53_N26
\U_ALU|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Add0~8_combout\ = !\U_ALU|Add0~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \U_ALU|Add0~7\,
	combout => \U_ALU|Add0~8_combout\);

-- Location: LCCOMB_X57_Y53_N16
\U_ALU|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~0_combout\ = (!\button[1]~input_o\ & ((\switch[1]~input_o\ & ((\switch[9]~input_o\))) # (!\switch[1]~input_o\ & (\U_ALU|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \U_ALU|Add0~8_combout\,
	datad => \switch[9]~input_o\,
	combout => \U_ALU|Mux4~0_combout\);

-- Location: LCCOMB_X57_Y53_N2
\U_ALU|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~2_combout\ = (\U_ALU|Mux4~0_combout\) # ((\button[1]~input_o\ & (!\switch[1]~input_o\ & \U_ALU|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \button[1]~input_o\,
	datab => \switch[1]~input_o\,
	datac => \U_ALU|Mux4~1_combout\,
	datad => \U_ALU|Mux4~0_combout\,
	combout => \U_ALU|Mux4~2_combout\);

-- Location: LCCOMB_X57_Y53_N4
\U_ALU|Mux4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \U_ALU|Mux4~3_combout\ = (!\button[0]~input_o\ & (\U_ALU|Mux4~2_combout\ & !\switch[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \button[0]~input_o\,
	datac => \U_ALU|Mux4~2_combout\,
	datad => \switch[0]~input_o\,
	combout => \U_ALU|Mux4~3_combout\);

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


