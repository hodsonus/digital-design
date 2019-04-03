-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity memory_tb is
end memory_tb;

architecture TB of memory_tb is
    signal done      : std_logic := '0';
    signal clk       : std_logic := '0';
    signal rst       : std_logic := '1';
    signal address   : std_logic_vector(31 downto 0) := (others => '0');
    signal data      : std_logic_vector(31 downto 0) := (others => '0');
    signal RegB      : std_logic_vector(31 downto 0) := (others => '0');
    signal MemRead   : std_logic := '0';
    signal MemWrite  : std_logic := '0';
    signal InPort0_en : std_logic := '0';
    signal InPort1_en : std_logic := '0';
    signal InPort    : std_logic_vector(31 downto 0) := (others => '0');
    signal OutPort   : std_logic_vector(31 downto 0) := (others => '0');
begin --TB

    -- 50 MHz clk
    clk <= (not clk) and (not done) after 10 ns;

    UUT: entity work.memory
        port map (
            clk       => clk,
            rst       => rst,
            address   => address,
            data      => data,
            RegB      => RegB,
            MemRead   => MemRead,
            MemWrite  => MemWrite,
            InPort1_en => InPort1_en,
            InPort0_en => InPort0_en,
            InPort    => InPort,
            OutPort   => OutPort
        );

    process
    begin

        done <= '0';
        rst   <= '1';
        for i in 0 to 9 loop
            wait until rising_edge(clk); -- wait for 10 cycles
        end loop;
        rst <= '0';

        -- load both in ports with 0
        InPort <= x"00000000";
        InPort1_en <= '1';
        wait until rising_edge(clk);
        report "Write default value of 0x00000000 to inport1 here." severity note;
        InPort1_en <= '0';
        InPort0_en <= '1';
        wait until rising_edge(clk);
        InPort0_en <= '0';
        report "Write default value of 0x00000000 to inport0 here." severity note;

        -- start testing

        -- Write 0x0A0A0A0A to byte address 0x00000000
        MemWrite <= '1';
        RegB <= x"0A0A0A0A";
        address <= x"00000000";
        wait until rising_edge(clk);
        MemWrite <= '0';
        -- no assertion, setting up for future tests
        report "Write 0x0A0A0A0A to byte address 0x00000000 here." severity note;

        -- Write 0xF0F0F0F0 to byte address 0x00000004
        MemWrite <= '1';
        RegB <= x"F0F0F0F0";
        address <= x"00000004";
        wait until rising_edge(clk);
        MemWrite <= '0';
        -- no assertion, setting up for future tests
        report "Write 0xF0F0F0F0 to byte address 0x00000004 here." severity note;

        wait until rising_edge(clk);

        -- Read from byte address 0x00000000 (should show 0x0A0A0A0A on read data output)
        MemRead <= '1';
        address <= x"00000000";
        wait until rising_edge(clk);
        MemRead <= '0';
        assert(data = x"0A0A0A0A") report "Read from byte address 0x00000000 incorrect (should show 0x0A0A0A0A)" severity warning;
        report "Read from byte address 0x00000000 here." severity note;

        -- Read from byte address 0x00000001 (should show 0x0A0A0A0A on read data output)
        MemRead <= '1';
        address <= x"00000001";
        wait until rising_edge(clk);
        MemRead <= '0';
        assert(data = x"0A0A0A0A") report "Read from byte address 0x00000001 incorrect (should show 0x0A0A0A0A)" severity warning;
        report "Read from byte address 0x00000001 here." severity note;

        -- Read from byte address 0x00000004 (should show 0xF0F0F0F0 on read data output)
        MemRead <= '1';
        address <= x"00000004";
        wait until rising_edge(clk);
        MemRead <= '0';
        assert(data = x"F0F0F0F0") report "Read from byte address 0x00000004 incorrect (should show 0xF0F0F0F0)" severity warning;
        report "Read from byte address 0x00000004 here." severity note;

        -- Read from byte address 0x00000005 (should show 0xF0F0F0F0 on read data output)
        MemRead <= '1';
        address <= x"00000005";
        wait until rising_edge(clk);
        MemRead <= '0';
        assert(data = x"F0F0F0F0") report "Read from byte address 0x00000005 incorrect (should show 0xF0F0F0F0)" severity warning;
        report "Read from byte address 0x00000005 here." severity note;

        -- Write 0x00001111 to the outport (should see value appear on outport)
        MemWrite <= '1';
        RegB <= x"00001111";
        address <= x"0000FFFC";
        wait until rising_edge(clk);
        MemWrite <= '0';
        assert(OutPort = x"00001111") report "Write data to outport incorrect (should show 0x00001111)" severity warning;
        report "Write 0x00001111 to the outport here." severity note;

        -- Load 0x00010000 into inport 0
        InPort <= x"00010000";
        InPort0_en <= '1';
        wait until rising_edge(clk);
        InPort0_en <= '0';
        report "Load 0x00010000 into inport 0 here." severity note;

        -- Load 0x00000001 into inport 1
        InPort <= x"00000001";
        InPort1_en <= '1';
        wait until rising_edge(clk);
        InPort1_en <= '0';
        report "Load 0x00000001 into inport 1 here." severity note;

        -- Read from inport 0 (should show 0x00010000 on read data output)
        MemRead <= '1';
        address <= x"0000FFF8";
        wait until rising_edge(clk);
        MemRead <= '0';
        assert(data = x"00010000") report "Read from inport 0 incorrect (should show 0x00010000)" severity warning;
        report "Read from inport 0 happened here." severity note;

        -- Read from inport 1 (should show 0x00000001 on read data output)
        MemRead <= '1';
        address <= x"0000FFFC";
        wait until rising_edge(clk);
        MemRead <= '0';
        assert(data = x"00000001") report "Read from inport 1 incorrect (should show 0x00000001)" severity warning;
        report "Read from inport 1 happened here." severity note;

        wait for 150 ms;
        done <= '1';
        report "DONE!!!!!!" severity note;
        wait;
    end process;
end TB;