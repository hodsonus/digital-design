-- John Hodson
-- Final Project ALU
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_ns is
    generic (
        WIDTH : positive := 16
    );
    port (
        input1     : in std_logic_vector(WIDTH-1 downto 0);
        input2     : in std_logic_vector(WIDTH-1 downto 0);
        shift_amt  : in std_logic_vector(4 downto 0);
        op_sel     : in std_logic_vector(4 downto 0);
 
        result     : out std_logic_vector(WIDTH-1 downto 0);
        result_hi  : out std_logic_vector(WIDTH-1 downto 0);
        branch_tkn : out std_logic
    );
end alu_ns;

architecture BHV of alu_ns is 

    constant C_ADD_U  : std_logic_vector(4 downto 0) := "00000"; -- 0  - add unsigned
    constant C_SUB_U  : std_logic_vector(4 downto 0) := "00001"; -- 1  - sub unsigned
    constant C_MULT_S : std_logic_vector(4 downto 0) := "00010"; -- 2  - mult signed
    constant C_MULT_U : std_logic_vector(4 downto 0) := "00011"; -- 3  - mult unsigned
    constant C_AND    : std_logic_vector(4 downto 0) := "00100"; -- 4  - and
    constant C_OR     : std_logic_vector(4 downto 0) := "00101"; -- 5  - or
    constant C_XOR    : std_logic_vector(4 downto 0) := "00110"; -- 6  - xor
    constant C_SHR_L  : std_logic_vector(4 downto 0) := "00111"; -- 7  - shift right logical
    constant C_SHL_L  : std_logic_vector(4 downto 0) := "01000"; -- 8  - shift left logical
    constant C_SHR_A  : std_logic_vector(4 downto 0) := "01001"; -- 9  - shift right arithmetic
    constant C_SLT_S  : std_logic_vector(4 downto 0) := "01010"; -- 10 - slt - set on less than signed
    constant C_SLT_U  : std_logic_vector(4 downto 0) := "01011"; -- 11 - sltu - set on less than unsigned
    constant C_BEQ    : std_logic_vector(4 downto 0) := "01100"; -- 12 - branch on equal
    constant C_BNE    : std_logic_vector(4 downto 0) := "01101"; -- 13 - branch not equal
    constant C_BLTE   : std_logic_vector(4 downto 0) := "01110"; -- 14 - Branch on Less Than or Equal to Zero
    constant C_BGT    : std_logic_vector(4 downto 0) := "01111"; -- 15 - Branch on Greater Than Zero
    constant C_BLT    : std_logic_vector(4 downto 0) := "10000"; -- 16 - Branch on Less Than Zero
    constant C_BGTE   : std_logic_vector(4 downto 0) := "10001"; -- 17 - Branch on Greater Than or Equal to Zero
	 
begin --BHV
    process(input1, input2, shift_amt, op_sel)
        variable temp_mult : std_logic_vector(width*2-1 downto 0);
    begin --process
        case op_sel is
            when C_ADD_U  => 
                result <= std_logic_vector(unsigned(input1) + unsigned(input2));
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_SUB_U  => 
                result <= std_logic_vector(unsigned(input1) - unsigned(input2));
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_MULT_S => 
                temp_mult := std_logic_vector(signed(input1) * signed(input2));
                result <= temp_mult(width-1 downto 0);
                result_hi <= temp_mult(width*2-1 downto width);
                branch_tkn <= '0';
            when C_MULT_U => 
                temp_mult := std_logic_vector(unsigned(input1) * unsigned(input2));
                result <= temp_mult(width-1 downto 0);
                result_hi <= temp_mult(width*2-1 downto width);
                branch_tkn <= '0';
            when C_AND    => 
                result <= input1 and input2;
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_OR     => 
                result <= input1 or input2;
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_XOR    => 
                result <= input1 xor input2;
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_SHR_L  => 
                result <= std_logic_vector(SHIFT_RIGHT(unsigned(input1), to_integer(unsigned(shift_amt))));
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_SHL_L  => 
                result <= std_logic_vector(SHIFT_LEFT(unsigned(input1), to_integer(unsigned(shift_amt))));
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_SHR_A  => 
                result <= std_logic_vector(SHIFT_RIGHT(signed(input1), to_integer(unsigned(shift_amt))));
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_SLT_S  => --set less than, signed
                if (signed(input1) < signed(input2)) then
                    result <= std_logic_vector(to_unsigned(1, width));
                else
                    result <= (others => '0');
                end if;
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_SLT_U  => --set less than, unsigned
                if (unsigned(input1) < unsigned(input2)) then
                    result <= std_logic_vector(to_unsigned(1, width));
                else
                    result <= (others => '0');
                end if;
                result_hi <= (others => '0');
                branch_tkn <= '0';
            when C_BEQ    => 
                if (signed(input1) = signed(input2)) then
                    branch_tkn <= '1';
                else
                    branch_tkn <= '0';
                end if;
                result <= (others => '0');
                result_hi <= (others => '0');
            when C_BNE    => 
                if (signed(input1) = signed(input2)) then
                    branch_tkn <= '0';
                else
                    branch_tkn <= '1';
                end if;
                result <= (others => '0');
                result_hi <= (others => '0');
            when C_BLTE   => 
                if (signed(input1) <= 0) then
                    branch_tkn <= '1';
                else
                    branch_tkn <= '0';
                end if;
                result <= (others => '0');
                result_hi <= (others => '0');
            when C_BGT    => 
                if (signed(input1) > 0) then
                    branch_tkn <= '1';
                else
                    branch_tkn <= '0';
                end if;
                result <= (others => '0');
                result_hi <= (others => '0');
            when C_BLT    => 
                if (signed(input1) < 0) then
                    branch_tkn <= '1';
                else
                    branch_tkn <= '0';
                end if;
                result <= (others => '0');
                result_hi <= (others => '0');
            when C_BGTE   => 
                if (signed(input1) >= 0) then
                    branch_tkn <= '1';
                else
                    branch_tkn <= '0';
                end if;
                result <= (others => '0');
                result_hi <= (others => '0');
            when others =>
                result <= (others => '0');
                result_hi <= (others => '0');
                branch_tkn <= '0';
        end case;
    end process;
end BHV;