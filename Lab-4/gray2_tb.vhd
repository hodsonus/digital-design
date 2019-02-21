library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gray2_tb is
end gray2_tb;

architecture TB of gray2_tb is

    signal clk:    std_logic := '0';
    signal rst:    std_logic;
    signal output: std_logic_vector(3 downto 0);

    signal done     : std_logic := '0';

begin  -- TB

    U_GRAY_2 : entity work.gray2
    port map (
        clk => clk,
        rst => rst,
        output => output);

    clk <= not clk and not done after 10 ns;

    process
        --declare variables here

    begin
        rst <= '1';
        wait for 100 ns;
        rst <= '0';

        --do ur thang now sweaty
    
    
    wait;
    end process;
end TB;