-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder7seg_tb is
end decoder7seg_tb;

architecture TB of decoder7seg_tb is
    signal input : std_logic_vector(3 downto 0);
    signal output : std_logic_vector(6 downto 0);
begin --TB
    UUT: entity work.decoder7seg
        port map (
            input => input,
            output => output
        );
    process
    begin --process

        -- Assign all input, wait for some amount of time, then check the output

        input <= "0000";
        wait for 10 ns;
        assert(output = "1000000") report "Error!" severity failure;
        --failure severity halts the simulation
        --either "warning" or "error" to continue
        --99% of the time Stitt uses failure

        input <= "0001";
        wait for 10 ns;
        assert(output = "1111001") report "Error, expected 1111001!" severity failure;

        input <= "0010";
        wait for 10 ns;
        assert(output = "0100100") report "Error, expected 0100100!" severity failure;

        input <= "0001";
        wait for 10 ns;
        assert(output = "1111001") report "Error, expected 1111001!" severity failure;

        input <= "1010";
        wait for 10 ns;
        assert(output = "0001000") report "Error, expected 0001000!" severity failure;

        input <= "1110";
        wait for 10 ns;
        assert(output = "0000110") report "Error, expected 0000110!" severity failure;

        wait;
    end process;
end TB;