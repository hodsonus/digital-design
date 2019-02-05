library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_ns_tb2 is
end alu_ns_tb2;

architecture TB of alu_ns_tb2 is

    component alu_ns

        generic (
            WIDTH : positive := 16
            );
        port (
            input1   : in  std_logic_vector(WIDTH-1 downto 0);
            input2   : in  std_logic_vector(WIDTH-1 downto 0);
            sel      : in  std_logic_vector(3 downto 0);
            output   : out std_logic_vector(WIDTH-1 downto 0);
            overflow : out std_logic
            );

    end component;

    constant WIDTH  : positive                           := 3;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(3 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal overflow : std_logic;

begin  -- TB

    UUT : alu_ns
        generic map (WIDTH => WIDTH)
        port map (
            input1   => input1,
            input2   => input2,
            sel      => sel,
            output   => output,
            overflow => overflow);

    process
    begin

        -- test 4+4 (overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(4, input1'length); --100
        input2 <= conv_std_logic_vector(4, input2'length);--100
        wait for 40 ns;
        assert(output = conv_std_logic_vector(0, output'length)) report "Error : 4+4 = " & integer'image(conv_integer(output)) & " instead of 0" severity warning;
        assert(overflow = '1') report "Error                                   : overflow incorrect for 4+4" severity warning;

        -- test 1+2 (no overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(1, input1'length); --001
        input2 <= conv_std_logic_vector(2, input2'length);--010
        wait for 40 ns;
        assert(output = conv_std_logic_vector(3, output'length)) report "Error : 1+2 = " & integer'image(conv_integer(output)) & " instead of 3" severity warning;
        assert(overflow = '0') report "Error                                     : overflow incorrect for 1+2" severity warning;

        -- test 1*4
        sel    <= "0010";
        input1 <= conv_std_logic_vector(1, input1'length); --001
        input2 <= conv_std_logic_vector(4, input2'length); --100
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4, output'length)) report "Error : 1*4 = " & integer'image(conv_integer(output)) & " instead of 4" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 1*4" severity warning;

        -- test 3*4 (with overflow)
        sel    <= "0010";
        input1 <= conv_std_logic_vector(3, input1'length);--011
        input2 <= conv_std_logic_vector(4, input2'length);--100
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4, output'length)) report "Error : 3*4 = " & integer'image(conv_integer(output)) & " instead of 4" severity warning;
        assert(overflow = '1') report "Error                                      : overflow incorrect for 3*4" severity warning;

        --test sub, 64-52
        sel <= "0001";
        input1 <= conv_std_logic_vector(7, input1'length); --111
        input2 <= conv_std_logic_vector(1, input1'length); --001
        wait for 40 ns;
        assert(output = conv_std_logic_vector(6, output'length)) report "Error : 7-1 = " & integer'image(conv_integer(output)) & " instead of 6" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 7-1" severity warning;

        --test and
        sel <= "0011";
        input1 <= conv_std_logic_vector(1, input1'length);--001
        input2 <= conv_std_logic_vector(3, input1'length);--011
        wait for 40 ns;
        assert(output = conv_std_logic_vector(1, output'length)) report "Error : 1 && 3 = " & integer'image(conv_integer(output)) & " instead of 1" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 1 && 3" severity warning;

        --test or
        sel <= "0100";
        input1 <= conv_std_logic_vector(1, input1'length); --001
        input2 <= conv_std_logic_vector(3, input1'length); --011
        wait for 40 ns;
        assert(output = conv_std_logic_vector(3, output'length)) report "Error : 1 || 3 = " & integer'image(conv_integer(output)) & " instead of 3" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 1 || 3" severity warning;

        --test xor
        sel <= "0101";
        input1 <= conv_std_logic_vector(2, input1'length); --010
        input2 <= conv_std_logic_vector(1, input1'length); --001
        wait for 40 ns;
        assert(output = conv_std_logic_vector(3, output'length)) report "Error : 2 xor 1 = " & integer'image(conv_integer(output)) & " instead of 3" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 2 xor 1" severity warning;

        --test nor
        sel <= "0110";
        input1 <= conv_std_logic_vector(0, input1'length); -- 000
        input2 <= conv_std_logic_vector(0, input1'length); -- 000
        wait for 40 ns;
        --output = 111
        assert(output = conv_std_logic_vector(7, output'length)) report "Error : 0 nor 0 = " & integer'image(conv_integer(output)) & " instead of 7" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 0 nor 0" severity warning;

        --input2 not necessary for these tests, setting to 0
        input2 <= conv_std_logic_vector(0, input1'length);

        --test not
        sel <= "0111";
        input1 <= conv_std_logic_vector(2, input1'length); --010
        wait for 40 ns;
        -- output = 101
        assert(output = conv_std_logic_vector(5, output'length)) report "Error : not 2 = " & integer'image(conv_integer(output)) & " instead of 5" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for not 2" severity warning;

        --test SHL (with overflow)
        sel <= "1000";
        input1 <= conv_std_logic_vector(5, input1'length);--101
        wait for 40 ns;
        -- output = 000
        assert(output = conv_std_logic_vector(2, output'length)) report "Error : 5 SHL = " & integer'image(conv_integer(output)) & " instead of 2" severity warning;
        assert(overflow = '1') report "Error                                      : overflow incorrect for 5 SHL" severity warning;

        --test SHL (no overflow)
        sel <= "1000";
        input1 <= conv_std_logic_vector(2, input1'length);--010
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4, output'length)) report "Error : 2 SHL = " & integer'image(conv_integer(output)) & " instead of 4" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 2 SHL" severity warning;

        --test SHR
        sel <= "1001";
        input1 <= conv_std_logic_vector(2, input1'length); --010
        wait for 40 ns;
        assert(output = conv_std_logic_vector(1, output'length)) report "Error : 2 SHR = " & integer'image(conv_integer(output)) & " instead of 1" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 2 SHR" severity warning;

        --test swap
        sel <= "1010";
        input1 <= conv_std_logic_vector(6, input1'length); --110
        wait for 40 ns;
        --output = 011
        assert(output = conv_std_logic_vector(3, output'length)) report "Error : swap 110 = " & integer'image(conv_integer(output)) & " instead of 011" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for swap 110" severity warning;

        --test reverse
        sel <= "1011";
        input1 <= conv_std_logic_vector(3, input1'length); --011
        wait for 40 ns;
        -- output = 110
        assert(output = conv_std_logic_vector(6, output'length)) report "Error : reverse 3 = " & integer'image(conv_integer(output)) & " instead of 6" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for reverse 3" severity warning;

        wait;

    end process;



end TB;
