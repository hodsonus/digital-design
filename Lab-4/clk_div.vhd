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
--the below also handles swith bouncing
--you must handle the case that a button is pressed inbetween clock cycles. this will result in the delay of 1ms
--the trick is to realize that a continued button press results in waiting for slightly more than when teh button press is for the next 1 Hz clocks
--when you have to reset the count, reset it one less than what 

--                                                                                  clk_gen
--           -------------------------------------------------------------------------------
--          |                                                                               |
--   50 MHz |    -------    1000 Hz    --------------------------------------      1 Hz     |
--  ----------> |  clk  | ----------> |  another counter entity that checks  | --------------->  state machines
--          |   |  div  |             |  checks the status of a button press |              |
--          |    -------               --------------------------------------               |
--          |                                            ^                                  |
--          |                                            |                                  |
--           -------------------------------------------------------------------------------
--                                                       |
--                                                     button