library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_tb is
end counter_tb;

architecture TB of counter_tb is

    signal clk   : std_logic := '0';
    signal rst   : std_logic;
    signal up_n  : std_logic;  -- active low
    signal load_n: std_logic;  -- active low
    signal input : std_logic_vector(3 downto 0);
    signal output: std_logic_vector(3 downto 0);

    signal done     : std_logic := '0';

begin  -- TB

    U_COUNTER : entity work.counter
    port map (
        clk => clk,
        rst => rst,
        up_n => up_n,
        load_n => load_n,
        input => input,
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