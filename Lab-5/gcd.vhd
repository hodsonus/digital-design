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

begin  -- FSMD


end FSMD;

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
