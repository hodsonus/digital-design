-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity top_level_tb is
end top_level_tb;

architecture TB of top_level_tb is

    signal done      : std_logic := '0';
    signal clk       : std_logic := '0';

    signal switches  : std_logic_vector(9 downto 0) := "0000000000";
    signal buttons   : std_logic_vector(1 downto 0) := "11";
    
    signal led       : std_logic_vector(9 downto 0);
    signal led0      : std_logic_vector(6 downto 0);
    signal led0_dp   : std_logic;
    signal led1      : std_logic_vector(6 downto 0);
    signal led1_dp   : std_logic;
    signal led2      : std_logic_vector(6 downto 0);
    signal led2_dp   : std_logic;
    signal led3      : std_logic_vector(6 downto 0);
    signal led3_dp   : std_logic;
    signal led4      : std_logic_vector(6 downto 0);
    signal led4_dp   : std_logic;
    signal led5      : std_logic_vector(6 downto 0);
    signal led5_dp   : std_logic;

begin --TB

    -- 50 MHz clk
    clk <= (not clk) and (not done) after 10 ns;

    UUT: entity work.top_level
        port map (
            clk50MHz => clk,

            switches => switches,
            buttons  => buttons,

            led      => led,
            led0     => led0,
            led0_dp  => led0_dp,
            led1     => led1,
            led1_dp  => led1_dp,
            led2     => led2,
            led2_dp  => led2_dp,
            led3     => led3,
            led3_dp  => led3_dp,
            led4     => led4,
            led4_dp  => led4_dp,
            led5     => led5,
            led5_dp  => led5_dp
        );

    process
    begin

        done <= '0';

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        switches <= "1010101010";
        buttons(0) <= '0';

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        buttons(0) <= '1';

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        switches <= "0010101010";
        buttons(0) <= '0';

        wait until rising_edge(clk);
        wait until rising_edge(clk);

        buttons(0) <= '1';

        wait until rising_edge(clk);
        wait until rising_edge(clk);


        buttons(1) <= '0'; -- begin resetting
        for i in 0 to 9 loop
            wait until rising_edge(clk); -- wait for 10 cycles
        end loop;
        buttons(1) <= '1'; -- stop resetting

        -- the program should execute now

        for i in 0 to 10000 loop
            wait until rising_edge(clk); -- wait for 10 cycles
        end loop;
        done <= '1';
        report "DONE!!!!!!" severity note;
        wait;
    end process;
end TB;