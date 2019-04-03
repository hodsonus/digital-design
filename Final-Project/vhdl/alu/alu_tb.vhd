-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity alu_tb is
end alu_tb;

architecture TB of alu_tb is
    constant WIDTH  : positive := 8;
	signal Input1   : std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
    signal Input2   : std_logic_vector(WIDTH-1 downto 0) := (others=>'0');
    signal OpSelect : std_logic_vector(ALU_SEL_SIZE-1 downto 0) := (others=>'0');
    signal ShiftAmt : std_logic_vector(4 downto 0) := (others=>'0');
    signal Result   : std_logic_vector(WIDTH-1 downto 0);
    signal ResultHi : std_logic_vector(WIDTH-1 downto 0);
    signal Branch   : std_logic := '0';

    signal done        : std_logic := '0';
    signal total       : std_logic_vector(width*2-1 downto 0) := (others=>'0');
    signal expected    : std_logic_vector(width-1 downto 0) := (others=>'0');
    signal expected_hi : std_logic_vector(width-1 downto 0) := (others=>'0');
begin --TB
	UUT: entity work.alu
        generic map ( WIDTH => WIDTH )
        port map (
            Input2   => Input2,
			Input1   => Input1,
            ShiftAmt => ShiftAmt,
            OpSelect => OpSelect,
            Result   => Result,
            ResultHi => ResultHi,
            Branch   => Branch
		);
    process
    begin --process
        for i in 0 to 2**(WIDTH)-1 loop -- input1
            for j in 0 to 2**(WIDTH)-1 loop -- input2

                Input1 <= std_logic_vector(to_unsigned(i, WIDTH));
                Input2 <= std_logic_vector(to_unsigned(j, WIDTH));

                -- start arithmetic operations

                OpSelect <= OP_ADD_U;
                wait for 10 ns;
                assert(Result = std_logic_vector(to_unsigned(i, WIDTH)+to_unsigned(j, WIDTH))) report "OP_ADD_U Result incorrect" severity failure;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_ADD_U ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_ADD_U Branch incorrect" severity failure;

                OpSelect <= OP_SUB_U;
                wait for 10 ns;
                assert(Result = std_logic_vector(to_unsigned(i, WIDTH)-to_unsigned(j, WIDTH))) report "OP_SUB_U Result incorrect" severity failure;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SUB_U ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_SUB_U Branch incorrect" severity failure;

                OpSelect <= OP_MULT_S;
                wait for 10 ns;
                assert(ResultHi&Result = std_logic_vector(to_signed(i, WIDTH)*to_signed(j, WIDTH))) report "OP_MULT_S Result&ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_MULT_S Branch incorrect" severity failure;

                OpSelect <= OP_MULT_U;
                wait for 10 ns;
                assert(ResultHi&Result = std_logic_vector(to_unsigned(i, WIDTH)*to_unsigned(j, WIDTH))) report "OP_MULT_U Result&ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_MULT_U Branch incorrect" severity failure;

                OpSelect <= OP_AND;
                wait for 10 ns;
                assert(Result = std_logic_vector(to_unsigned(i, WIDTH) and to_unsigned(j, WIDTH))) report "OP_AND Result incorrect" severity failure;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_AND ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_AND Branch incorrect" severity failure;

                OpSelect <= OP_OR;
                wait for 10 ns;
                assert(Result = std_logic_vector(to_unsigned(i, WIDTH) or to_unsigned(j, WIDTH))) report "OP_OR Result incorrect" severity failure;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_OR ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_OR Branch incorrect" severity failure;

                OpSelect <= OP_XOR;
                wait for 10 ns;
                assert(Result = std_logic_vector(to_unsigned(i, WIDTH) xor to_unsigned(j, WIDTH))) report "OP_XOR Result incorrect" severity failure;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_XOR ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_XOR Branch incorrect" severity failure;

                -- end arithmetic operations
                -- start shift operations

                for k in 0 to 2**5-1 loop -- k = ShiftAmt
                    
                    ShiftAmt <= std_logic_vector(to_unsigned(k,5));
                    wait for 10 ns;

                    OpSelect <= OP_SHR_L;
                    wait for 10 ns;
                    assert(Result = std_logic_vector(SHIFT_RIGHT(to_unsigned(i, WIDTH), k))) report "OP_SHR_L Result incorrect" severity failure;
                    assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SHR_L ResultHi incorrect" severity failure;
                    assert(Branch = '0') report "OP_SHR_L Branch incorrect" severity failure;

                    OpSelect <= OP_SHL_L;
                    wait for 10 ns;
                    assert(Result = std_logic_vector(SHIFT_LEFT(to_unsigned(i, WIDTH), k))) report "OP_SHL_L Result incorrect" severity failure;
                    assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SHL_L ResultHi incorrect" severity failure;
                    assert(Branch = '0') report "OP_SHL_L Branch incorrect" severity failure;

                    OpSelect <= OP_SHR_A;
                    wait for 10 ns;
                    assert(Result = std_logic_vector(SHIFT_RIGHT(to_signed(i, WIDTH), k))) report "OP_SHR_A Result incorrect" severity failure;
                    assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SHR_A ResultHi incorrect" severity failure;
                    assert(Branch = '0') report "OP_SHR_A Branch incorrect" severity failure;

                end loop; 
                
                -- end shift operations
                -- start set ons

                OpSelect <= OP_SLT_S;
                wait for 10 ns;
                if (to_signed(i, WIDTH) < to_signed(j, WIDTH)) then
                    assert(Result = std_logic_vector(to_unsigned(1,WIDTH))) report "OP_SLT_S Result incorrect" severity failure;
                else
                    assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SLT_S Result incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SLT_S ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_SLT_S Branch incorrect" severity failure;

                OpSelect <= OP_SLT_U;
                wait for 10 ns;
                if (to_unsigned(i, WIDTH) < to_unsigned(j, WIDTH)) then
                    assert(Result = std_logic_vector(to_unsigned(1,WIDTH))) report "OP_SLT_U Result incorrect" severity failure;
                else
                    assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SLT_U Result incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_SLT_U ResultHi incorrect" severity failure;
                assert(Branch = '0') report "OP_SLT_U Branch incorrect" severity failure;

                -- end set ons
                -- start branches

                OpSelect <= OP_BEQ;
                wait for 10 ns;
                if (to_signed(i, WIDTH) = to_signed(j, WIDTH)) then
                    assert(Branch = '1') report "OP_BEQ Branch incorrect" severity failure;
                else
                    assert(Branch = '0') report "OP_BEQ Branch incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BEQ ResultHi incorrect" severity failure;
                assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BEQ Result incorrect" severity failure;

                OpSelect <= OP_BNE;
                wait for 10 ns;
                if (to_signed(i, WIDTH) = to_signed(j, WIDTH)) then
                    assert(Branch = '0') report "OP_BNE Branch incorrect" severity failure;
                else
                    assert(Branch = '1') report "OP_BNE Branch incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BNE ResultHi incorrect" severity failure;
                assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BNE Result incorrect" severity failure;

                OpSelect <= OP_BLTE;
                wait for 10 ns;
                if (to_signed(i, WIDTH) <= to_signed(0, WIDTH)) then
                    assert(Branch = '1') report "OP_BLTE Branch incorrect" severity failure;
                else
                    assert(Branch = '0') report "OP_BLTE Branch incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BLTE ResultHi incorrect" severity failure;
                assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BLTE Result incorrect" severity failure;

                OpSelect <= OP_BGT;
                wait for 10 ns;
                if (to_signed(i, WIDTH) > to_signed(0, WIDTH)) then
                    assert(Branch = '1') report "OP_BGT Branch incorrect" severity failure;
                else
                    assert(Branch = '0') report "OP_BGT Branch incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BGT ResultHi incorrect" severity failure;
                assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BGT Result incorrect" severity failure;

                OpSelect <= OP_BLT;
                wait for 10 ns;
                if (to_signed(i, WIDTH) < to_signed(0, WIDTH)) then
                    assert(Branch = '1') report "OP_BLT Branch incorrect" severity failure;
                else
                    assert(Branch = '0') report "OP_BLT Branch incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BLT ResultHi incorrect" severity failure;
                assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BLT Result incorrect" severity failure;

                OpSelect <= OP_BGTE;
                wait for 10 ns;
                if (to_signed(i, WIDTH) >= to_signed(0, WIDTH)) then
                    assert(Branch = '1') report "OP_BGTE Branch incorrect" severity failure;
                else
                    assert(Branch = '0') report "OP_BGTE Branch incorrect" severity failure;
                end if;
                assert(ResultHi = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BGTE ResultHi incorrect" severity failure;
                assert(Result = std_logic_vector(to_unsigned(0,WIDTH))) report "OP_BGTE Result incorrect" severity failure;

                --end branches

            end loop;
        end loop;

        done <= '1';
        report "DONE!!!!";
        wait;
    end process;

end TB;