-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity alu is
    generic (
        WIDTH : positive := 16
    );
    port (
        Input1     : in std_logic_vector(WIDTH-1 downto 0);
        Input2     : in std_logic_vector(WIDTH-1 downto 0);
        ShiftAmt   : in std_logic_vector(4 downto 0); -- IR10-6: For shift instructions, this set of bits specifies the shift amount.
        OpSelect   : in std_logic_vector(ALU_SEL_SIZE-1 downto 0); -- OPSelect: will be used by the ALU to execute the desired operation
        Result     : out std_logic_vector(WIDTH-1 downto 0);
        ResultHi   : out std_logic_vector(WIDTH-1 downto 0); -- only ever used when multiplying
        Branch     : out std_logic -- gets asserted if the branch condition is true.
    );
end alu;

architecture BHV of alu is 
begin --BHV
    process(Input1, Input2, ShiftAmt, OpSelect)
        variable temp_mult : std_logic_vector(width*2-1 downto 0);
    begin --process
        case OpSelect is
            when OP_ADD_U  => --add, unsigned
                Result <= std_logic_vector(unsigned(Input1) + unsigned(Input2));
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_SUB_U  => --subtract, unsigned
                Result <= std_logic_vector(unsigned(Input1) - unsigned(Input2));
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_MULT_S => --multiply, signed
                temp_mult := std_logic_vector(signed(Input1) * signed(Input2));
                Result <= temp_mult(width-1 downto 0);
                ResultHi <= temp_mult(width*2-1 downto width);
                Branch <= '0';
            when OP_MULT_U => --multiply, unsigned
                temp_mult := std_logic_vector(unsigned(Input1) * unsigned(Input2));
                Result <= temp_mult(width-1 downto 0);
                ResultHi <= temp_mult(width*2-1 downto width);
                Branch <= '0';
            when OP_AND    => --and
                Result <= Input1 and Input2;
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_OR     => --or
                Result <= Input1 or Input2;
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_XOR    => --xor
                Result <= Input1 xor Input2;
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_SHR_L  => --shift right logical
                Result <= std_logic_vector(SHIFT_RIGHT(unsigned(Input1), to_integer(unsigned(ShiftAmt))));
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_SHL_L  => --shift left logical
                Result <= std_logic_vector(SHIFT_LEFT(unsigned(Input1), to_integer(unsigned(ShiftAmt))));
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_SHR_A  => --shift right arithmetic
                Result <= std_logic_vector(SHIFT_RIGHT(signed(Input1), to_integer(unsigned(ShiftAmt))));
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_SLT_S  => --set less than, signed
                if (signed(Input1) < signed(Input2)) then
                    Result <= std_logic_vector(to_unsigned(1, width));
                else
                    Result <= (others => '0');
                end if;
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_SLT_U  => --set less than, unsigned
                if (unsigned(Input1) < unsigned(Input2)) then
                    Result <= std_logic_vector(to_unsigned(1, width));
                else
                    Result <= (others => '0');
                end if;
                ResultHi <= (others => '0');
                Branch <= '0';
            when OP_BEQ    => --branch if equal to
                if (signed(Input1) = signed(Input2)) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
                Result <= (others => '0');
                ResultHi <= (others => '0');
            when OP_BNE    => --branch if not equal to
                if (signed(Input1) = signed(Input2)) then
                    Branch <= '0';
                else
                    Branch <= '1';
                end if;
                Result <= (others => '0');
                ResultHi <= (others => '0');
            when OP_BLTE   => --branch if less than or equal to 0
                if (signed(Input1) <= 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
                Result <= (others => '0');
                ResultHi <= (others => '0');
            when OP_BGT    => --branch if greater than 0
                if (signed(Input1) > 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
                Result <= (others => '0');
                ResultHi <= (others => '0');
            when OP_BLT    => --branch if less than 0
                if (signed(Input1) < 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
                Result <= (others => '0');
                ResultHi <= (others => '0');
            when OP_BGTE   => --branch if greater than or equal to 0
                if (signed(Input1) >= 0) then
                    Branch <= '1';
                else
                    Branch <= '0';
                end if;
                Result <= (others => '0');
                ResultHi <= (others => '0');
            when others => --invalid operations
                Result <= (others => '0');
                ResultHi <= (others => '0');
                Branch <= '0';
        end case;
    end process;
end BHV;