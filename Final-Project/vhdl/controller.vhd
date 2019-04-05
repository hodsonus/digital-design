-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity controller is
    port (
        clk          : in std_logic; -- 50MHz internal clock
        rst          : in std_logic; -- reset for the entire circuit, except for the input ports
        PCWriteCond  : out std_logic; -- enables the PC register if the “Branch” signal is asserted.
        PCWrite      : out std_logic; -- enables the PC register.
        IorD         : out std_logic; -- select between the PC or the ALU output as the memory address.
        MemRead      : out std_logic; -- enables memory read.
        MemWrite     : out std_logic; -- enables memory write.
        MemToReg     : out std_logic; -- select between “Memory data register” or “ALU output” as input to “write data” signal.
        IRWrite      : out std_logic; -- enables the instruction register.
        JumpAndLink  : out std_logic; -- when asserted, $s31 will be selected as the write register.
        IsSigned     : out std_logic; -- when asserted, “Sign Extended” will output a 32-bit sign extended representation of 16-bit input.
        PCSource     : out std_logic_vector(1 downto 0); -- select between the “ALU output”, “ALU OUT Reg”, or a “shifted to left PC” as an input to PC.
        OpSelect     : out std_logic_vector(ALU_SEL_SIZE-1 downto 0); -- used by the ALU controller to determine the desired operation to be executed by the ALU. It is up to you to determine how to use this signal. There are many possible ways of implementing the required functionality.
        ALUSrcA      : out std_logic; -- select between RegA or Pc as the Input1 of the ALU.
        ALUSrcB      : out std_logic_vector(1 downto 0); -- select between RegB, “4”, IR15-0, or “shifted IR15-0” as the Input2 of the ALU.
        RegWrite     : out std_logic; -- enables the register file
        RegDst       : out std_logic; -- select between IR20-16 or IR15-11 as the input to the “Write Reg”
        ALU_LO_HI    : out std_logic_vector(1 downto 0); -- select between the ALUOut, LO, and HI registers to write to the register file
        LO_en        : out std_logic; -- condition for updating the LO reg, output from the controller
        HI_en        : out std_logic; -- condition for updating the HI reg, output from the controller
        IR31downto26 : in  std_logic_vector(5 downto 0); -- IR31-26 (the OPCode): Will be decoded by the controller to determine what instruction to execute.
        IR5downto0   : in  std_logic_vector(5 downto 0); -- Necessary to further decode R Type instructions
        IR20downto16 : in  std_logic_vector(4 downto 0) -- Necessary to discern between BGEZ and BLTZ instructions
    );
end controller;

architecture FSM of controller is

    type STATE_TYPE is (INSTRUCTION_FETCH, LOAD_IR, INSTRUCTION_DECODE,
                        R_TYPE_EXECUTION, I_TYPE_EXECUTION,
                        R_TYPE_COMPLETION, I_TYPE_COMPLETION,
                        MEMORY_ADDRESS_COMPUTATION,
                        MEMORY_ACCESS_READ, LOAD_MEMORY_DATA_REG, MEMORY_READ_COMPLETION,
                        MEMORY_ACCESS_WRITE,
                        BRANCH_COMPLETION,
                        HALT); 
    signal state, next_state : STATE_TYPE;

    signal IR5downto0_ext : unsigned(7 downto 0); -- this is done so we can match on hex codes instead of straight up binary
    signal IR31downto26_ext : unsigned(7 downto 0); -- same as above

begin --FSM

    process(clk,rst)
    begin --process
        if (rst = '1') then
            state <= INSTRUCTION_FETCH;
        elsif (rising_edge(clk)) then
            state <= next_state;
        end if;
    end process;

    IR5downto0_ext <= resize(unsigned(IR5downto0),8); -- _ext -> "extended" version of the signal
    IR31downto26_ext <= resize(unsigned(IR31downto26),8); -- _ext -> "extended" version of the signal

    process(IR31downto26_ext, IR5downto0_ext, state)
    begin --process

        -- set default values for any of the combinational logic decided in this process
        PCWriteCond <= '0';
        PCWrite     <= '0';
        IorD        <= '0';
        MemRead     <= '0';
        MemWrite    <= '0';
        MemToReg    <= '0';
        IRWrite     <= '0';
        JumpAndLink <= '0';
        IsSigned    <= '0';
        PCSource    <= "00";
        OpSelect    <= (others => '0');
        ALUSrcA     <= '0';
        ALUSrcB     <= "00";
        RegWrite    <= '0';
        RegDst      <= '0';
        ALU_LO_HI   <= "00";
        LO_en       <= '0';
        HI_en       <= '0'; 
        next_state  <= state;

        case state is

            -- at the end of this state, the next instruction (that is currently at PC) will be at the output of the memory and the PC will be at PC+4
            when INSTRUCTION_FETCH =>

                -- read the instruction from the memory
                IorD <= '0'; -- select the current PC to read from the memory
                MemRead <= '1'; -- instruction will be on the data output of the memory after the next clock edge

                -- load the PC with PC+4
                ALUSrcA <= '0'; -- select the current PC output
                ALUSrcB <= "01"; -- select the constant 4
                OpSelect <= OP_ADD_U; -- add them unsigned
                PCSource <= "00"; -- set the mux on the PC input to select the unregistered ALU output
                PCWrite <= '1'; -- enable writing to the PC

                -- must load the instruction register from the output of the memory, which will be available after the next clock edge
                next_state <= LOAD_IR;

            -- load the next instruction into the instruction register
            when LOAD_IR => 

                -- load the data output from the memory into the instruction register
                IRWrite <= '1';

                -- move to decoding the instructions as after the next clock cycle the IR will be outputting the instruction
                next_state <= INSTRUCTION_DECODE;

            -- decode the op code and determine what type of instruction we are implementing
            when INSTRUCTION_DECODE =>

                -- add together PC+4 and the signed branch offset. at the end of this instruction, the value will be coming out of the ALUOut register
                ALUSrcA <= '0'; -- PC+4 into ALU Input A
                IsSigned <= '1'; -- sign extend IR(15 downto 0) to 32 bits
                ALUSrcB <= "11"; -- load in the sign extended version of IR(15 downto 0) that has been shifted to the left twice
                OPSelect <= OP_ADD_U; -- add these things together

                if (IR31downto26_ext = x"00")
                    then next_state <= R_TYPE_EXECUTION;

                elsif (IR31downto26_ext = x"09" or IR31downto26_ext = x"10" or
                        IR31downto26_ext = x"0C" or IR31downto26_ext = x"0D" or
                        IR31downto26_ext = x"0E" or IR31downto26_ext = x"0A" or
                        IR31downto26_ext = x"0B") then next_state <= I_TYPE_EXECUTION;

                elsif (IR31downto26_ext = x"23" or IR31downto26_ext = x"2B")
                    then next_state <= MEMORY_ADDRESS_COMPUTATION;

                elsif(IR31downto26_ext = x"04" or IR31downto26_ext = x"05" or
                        IR31downto26_ext = x"06" or IR31downto26_ext = x"07" or
                        IR31downto26_ext = x"01")
                    then next_state <= BRANCH_COMPLETION;

                elsif (IR31downto26_ext = x"3F")
                    then next_state <= HALT;

                end if;

            -- decode the r type instructions EVEN FURTHER, selecting the individual function that is desired and setting the appropriate ALU function
            when R_TYPE_EXECUTION =>

                -- select the two registered outputs from the instruction register (registers A and B). IR(25 downto 21) (which is rs)
                -- and IR(20 downto 16) (which is rt) are available at the outside of the registers in this state
                ALUSrcA <= '1';
                ALUSrcB <= "00";

                -- by default, move to the state that stores ALUOut into s1
                next_state <= R_TYPE_COMPLETION;

                -- decode the instruction even further
                case IR5downto0_ext is
                    when x"21" => -- add - unsigned
                        OpSelect <= OP_ADD_U;
                    when x"23" => -- sub unsigned
                        OpSelect <= OP_SUB_U;
                    when x"18" => -- mult
                        OpSelect <= OP_MULT_S;
                        LO_en <= '1';
                        HI_en <= '1'; 
                    when x"19" => -- mult unsigned
                        OpSelect <= OP_MULT_U;
                        LO_en <= '1';
                        HI_en <= '1';
                    when x"24" => -- and
                        OpSelect <= OP_AND;
                    when x"25" => -- or
                        OpSelect <= OP_OR;
                    when x"26" => -- xor
                        OpSelect <= OP_XOR; 
                    when x"02" => -- srl -shift right logical
                        OpSelect <= OP_SHR_L; 
                    when x"00" => -- sll -shift left logical 
                        OpSelect <= OP_SHL_L;
                    when x"03" => -- sra -shift right arithmetic
                        OpSelect <= OP_SHR_A;
                    when x"2A" => -- slt -set on less than signed
                        OpSelect <= OP_SLT_S;
                    when x"2B" => -- sltu - set on less than unsigned
                        OpSelect <= OP_SLT_U;
                    when x"10" =>  -- mfhi -move from Hi
                        ALU_LO_HI <= "10"; -- output the HI register from the ALU ouputs mux
                        MemToReg <= '0'; -- select the output of the ALU outputs mux to be written to the registers file
                        RegDst <= '1'; -- select IR(15 downto 11) to be written to (this is the same as 'rd' in the MIPs instruction set manual)
                        RegWrite <= '1'; -- enable writing to the registers file
                        next_state <= INSTRUCTION_FETCH; -- we are done with this instruction after this clock edge, so move back to the beginnning state
                    when x"12" => -- mflo -move from LO
                        ALU_LO_HI <= "01"; -- output the LO register from the ALU ouputs mux
                        MemToReg <= '0'; -- select the output of the ALU outputs mux to be written to the registers file
                        RegDst <= '1'; -- select IR(15 downto 11) to be written to (this is the same as 'rd' in the MIPs instruction set manual)
                        RegWrite <= '1'; -- enable writing to the registers file
                        next_state <= INSTRUCTION_FETCH; -- we are done with this instruction after this clock edge, so move back to the beginnning state
                    when x"08" => -- jump register
                        -- TODO, week 3 deliverable ?
                        next_state <= INSTRUCTION_FETCH;
                    when others => report "Invalid R Type instruction while decoding." severity note;
                end case;

            -- this state stores ALUOut into the register specified by IR 15 downto 11 (this is S1 in the excel instructions sheet?)
            when R_TYPE_COMPLETION =>

                ALU_LO_HI <= "00"; -- select ALUOut from ALUOut, LO, and HI
                MemToReg <= '0'; -- select the outputs of the ALU from MemoryDataReg and the outputs of the ALU
                RegDst <= '1'; -- the destination register is IR(15 downto 11) (the same thing as 'rd' in the MIPs manual)
                RegWrite <= '1'; -- enable the write to the register file
                next_state <= INSTRUCTION_FETCH; -- move back to the instruction fetch state and do it all over again!

            -- decode the i type instructions EVEN FURTHER, choosing whether to interpret the immediate value as signed or unsigned
            when I_TYPE_EXECUTION =>

                -- select the registered output A from the instruction register. IR(25 downto 21) (which is rs) with ALUSrcA
                -- select the immediate value from the IR, either signed or unsigned (dependent on instuction) with ALUSrcB
                ALUSrcA <= '1';
                ALUSrcB <= "10";

                -- by default, move to the state that stores ALUOut into s1
                next_state <= I_TYPE_COMPLETION;

                -- decode the instruction even further
                case IR31downto26_ext is
                    when x"09" => -- add immediate unsigned
                        IsSigned <= '1';
                        OpSelect <= OP_ADD_U;
                    when x"10" => -- sub immediate unsigned (not MIPS)
                        IsSigned <= '1';
                        OpSelect <= OP_SUB_U;
                    when x"0C" => -- andi
                        IsSigned <= '0';
                        OpSelect <= OP_AND;
                    when x"0D" => -- ori
                        IsSigned <= '0';
                        OpSelect <= OP_OR;
                    when x"0E" => -- xori
                        IsSigned <= '0';
                        OpSelect <= OP_XOR;
                    when x"0A" => -- slti -set on less than immediate signed
                        IsSigned <= '1';
                        OpSelect <= OP_SLT_S;
                    when x"0B" => -- sltiu- set on less than immediate unsigned
                        IsSigned <= '1';
                        OpSelect <= OP_SLT_U;
                    when others =>
                        report "Invalid I Type instruction while decoding. We should not be in this state if this happened." severity note;
                        next_state <= INSTRUCTION_FETCH;
                end case;

            -- this state stores ALUOut into the register specified by IR(20 downto 16) (this is S1 in the excel instructions sheet and 'rt' in the MIPS manual)
            when I_TYPE_COMPLETION =>

                ALU_LO_HI <= "00"; -- select ALUOut from ALUOut, LO, and HI
                MemToReg <= '0'; -- select the outputs of the ALU from MemoryDataReg and the outputs of the ALU
                RegDst <= '0'; -- the destination register is IR(20 downto 16) (the same thing as 'rt' in the MIPs manual)
                RegWrite <= '1'; -- enable the write to the register file
                next_state <= INSTRUCTION_FETCH; -- move back to the instruction fetch state and do it all over again!

            -- when we are in this state, that means we either are completing a load word or a store word instruction
            -- we must compute the address that this is happening at (that is, $s2 + offset or alternatively, IR(25 downto 21) + IR(15 downto 0))
            -- at the end of this state, the memory address that has been computed will be stored in ALUOut
            when MEMORY_ADDRESS_COMPUTATION => 

                ALUSrcA <= '1'; -- select the output from RegA, that is, IR(25 downto 21)
                IsSigned <= '0'; -- this is not a signed memory address computation
                ALUSrcB <= "10"; -- select IR(15 downto 0), 0 extended to 32 bits
                OpSelect <= OP_ADD_U; -- add them unsigned

                if (IR31downto26_ext = x"23") then next_state <= MEMORY_ACCESS_READ;
                elsif (IR31downto26_ext = x"2B") then next_state <= MEMORY_ACCESS_WRITE;
                else 
                    report "Invalid memory access instruction while decoding. We should not be in this state if this happened." severity note;
                    next_state <= INSTRUCTION_FETCH;
                end if;

            -- in this state, the computed memory address should be at the output of the ALUOut register
            -- take this, and read from the memory.
            -- this state is used for the load word instruction
            when MEMORY_ACCESS_READ =>

                IorD <= '1'; -- select the ALUOut register to read from the memory with
                MemRead <= '1'; -- select the option to read from the memory
                next_state <= LOAD_MEMORY_DATA_REG;

            -- at this state, the result of the read from RAM should be at the input of the memory data register
            -- if we wait one cycle it should be clocked into this register and then we can use it
            -- if there are problems here, it probably has to do with this data being available here
            when LOAD_MEMORY_DATA_REG =>
                
                -- do nothing, we want to save the data we just read from the offsetted address into memory
                -- data so that we can use it to store in the next state
                next_state <= MEMORY_READ_COMPLETION;

            -- in this state, we must write the data available in the memory data register to the address
            -- specified by the load word instruction. this address is available in IR(20 downto 16)
            when MEMORY_READ_COMPLETION =>
            
                RegDst <= '0'; -- select the IR(20 downto 16) for the address to write to
                MemToReg <= '1'; -- select the memroy data register to get the data to write
                RegWrite <= '1'; -- enable writing to the registers file
                next_state <= INSTRUCTION_FETCH; -- move back to the beginning, this is the end of the load word instruction

            -- in this state, the computed memory address should be at the output of the ALUOut register
            -- take this, and write to the memory.
            -- we want to write the contents of IR(20 downto 16) ('rt' in the manual) to the memory
            -- this is available in RegB already! this is the only thing that we can write to the memory
            -- so it is available by default. enable writing to the memory and select the correct address
            -- and we are done
            -- this state is used for the store word instruction
            when MEMORY_ACCESS_WRITE =>
            
                IorD <= '1'; -- select the ALUOut register to write to the memory with 
                MemWrite <= '1'; -- enable writing
                next_state <= INSTRUCTION_FETCH;

            -- in this state, the precomputed address that we can jump to is located at the output of the ALUOut register
            -- we want to use the PCWriteCond here, as it is a 'soft' suggestion that we write to the PC that is also dependent
            -- on whether the ALU wants to branch or not
            when BRANCH_COMPLETION => 

                PCWriteCond <= '1'; -- a soft suggestion to write to the PC, also dependent on Branch
                next_state <= INSTRUCTION_FETCH; -- regardless if we branch or not, next state is the instruction fetch
                ALUSrcA <= '1'; -- select register A to input to the ALU (register A -> IR(25 downto 21))
                ALUSrcB <= "00"; -- select register B to input to the ALU (register B -> IR(20 downto 16))

                case IR31downto26_ext is
                    when x"04" => -- branch on equal
                        OpSelect <= OP_BEQ;
                    when x"05" => -- branch not equal
                        OpSelect <= OP_BNE;
                    when x"06" => -- Branch on Less Than or Equal to Zero
                        OpSelect <= OP_BLTE;
                    when x"07" => -- Branch on Greater Than Zero
                        OpSelect <= OP_BGT;
                    when x"01" => -- Branch on Less Than Zero OR Branch on Greater Than or Equal to Zero
                        if (IR20downto16 = "00001") then -- it's a branch greater than or equal to zero
                            OpSelect <= OP_BGTE;
                        elsif(IR20downto16 = "00000") then -- it's a branch less than
                            OpSelect <= OP_BLT;
                        else report "Unable to determine if BLTZ or BGEZ." severity note;
                        end if;
                    when others => report "Invalid branch instruction while decoding. We should not be in this state if this happened." severity note;
                end case;

            -- fake instruction to stop the computer from repeatedly fetching and executing bad instructions. useful for week 2 deliverables
            when HALT =>
                next_state <= state; -- loop endlessly
        end case;
    end process;
end FSM;