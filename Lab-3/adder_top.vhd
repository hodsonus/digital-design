library ieee;
use ieee.std_logic_1164.all;

entity adder_top is
  generic (
    WIDTH :     positive := 8);
  port (
    x, y  : in  std_logic_vector(WIDTH-1 downto 0);
    cin   : in  std_logic;
    s     : out std_logic_vector(WIDTH-1 downto 0);
    cout  : out std_logic);
end adder_top;

architecture STR of adder_top is

  component adder
    generic (
      WIDTH :     positive := 8);
    port (
      x, y  : in  std_logic_vector(WIDTH-1 downto 0);
      cin   : in  std_logic;
      s     : out std_logic_vector(WIDTH-1 downto 0);
      cout  : out std_logic);
  end component;

begin

  U_ADDER : adder
    generic map (
      WIDTH => WIDTH)
    port map (
      x     => x,
      y     => y,
      cin   => cin,
      s     => s,
      cout  => cout);

end STR;

configuration ADDER_TOP_CONFIG of adder_top is
  for STR
    for U_ADDER : adder
      use entity work.adder(RIPPLE_CARRY);
    end for;
  end for;
end ADDER_TOP_CONFIG;
