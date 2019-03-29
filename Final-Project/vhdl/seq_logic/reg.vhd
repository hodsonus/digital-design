-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity reg is
    generic (
        WIDTH : positive
    );
    port (
        clk    : in  std_logic;
        rst    : in  std_logic;
        en     : in  std_logic;
        input  : in  std_logic_vector(WIDTH-1 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0)
    );
end reg;

architecture ASYNC_RST of reg is
begin  -- ASYNC_RST
    process(clk,rst)
        begin
        if (rst = '1') then
            output <= (others => '0');
        elsif (clk'event and clk='1' and en = '1') then
            output <= input;
        end if;
    end process;
end ASYNC_RST;