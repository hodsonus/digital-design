library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timing_tb is
end timing_tb;


architecture TB of timing_tb is

  constant TEST_WIDTH  : positive := 8;

  signal x, y : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal cin  : std_logic;
  signal s    : std_logic_vector(TEST_WIDTH-1 downto 0);
  signal cout : std_logic;

begin  -- TB

  UUT : entity work.adder_top
    port map (
      x     => x,
      y     => y,
      cin   => cin,
      s     => s,
      cout  => cout);

  process
  begin
    for i in 0 to 2**TEST_WIDTH-1 loop

      x <= std_logic_vector(to_unsigned(i, TEST_WIDTH));

      for j in 0 to 2**TEST_WIDTH-1 loop

        y <= std_logic_vector(to_unsigned(j, TEST_WIDTH));

        for k in 0 to 1 loop

          cin <= std_logic(to_unsigned(k, 1)(0));

          wait for 40 ns;

        end loop;  -- k
      end loop;  -- j      
    end loop;  -- i

    wait;

  end process;
end TB;
