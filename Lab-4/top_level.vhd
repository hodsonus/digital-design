-- Greg Stitt
-- University of Florida

-- The following entity is the top-level entity for lab 4. No changes are
-- required, but you need to map the I/O to the appropriate pins on the
-- board.

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
        rst      : in  std_logic;
        switch   : in  std_logic_vector(9 downto 0);
        button   : in  std_logic_vector(1 downto 0);
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

    component decoder7seg
        port (
            input  : in  std_logic_vector(3 downto 0);
            output : out std_logic_vector(6 downto 0));
    end component;

    component clk_gen
        generic (
            ms_period : positive);
        port (
            clk50MHz : in  std_logic;
            rst      : in  std_logic;
            button_n : in  std_logic;
            clk_out  : out std_logic);
    end component;

    component gray2
        port (
            clk    : in  std_logic;
            rst    : in  std_logic;
            output : out std_logic_vector(3 downto 0));
    end component;

    component counter
        port (
            clk    : in  std_logic;
            rst    : in  std_logic;
            up_n   : in  std_logic;     -- active low
            load_n : in  std_logic;     -- active low
            input  : in  std_logic_vector(3 downto 0);
            output : out std_logic_vector(3 downto 0));
    end component;

    constant MS_CLOCK_PERIOD : natural                      := 1000;
    constant C0              : std_logic_vector(3 downto 0) := (others => '0');

    signal gray_out    : std_logic_vector(3 downto 0);
    signal counter_out : std_logic_vector(3 downto 0);
    signal clk_gen_out : std_logic;

begin  -- STR

    U_GRAY : gray2 port map (
        clk    => clk_gen_out,
        rst    => rst,
        output => gray_out);

    U_COUNTER : counter port map (
        clk    => clk_gen_out,
        rst    => rst,
        up_n   => switch(5),
        load_n => switch(4),
        input  => switch(9 downto 6),
        output => counter_out);

    U_CLK_GEN : clk_gen
        generic map (
            ms_period => MS_CLOCK_PERIOD)
        port map (
            clk50MHz => clk50MHz,
            rst      => rst,
            button_n => button(1),
            clk_out  => clk_gen_out);

    U_LED5 : decoder7seg port map (
        input  => gray_out,
        output => led5);

    U_LED4 : decoder7seg port map (
        input  => counter_out,
        output => led4);
    
    U_LED3 : decoder7seg port map (
        input  => C0,
        output => led3);

    U_LED2 : decoder7seg port map (
        input  => C0,
        output => led2);
    
    U_LED1 : decoder7seg port map (
        input  => C0,
        output => led1);

    U_LED0 : decoder7seg port map (
        input  => C0,
        output => led0);
    

    led5_dp <= '1';
    led4_dp <= '1';
    led3_dp <= '1';
    led2_dp <= '1';
    led1_dp <= '1';
    led0_dp <= '1';

end STR;
