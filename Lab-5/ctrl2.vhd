library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ctrl2 is
    port (
        clk        : in  std_logic;
        rst        : in  std_logic;
        go         : in  std_logic;
        x_lt_y     : in  std_logic;
        x_ne_y     : in  std_logic;
        output_en  : out std_logic;
        done       : out std_logic;
        x_sel      : out std_logic;
        x_en       : out std_logic;
        y_sel      : out std_logic;
        y_en       : out std_logic);
end ctrl2;

architecture FSM_2P of ctrl2 is 
    type STATE_TYPE is (START, WAIT_1, INIT, LOOP_COND, LOOP_BODY, DISP, WAIT_0);
    signal state, next_state : STATE_TYPE;
begin -- FSM_2P
    process(clk, rst)
    begin
        if (rst = '1') then
            state <= START;
        elsif (clk'event and clk = '1') then
            state <= next_state;
        end if;
    end process;

    process(state, go, x_lt_y, x_ne_y)
    begin
        case state is
            when START =>
                done <= '0';
                x_en <= '0';
                y_en <= '0';
                output_en <= '0';
                x_sel <= '0';
                y_sel <= '0';
                next_state <= WAIT_1;
            when WAIT_1 =>
                done <= '0';
                x_en <= '0';
                y_en <= '0';
                output_en <= '0';
                x_sel <= '0';
                y_sel <= '0';
                if (go = '0') then
                    next_state <= WAIT_1;
                else
                    next_state <= INIT;
                end if;
            when INIT =>
                done <= '0';
                x_en <= '1';
                y_en <= '1';
                output_en <= '0';
                x_sel <= '0';
                y_sel <= '0';
                next_state <= LOOP_COND;
            when LOOP_COND =>
                done <= '0';
                x_en <= '0';
                y_en <= '0';
                output_en <= '0';
                x_sel <= '0';
                y_sel <= '0';
                if (x_ne_y = '1') then
                    next_state <= LOOP_BODY;
                else
                    next_state <= DISP;
                    -- output_en <= '1';
                end if;
            when LOOP_BODY =>
                if (x_lt_y = '1') then 
                    x_en <= '0';
                    x_sel <= '0';
                    y_en <= '1';
                    y_sel <= '1';
                else 
                    x_en <= '1';
                    x_sel <= '1';
                    y_en <= '0';
                    y_sel <= '0';
                end if;
                output_en <= '0';
                done <= '0';
                next_state <= LOOP_COND;
            when DISP =>
                done <= '0'; -- change this to done = 1
                output_en <= '1';
                x_en <= '0';
                y_en <= '0';
                x_sel <= '0';
                y_sel <= '0';
                next_state <= WAIT_0;
            when WAIT_0 =>
                done <= '1';
                output_en <= '0';
                x_en <= '0';
                y_en <= '0';
                x_sel <= '0';
                y_sel <= '0';
                if (go = '1') then
                    next_state <= WAIT_0;
                else
                    next_state <= WAIT_1;
                end if;
        end case;
    end process;
end FSM_2P;