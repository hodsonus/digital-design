library ieee;
use ieee.std_logic_1164.all;

entity gray2 is
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        output : out std_logic_vector(3 downto 0));
end gray2;

architecture default of gray2 is
    -- architecture variables
    type STATE_TYPE is (STATE_0, STATE_1, STATE_3, STATE_2,
                        STATE_6, STATE_7, STATE_5, STATE_4,
                        STATE_C, STATE_D, STATE_F, STATE_E,
                        STATE_A, STATE_B, STATE_9, STATE_8);
    signal state, next_state: STATE_TYPE;
begin -- default
    process(clk, rst)
    begin -- process(clk, rst)
        if (rst = '1') then
            state <= STATE_0;
        elsif (rising_edge(clk)) then
            state <= next_state;
        end if;
    end process; -- process(clk,rst)
    
    process(state)
    begin -- process(state)
        case state is
            when STATE_0 => 
                output     <= "0000";
                next_state <= STATE_1;
            when STATE_1 =>
                output     <= "0001";
                next_state <= STATE_3;
            when STATE_3 =>
                output     <= "0011";
                next_state <= STATE_2;
            when STATE_2 =>
                output     <= "0010";
                next_state <= STATE_6;
            when STATE_6 =>
                output     <= "0110";
                next_state <= STATE_7;
            when STATE_7 =>
                output     <= "0111";
                next_state <= STATE_5;
            when STATE_5 =>
                output     <= "0101";
                next_state <= STATE_4;
            when STATE_4 =>
                output     <= "0100";
                next_state <= STATE_C;
            when STATE_C =>
                output     <= "1100";
                next_state <= STATE_D;
            when STATE_D =>
                output     <= "1101";
                next_state <= STATE_F;
            when STATE_F =>
                output     <= "1111";
                next_state <= STATE_E;
            when STATE_E =>
                output     <= "1110";
                next_state <= STATE_A;
            when STATE_A =>
                output     <= "1010";
                next_state <= STATE_B;
            when STATE_B =>
                output     <= "1011";
                next_state <= STATE_9;
            when STATE_9 =>
                output     <= "1001";
                next_state <= STATE_8;
            when STATE_8 =>
                output     <= "1000";
                next_state <= STATE_0;
            when others => null;
        end case;
    end process; -- process(state)
end default;

architecture quiz of gray2 is
    -- architecture variables
    type STATE_TYPE is (STATE_5A, STATE_2A, STATE_4A, STATE_4B, STATE_0A, STATE_4C, STATE_1A, STATE_5B);
    signal state, next_state: STATE_TYPE;
begin -- default
    process(clk, rst)
    begin -- process(clk, rst)
        if (rst = '1') then
            state <= STATE_5A;
        elsif (rising_edge(clk)) then
            state <= next_state;
        end if;
    end process; -- process(clk,rst)
    
    process(state)
    begin -- process(state)
        case state is
            when STATE_5A => 
                output     <= "0101";
                next_state <= STATE_2A;
            when STATE_2A =>
                output     <= "0010";
                next_state <= STATE_4A;
            when STATE_4A =>
                output     <= "0100";
                next_state <= STATE_4B;
            when STATE_4B =>
                output     <= "0100";
                next_state <= STATE_0A;
            when STATE_0A =>
                output     <= "0000";
                next_state <= STATE_4C;
            when STATE_4C =>
                output     <= "0100";
                next_state <= STATE_1A;
            when STATE_1A =>
                output     <= "0001";
                next_state <= STATE_5B;
            when STATE_5B =>
                output     <= "0101";
                next_state <= STATE_5A;
            when others => null;
        end case;
    end process; -- process(state)
end quiz;