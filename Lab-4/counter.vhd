library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        up_n   : in  std_logic; -- active low
        load_n : in  std_logic; -- active low
        input  : in  std_logic_vector(3 downto 0);
        output : out std_logic_vector(3 downto 0));
end counter;

architecture default of counter is

    constant STATE_0 : std_logic_vector(3 downto 0) := "0000";
    constant STATE_1 : std_logic_vector(3 downto 0) := "0001";
    constant STATE_2 : std_logic_vector(3 downto 0) := "0010";
    constant STATE_3 : std_logic_vector(3 downto 0) := "0011";
    constant STATE_4 : std_logic_vector(3 downto 0) := "0100";
    constant STATE_5 : std_logic_vector(3 downto 0) := "0101";
    constant STATE_6 : std_logic_vector(3 downto 0) := "0110";
    constant STATE_7 : std_logic_vector(3 downto 0) := "0111";
    constant STATE_8 : std_logic_vector(3 downto 0) := "1000";
    constant STATE_9 : std_logic_vector(3 downto 0) := "1001";
    constant STATE_A : std_logic_vector(3 downto 0) := "1010";
    constant STATE_B : std_logic_vector(3 downto 0) := "1011";
    constant STATE_C : std_logic_vector(3 downto 0) := "1100";
    constant STATE_D : std_logic_vector(3 downto 0) := "1101";
    constant STATE_E : std_logic_vector(3 downto 0) := "1110";
    constant STATE_F : std_logic_vector(3 downto 0) := "1111";

    signal state, prev_state, next_state: std_logic_vector(3 downto 0);

begin --default
    process(clk, rst)
    begin -- process(clk, rst)
        if (rst = '1') then
            state <= STATE_0;
        elsif (rising_edge(clk)) then
            if (load_n = '0') then --load
                state <= input;
            elsif (up_n = '0') then --count up
                state <= next_state;--std_logic_vector(unsigned(state) + unsi;
            elsif (up_n = '1') then --count down
                state <= prev_state;
            end if;
        end if;
    end process; -- process(clk,rst)

    process(state)
    begin -- process(state)
        case state is
            when STATE_0 =>
                next_state <= STATE_1;
                output <= STATE_0;
                prev_state <= STATE_F;
            when STATE_1 =>
                next_state <= STATE_2;
                output <= STATE_1;
                prev_state <= STATE_0;
            when STATE_2 =>
                next_state <= STATE_3;
                output <= STATE_2;
                prev_state <= STATE_1;
            when STATE_3 =>
                next_state <= STATE_4;
                output <= STATE_3;
                prev_state <= STATE_2;
            when STATE_4 =>
                next_state <= STATE_5;
                output <= STATE_4;
                prev_state <= STATE_3;
            when STATE_5 =>
                next_state <= STATE_6;
                output <= STATE_5;
                prev_state <= STATE_4;
            when STATE_6 =>
                next_state <= STATE_7;
                output <= STATE_6;
                prev_state <= STATE_5;
            when STATE_7 =>
                next_state <= STATE_8;
                output <= STATE_7;
                prev_state <= STATE_6;
            when STATE_8 =>
                next_state <= STATE_9;
                output <= STATE_8;
                prev_state <= STATE_7;
            when STATE_9 =>
                next_state <= STATE_A;
                output <= STATE_9;
                prev_state <= STATE_8;
            when STATE_A =>
                next_state <= STATE_B;
                output <= STATE_A;
                prev_state <= STATE_9;
            when STATE_B =>
                next_state <= STATE_C;
                output <= STATE_B;
                prev_state <= STATE_A;
            when STATE_C =>
                next_state <= STATE_D;
                output <= STATE_C;
                prev_state <= STATE_B;
            when STATE_D =>
                next_state <= STATE_E;
                output <= STATE_D;
                prev_state <= STATE_C;
            when STATE_E =>
                next_state <= STATE_F;
                output <= STATE_E;
                prev_state <= STATE_D;
            when STATE_F =>
                next_state <= STATE_0;
                output <= STATE_F;
                prev_state <= STATE_E;
            when others => null;
        end case;
    end process; -- process(state)
end default;