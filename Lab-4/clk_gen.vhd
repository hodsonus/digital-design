library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity clk_gen is
    generic (
        ms_period : positive);          -- amount of ms for button to be
                                        -- pressed before creating clock pulse
    port (
        clk50MHz : in  std_logic;
        rst      : in  std_logic;
        button_n : in  std_logic;
        clk_out  : out std_logic);
end clk_gen;

architecture default of clk_gen is
    signal count: integer;
    signal clk1000Hz: std_logic;
begin --default
    U_CLK_DIV : entity work.clk_div
        generic map (
            clk_in_freq => 50000000,
            clk_out_freq => 1000
        )
        port map (
            clk_in => clk50MHz,
            clk_out => clk1000Hz,
            rst => rst
        );

        process(clk1000Hz, rst)
        begin
            if (rst = '1') then
                count <= 0;
                clk_out <= '0';
            elsif (rising_edge(clk1000Hz)) then
                if (button_n = '0') then
                    count <= count + 1;
                    if ( count = ms_period ) then
                        clk_out <= '1';
                        count <= 1;
                    end if;
                else
                    count <= 0;
                end if;
            end if;
        end process;
end default;

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