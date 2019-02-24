library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity gcd is
    generic (
        WIDTH : positive := 16);
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        go     : in  std_logic;
        done   : out std_logic;
        x      : in  std_logic_vector(WIDTH-1 downto 0);
        y      : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0));
end gcd;

architecture FSMD of gcd is
    type STATE_TYPE is (START, WAIT_1, INIT, LOOP_COND, LOOP_BODY, OUTPUT_RES, WAIT_0);
    signal state: STATE_TYPE;
    signal tmpX, tmpY   : unsigned(WIDTH-1 downto 0);
begin  -- FSMD
    process(clk,rst)
    begin
        if (rst = '1') then
            state <= START;
            done <= '0';
            output <= (others => '0');
            tmpX <= to_unsigned(0, WIDTH);
            tmpY <= to_unsigned(0, WIDTH);
        elsif (clk = '1' and clk'event) then 
            case state is
                when START =>
                    output <= (others => '0');
                    done <= '0';
                    state <= WAIT_1;
                when WAIT_1 =>
                    if (go = '0') then
                        state <= WAIT_1;
                    else
                        state <= INIT;
                    end if;
                WHEN INIT => 
                    done <= '0';
                    tmpX <= unsigned(x);
                    tmpY <= unsigned(y);
                    state <= LOOP_COND;
                when LOOP_COND =>
                    if (tmpX /= tmpY) then
                        state <= LOOP_BODY;
                    else
                        state <= OUTPUT_RES;
                    end if;
                WHEN LOOP_BODY =>
                    if (tmpX < tmpY) then
                        tmpY <= tmpY-tmpX;
                    else
                        tmpX <= tmpX-tmpY;
                    end if;
                    state <= LOOP_COND;
                WHEN OUTPUT_RES =>
                    output <= std_logic_vector(tmpX);
                    done <= '1';
                    state <= WAIT_0;
                WHEN WAIT_0 =>
                    if (go = '1') then
                        state <= WAIT_0;
                    else
                        state <= WAIT_1;
                    end if;
            end case;
        end if;
    end process;
end FSMD;


--Therefore, you will also need a register entity, a 2x1 mux entity, a subtractor entity, and a comparator entity






architecture FSM_D1 of gcd is

begin  -- FSM_D1



end FSM_D1;

architecture FSM_D2 of gcd is

begin  -- FSM_D2



end FSM_D2;


-- EXTRA CREDIT
architecture FSMD2 of gcd is

begin  -- FSMD2



end FSMD2;
