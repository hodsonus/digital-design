library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comp is
    generic (
        WIDTH : positive := 8);
    port (
        in1  : in  std_logic_vector(WIDTH-1 downto 0);
        in2  : in  std_logic_vector(WIDTH-1 downto 0);
        lt   : out std_logic;
        neq  : out std_logic;
        gt   : out std_logic);
end comp;

architecture UNSIGNED_INPUTS of comp is
begin
    lt <= '1' when unsigned(in1) < unsigned(in2) else '0';
    neq <= '1' when unsigned(in1) /= unsigned(in2) else '0';
    gt <= '1' when unsigned(in1) > unsigned(in2) else '0';
end UNSIGNED_INPUTS;

architecture SIGNED_INPUTS of comp is
begin
    lt <= '1' when signed(in1) < signed(in2) else '0';
    neq <= '1' when signed(in1) /= signed(in2) else '0';
    gt <= '1' when signed(in1) > signed(in2) else '0';
end SIGNED_INPUTS;