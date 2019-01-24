-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_ns is
    generic (
        WIDTH : positive := 16
    );
    port (
        input1 : in std_logic_vector(WIDTH-1 downto 0);
        input2 : in std_logic_vector(WIDTH-1 downto 0);
        sel : in std_logic_vector(3 downto 0);
        output : out std_logic_vector(WIDTH-1 downto 0);
        overflow : out std_logic
    );
end alu_ns;

architecture BHV of alu_ns is 

    constant C_ADD         : std_logic_vector(3 downto 0) := "0000";
    constant C_SUB         : std_logic_vector(3 downto 0) := "0001";
    constant C_MULT        : std_logic_vector(3 downto 0) := "0010";
    constant C_AND         : std_logic_vector(3 downto 0) := "0011";
    constant C_OR          : std_logic_vector(3 downto 0) := "0100";
    constant C_XOR         : std_logic_vector(3 downto 0) := "0101";
    constant C_NOR         : std_logic_vector(3 downto 0) := "0110";
    constant C_NOT         : std_logic_vector(3 downto 0) := "0111";
    constant C_SHIFT_LEFT  : std_logic_vector(3 downto 0) := "1000";
    constant C_SHIFT_RIGHT : std_logic_vector(3 downto 0) := "1001";
    constant C_SWAP        : std_logic_vector(3 downto 0) := "1010";
    constant C_REVERSE     : std_logic_vector(3 downto 0) := "1011";
	 
begin --BHV
    process(input1, input2, sel)
        variable temp_add : std_logic_vector(width downto 0);
        variable temp_mult : std_logic_vector(width*2-1 downto 0);
    begin --process
        overflow <= '0';
        case sel is
            when C_ADD => 
                temp_add := std_logic_vector(resize(unsigned(input1),width+1) + resize(unsigned(input2),width+1));
                output <= temp_add(width-1 downto 0);
                overflow <= temp_add(width);
            when C_SUB =>
                output <= std_logic_vector(signed(input1) - signed(input2));
            when C_MULT => 
                temp_mult := std_logic_vector(signed(input1) * signed(input2));
                output <= temp_mult(width-1 downto 0);
                if (unsigned(temp_mult) >= 16) then
                    overflow <= '1';
                end if;
            when C_AND => 
                output <= input1 and input2;
            when C_OR => 
                output <= input1 or input2;
            when C_XOR =>
                output <= input1 xor input2;
            when C_NOR =>
                output <= not(input1 or input2);
            when C_NOT =>
                output <= not input1;
            when C_SHIFT_LEFT =>
                output <= std_logic_vector(SHIFT_LEFT(unsigned(input1), 1));
                --output <= input1(bottom width-1 bits) & "0";
                overflow <= input1(width-1);
            when C_SHIFT_RIGHT => 
                output <= std_logic_vector(SHIFT_RIGHT(unsigned(input1), 1));
                --output <= "0" & input1(top width-1 bits);
            when C_SWAP => 
                --(width/2-1 downto 0) & (width-1 downto width/2)
                --ALU of size 16 (7 downto 0) & (15 downto 8)
                --ALU of size 7 (2 downto 0) & (6 downto 3)
                output <= input1(width/2-1 downto 0) & input1(width-1 downto width/2);
            when C_REVERSE => 
                --use a for loop backwards and concatenate as we go
                --be careful about using for loops, they can synthesize into something MUCH larger if they are not used as it is here
                --dont use a while loop for SYNTHESIZABLE code
                --make sure what you want is the unrolled version of the loop and it use for loops to define "generic" code
                for i in 0 to width-1 loop
                    output(i) <= input1(width-1-i);
                end loop;
            when others =>
                output <= std_logic_vector(to_unsigned(0, width));
                --output <= (others => '0');
        end case;
    end process;
end BHV;