library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity vga_tb is
end vga_tb;

architecture TB of vga_tb is

  component top_level
    port ( clk50MHz         : in  std_logic;
           switch           : in  std_logic_vector(9 downto 0);
           button           : in  std_logic_vector(1 downto 0);
           RED              : out std_logic_vector(3 downto 0);
           GRN              : out std_logic_vector(3 downto 0);
           BLU              : out std_logic_vector(3 downto 0);
           Horiz_Sync       : out std_logic;
           Vert_Sync        : out std_logic);
  end component;

  signal clkEn      : std_logic := '1';
  signal clk50MHz   : std_logic := '1';
  signal switch     : std_logic_vector(9 downto 0) := "0000000000";
  signal button     : std_logic_vector(1 downto 0) := "00";
  signal RED        : std_logic_vector(3 downto 0);
  signal GRN        : std_logic_vector(3 downto 0);
  signal BLU        : std_logic_vector(3 downto 0);
  signal Horiz_Sync : std_logic;
  signal Vert_Sync  : std_logic;
  
begin  -- TB

  -- MODIFY TO MATCH YOUR TOP LEVEL
  UUT : top_level port map (
    clk50MHz   => clk50MHz,
    switch     => switch,
    button     => button,
    RED        => RED,
    GRN        => GRN,
    BLU        => BLU,
    Horiz_Sync => Horiz_Sync,
    Vert_Sync  => Vert_Sync
  );

  clk50MHz <= not clk50MHz and clkEn after 10 ns;

  process
  begin

    -- reset
    clkEn <= '1';
    button(0) <= '1';
    wait for 200 ns;
    
    --disable the rst
    button(0) <= '0';

    --ADD YOUR OWN TESTS

    wait for 500 ms;
    clkEn <= '0';
    report "DONE!!!!!!" severity note;

    wait;
  end process;

end TB;
