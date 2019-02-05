library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity alu_sla_tb is
end alu_sla_tb;

architecture TB of alu_sla_tb is

    component alu_sla

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

    constant WIDTH  : positive                           := 8;
    signal input1   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal input2   : std_logic_vector(WIDTH-1 downto 0) := (others => '0');
    signal sel      : std_logic_vector(3 downto 0)       := (others => '0');
    signal output   : std_logic_vector(WIDTH-1 downto 0);
    signal overflow : std_logic;

begin  -- TB

    UUT : alu_sla
        generic map (WIDTH => WIDTH)
        port map (
            input1   => input1,
            input2   => input2,
            sel      => sel,
            output   => output,
            overflow => overflow);

    process
    begin

        -- test 2+6 (no overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(2, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(8, output'length)) report "Error : 2+6 = " & integer'image(conv_integer(output)) & " instead of 8" severity warning;
        assert(overflow = '0') report "Error                                   : overflow incorrect for 2+8" severity warning;

        -- test 250+50 (with overflow)
        sel    <= "0000";
        input1 <= conv_std_logic_vector(250, input1'length);
        input2 <= conv_std_logic_vector(50, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(300, output'length)) report "Error : 250+50 = " & integer'image(conv_integer(output)) & " instead of 44" severity warning;
        assert(overflow = '1') report "Error                                     : overflow incorrect for 250+50" severity warning;

        -- test 5*6
        sel    <= "0010";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(6, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(30, output'length)) report "Error : 5*6 = " & integer'image(conv_integer(output)) & " instead of 30" severity warning;
        assert(overflow = '0') report "Error                                    : overflow incorrect for 5*6" severity warning;

        -- test 64*64 (with overflow)
        sel    <= "0010";
        input1 <= conv_std_logic_vector(64, input1'length);
        input2 <= conv_std_logic_vector(64, input2'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4096, output'length)) report "Error : 64*64 = " & integer'image(conv_integer(output)) & " instead of 4096" severity warning;
        assert(overflow = '1') report "Error                                      : overflow incorrect for 64*64" severity warning;

        --test sub, 64-52
        sel <= "0001";
        input1 <= conv_std_logic_vector(64, input1'length);
        input2 <= conv_std_logic_vector(52, input1'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(12, output'length)) report "Error : 64-52 = " & integer'image(conv_integer(output)) & " instead of 12" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 64-52" severity warning;

        --test and
        sel <= "0011";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(5, input1'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(5, output'length)) report "Error : 5 && 5 = " & integer'image(conv_integer(output)) & " instead of 5" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 5 && 5" severity warning;

        --test or
        sel <= "0100";
        input1 <= conv_std_logic_vector(5, input1'length);
        input2 <= conv_std_logic_vector(3, input1'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(7, output'length)) report "Error : 5 || 3 = " & integer'image(conv_integer(output)) & " instead of 7" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 5 || 3" severity warning;

        --test xor
        sel <= "0101";
        input1 <= conv_std_logic_vector(10, input1'length);
        input2 <= conv_std_logic_vector(13, input1'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(7, output'length)) report "Error : 10 xor 13 = " & integer'image(conv_integer(output)) & " instead of 7" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 10 xor 13" severity warning;

        --test nor
        sel <= "0110";
        input1 <= conv_std_logic_vector(144, input1'length); -- 10010000
        input2 <= conv_std_logic_vector(208, input1'length); -- 11010000
        wait for 40 ns;
        --output = 00101111
        assert(output = conv_std_logic_vector(47, output'length)) report "Error : 0b10010000 (144) nor 0b11010000 (208) = " & integer'image(conv_integer(output)) & " instead of 0b00101111 (47)" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 5 nor 1" severity warning;

        --input2 not necessary for these tests, setting to 0
        input2 <= conv_std_logic_vector(0, input1'length);

        --test not
        sel <= "0111";
        input1 <= conv_std_logic_vector(170, input1'length); --0b10101010
        wait for 40 ns;
        -- output = 0b01010101
        assert(output = conv_std_logic_vector(85, output'length)) report "Error : not 0b10101010 (170) = " & integer'image(conv_integer(output)) & " instead of 0b01010101 (85)" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for not 5" severity warning;

        --test SHL (with overflow)
        sel <= "1000";
        input1 <= conv_std_logic_vector(129, input1'length);--10000001
        wait for 40 ns;
        -- output = 00000010
        assert(output = conv_std_logic_vector(2, output'length)) report "Error : 10000001 (129) SHL = " & integer'image(conv_integer(output)) & " instead of 00000010 (2)" severity warning;
        assert(overflow = '1') report "Error                                      : overflow incorrect for 10000001 (129) SHL" severity warning;

        --test SHL (no overflow)
        sel <= "1000";
        input1 <= conv_std_logic_vector(1, input1'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(2, output'length)) report "Error : 1 SHL = " & integer'image(conv_integer(output)) & " instead of 2" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 1 SHL" severity warning;

        --test SHR
        sel <= "1001";
        input1 <= conv_std_logic_vector(9, input1'length);
        wait for 40 ns;
        assert(output = conv_std_logic_vector(4, output'length)) report "Error : 9 SHR = " & integer'image(conv_integer(output)) & " instead of 4" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for 9 SHR" severity warning;

        --test swap
        sel <= "1010";
        input1 <= conv_std_logic_vector(240, input1'length); --11110000
        wait for 40 ns;
        --output = 00001111
        assert(output = conv_std_logic_vector(15, output'length)) report "Error : swap 0b11110000 (240) = " & integer'image(conv_integer(output)) & " instead of 0b00001111 (15)" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for swap 0b11110000 (240)" severity warning;

        --test reverse
        sel <= "1011";
        input1 <= conv_std_logic_vector(161, input1'length); --10100001
        wait for 40 ns;
        -- output = 10000101
        assert(output = conv_std_logic_vector(133, output'length)) report "Error : reverse 0b10100001 (161) = " & integer'image(conv_integer(output)) & " instead of 0b10000101 (133)" severity warning;
        assert(overflow = '0') report "Error                                      : overflow incorrect for reverse 0b10100001 (161)" severity warning;

        wait;

    end process;



end TB;
