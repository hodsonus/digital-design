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

        wait until clk = '1';
        assert(output = "0000") report "Error!" severity failure;
        
        wait until clk = '1';
        assert(output = "0001") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "0011") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "0010") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "0110") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "0111") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "0101") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "0100") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1100") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1101") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1111") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1110") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1010") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1011") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1001") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "1000") report "Error!" severity failure;

        wait until clk = '1';
        assert(output = "0000") report "Error!" severity failure;

        done <= '1';    
    
    wait;
    end process;
end TB;