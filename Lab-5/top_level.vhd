-- John Hodson
-- University of Florida
-- Professor Greg Stitt

-- The following entity is the top-level entity for lab 5.

-- I/O Explanation (assumes the switches are on side of the
--                  board that is closest to you)
-- switch(9) is the leftmost switch
-- button(1) is the top button
-- led5 is the leftmost 7-segment LED
-- ledx_dp is the decimal point on the 7-segment LED for LED x

-- Note: this code will cause a harmless synthesis warning because not all
-- the buttons are used and because some output pins are always '0' or '1'

library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        clk50MHz : in  std_logic;
        switch   : in  std_logic_vector(9 downto 0);
        button   : in  std_logic_vector(1 downto 0); -- 1 -> go and 0 -> rst
        led0     : out std_logic_vector(6 downto 0);
        led0_dp  : out std_logic;
        led1     : out std_logic_vector(6 downto 0);
        led1_dp  : out std_logic;
        led2     : out std_logic_vector(6 downto 0);
        led2_dp  : out std_logic;
        led3     : out std_logic_vector(6 downto 0);
        led3_dp  : out std_logic;
        led4     : out std_logic_vector(6 downto 0);
        led4_dp  : out std_logic;
        led5     : out std_logic_vector(6 downto 0);
        led5_dp  : out std_logic
        );
end top_level;

architecture STR of top_level is
    constant C0      : std_logic_vector(3 downto 0) := (others => '0');
    signal gcd_out, gcd_x, gcd_y   : std_logic_vector(7 downto 0);
    signal rst_high, go_high, done_out  : std_logic;
begin  -- STR

    rst_high <= not button(0);
    go_high <= not button(1);
    gcd_x <= "000" & switch(9 downto 5);
    gcd_y <= "000" & switch(4 downto 0);

    U_GCD : entity work.gcd(FSM_D2)
		  generic map (WIDTH => 8)
        port map (
            clk    => clk50MHz,
            rst    => rst_high,
            go     => go_high,
            done   => done_out,
            x      => gcd_x,
            y      => gcd_y,
            output => gcd_out);

    U_LED5 : entity work.decoder7seg
    port map (
        input  => gcd_out(7 downto 4),
        output => led5);
    led5_dp <= '1';

    U_LED4 : entity work.decoder7seg
    port map (
        input  => gcd_out(3 downto 0),
        output => led4);
    led4_dp <= not done_out;

    U_LED3 : entity work.decoder7seg
    port map (
        input  => C0,
        output => led3);
    led3_dp <= '1';

    U_LED2 : entity work.decoder7seg
    port map (
        input  => C0,
        output => led2);
    led2_dp <= '1';

    U_LED1 : entity work.decoder7seg
    port map (
        input  => C0,
        output => led1);
    led1_dp <= '1';

    U_LED0 : entity work.decoder7seg
    port map (
        input  => C0,
        output => led0);
    led0_dp <= '1';

end STR;
