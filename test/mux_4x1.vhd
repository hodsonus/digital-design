-- Greg Stitt
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;

entity mux_4x1 is
	port(
		input : in std_logic_vector(3 downto 0);
		sel : in std_logic_vector(1 downto 0);
		output : out std_logic
	);
end mux_4x1;

architecture STR of mux_4x1 is

	signal mux1_out, mux2_out : std_logic;

begin
	U_MUX1 : entity work.mux_2x1 port map (
		in1 => input(3),
		in2 => input(2),
		sel => sel(0),
		output => mux1_out
	);
	
	U_MUX2 : entity work.mux_2x1 port map (
		in1 => input(1),
		in2 => input(0),
		sel => sel(0),
		output => mux2_out
	);
	
	U_MUX3 : entity work.mux_2x1 port map (
		in1 => mux1_out,
		in2 => mux2_out,
		sel => sel(1),
		output => output
	);
	
end STR;


architecture STR2 of mux_4x1 is

	component mux_2x1
	port(
		in1 : in std_logic;
		in2 : in std_logic;
		sel : in std_logic;
		output : out std_logic
	);
	end component;

	signal mux1_out, mux2_out : std_logic;

begin
	U_MUX1 : mux_2x1 port map (
		in1 => input(3),
		in2 => input(2),
		sel => sel(0),
		output => mux1_out
	);
	
	U_MUX2 : mux_2x1 port map (
		in1 => input(1),
		in2 => input(0),
		sel => sel(0),
		output => mux2_out
	);
	
	U_MUX3 : mux_2x1 port map (
		in1 => mux1_out,
		in2 => mux2_out,
		sel => sel(1),
		output => output
	);
	
end STR2;