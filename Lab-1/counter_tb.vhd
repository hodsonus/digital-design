-- Greg Stitt
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_tb is
end counter_tb;

architecture TB of counter_tb is

  signal output0 : std_logic;
  signal output1 : std_logic;
  signal output2 : std_logic;
  signal output3 : std_logic;
  signal output4 : std_logic;
  signal output5 : std_logic;
  signal output6 : std_logic;
  signal output7 : std_logic;
  signal output  : std_logic_vector(7 downto 0);

  signal data0 : std_logic;
  signal data1 : std_logic;
  signal data2 : std_logic;
  signal data3 : std_logic;
  signal data4 : std_logic;
  signal data5 : std_logic;
  signal data6 : std_logic;
  signal data7 : std_logic;
  signal data  : std_logic_vector(7 downto 0);

  signal clk    : std_logic := '0';
  signal clr_n  : std_logic;
  signal ld_n   : std_logic;
  signal enable : std_logic;
  signal rco    : std_logic;

  signal sim_done : std_logic := '0';

begin  -- TB

  UUT : entity work.counter
    port map (
      clk     => clk,
      clr_n   => clr_n,
      ld_n    => ld_n,
      enable  => enable,
      rco     => rco,
      output0 => output0,
      output1 => output1,
      output2 => output2,
      output3 => output3,
      output4 => output4,
      output5 => output5,
      output6 => output6,
      output7 => output7,
      data0   => data0,
      data1   => data1,
      data2   => data2,
      data3   => data3,
      data4   => data4,
      data5   => data5,
      data6   => data6,
      data7   => data7);

  data0 <= data(0);
  data1 <= data(1);
  data2 <= data(2);
  data3 <= data(3);
  data4 <= data(4);
  data5 <= data(5);
  data6 <= data(6);
  data7 <= data(7);

  output <= output7&output6&output5&output4&
            output3&output2&output1&output0;

  -- toggle clock
  clk <= not clk after 20 ns when sim_done = '0' else clk;

  process
  begin

    -- clear    
    clr_n  <= '0';
    ld_n   <= '1';
    enable <= '0';
    data   <= std_logic_vector(to_unsigned(0, 8));

    for i in 0 to 20 loop
      wait until rising_edge(clk);
    end loop;
    assert(output = std_logic_vector(to_unsigned(0, 8))) report "Clear failed" severity warning;

    -- test load
    clr_n <= '1';
    ld_n  <= '0';
    data  <= std_logic_vector(to_unsigned(10, 8));
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(output = std_logic_vector(to_unsigned(10, 8))) report "Load failed" severity warning;

    -- clear
    clr_n <= '0';
    ld_n  <= '1';
    wait until rising_edge(clk);
    wait until rising_edge(clk);
    assert(output = std_logic_vector(to_unsigned(0, 8))) report "Clear failed" severity warning;

    clr_n <= '1';

    -- test a bunch of enable cycles
    for i in 0 to 500 loop

      -- test unasserted enable      
      if (i mod 10 = 0) then
        enable <= '0';
        for j in 0 to 5 loop
          wait until rising_edge(clk);
          assert(output = std_logic_vector(to_unsigned(i mod 256, 8))) report "Enable failed" severity warning;
        end loop;  -- j
      end if;

      if (i = 256) then
        assert(rco = '1') report "RCO failed";
      end if;
      
      -- test enabled
      enable <= '1';
      wait until rising_edge(clk);
      assert(output = std_logic_vector(to_unsigned(i mod 256, 8))) report "Counting failed" severity warning;

    end loop;  -- i

    report "SIMULATION FINISHED!";
    sim_done <= '1';
    wait;

  end process;
end TB;
