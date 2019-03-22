library ieee;
use ieee.std_logic_1164.all;

entity pix_clk_gen is
    port(
        clk50MHz     : in  std_logic;
        rst          : in  std_logic;
        pixel_clock  : out std_logic
    );
end pix_clk_gen;

architecture default of pix_clk_gen is
    signal count: integer;
    signal ratio: integer;
begin -- default
    ratio <= (50000000 / 25000000) - 1;
    process(clk50MHz, rst)
    begin
        if (rst = '1') then
            count <= 0;
            pixel_clock <= '0';
        elsif (rising_edge(clk50MHz)) then
            count <= count + 1;
            if (count = ratio) then
                count <= 0;
                pixel_clock <= '1';
            else
                pixel_clock <= '0';
            end if;
        end if;
    end process;
end default;