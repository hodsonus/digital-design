library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_div is
    generic(clk_in_freq  : natural;
            clk_out_freq : natural);
    port (
        clk_in  : in  std_logic;
        clk_out : out std_logic;
        rst     : in  std_logic);
end clk_div;

architecture BHV Of clk_div is

    signal count : integer;
    signal ratio : integer;

begin --BHV
    ratio <= clk_in_freq / clk_out_freq-1;
    process(clk_in, rst)
    begin
        if (rst = '1') then
            count <= 0;
            clk_out <= '0';
        elsif (rising_edge(clk_in)) then
            count <= count + 1;
            if (count = ratio) then
                count <= 0;
                clk_out <= '1';
            else
                clk_out <= '0';
            end if;
        end if;
    end process;
end BHV;

--50% duty cycle means that the clock is both high and low 50% of the time
--we dont really care about the duty cycle too much, only that the rising edge occurs when it should
--the only thing that really matters is the ratio of the clk frequencies
--we can do this by using a counter
--count from 0 up to that ratio (or that ratio-1, depending on implementation) and then assert and deassert the clock
--use sequential logic bc it has state
--TEST THE CLK DIVIDER ON YOUR OWN. THE TB DOES NOT ASSERT NOR DOES IT PRINT WARNINGS/ERRORS
--USE TWO CURSORS ON THE TB AND SEE IF THE TIME INBETWEEN THEM IS THE TIME THAT WAS REQUESTED. FOR THE FINAL BOARD DESIGN, IF IT IS NOT 1MS, THEN IT IS NOT WORKING.
--USE 'NEXT EVENT' BUTTON IN THE TOP RIGHT ON THE BOARD
--USE THE ADD BUTTON IN THE SIGNALS MENU TO ADD ANOTHER CURSOR
--use the search feature
--the basic idea is:

--ratio = infreq/outfreq
--if (rst = 1)
--      count=0
--else(rising_edge(clk))
--      count++
--      if(cnt = ratio)
--              output = 1
--              cnt = 0
--      else
--              output = 0

--this is not the final design