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
        IR5downto0   : in  std_logic_vector(5 downto 0) -- Necessary to further decode R Type instructions
    );
end controller;

architecture FSM of controller is

    type STATE_TYPE is (INSTRUCTION_FETCH, LOAD_IR, DECODE_INSTRUCTION,
                        R_TYPE, I_TYPE,
                        AFTER_R_TYPE,
                        HALT); 
    signal state, next_state : STATE_TYPE;
    signal IR5downto0_ext : unsigned(7 downto 0);

begin --FSM

    process(clk,rst)
    begin --process
        if (rst = '1') then
            state <= INSTRUCTION_FETCH;
        elsif (rising_edge(clk)) then
            state <= next_state;
        end if;
    end process;

    IR5downto0_ext <= resize(unsigned(IR5downto0),8);

    process(IR31downto26, IR5downto0_ext, state)
    begin --process

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
                next_state <= DECODE_INSTRUCTION;

            -- decode the op code and determine what type of instruction we are implementing
            when DECODE_INSTRUCTION =>

                if (IR31downto26 = "000000") then next_state <= R_TYPE;
                --elsif () then next_state <= I_TYPE; TODO
                elsif (IR31downto26 = "111111") then next_state <= HALT;
                end if;

            -- decode the r type instructions EVEN FURTHER, selecting the individual function that is desired and setting the appropriate ALU function
            when R_TYPE =>

                -- select the two registered outputs from the instruction register (registers A and B). IR(25 downto 21) (which is rs)
                -- and IR(20 downto 16) (which is rt) are available at the outside of the registers in this state
                ALUSrcA <= '1';
                ALUSrcB <= "00";

                -- by default, move to the state that stores ALUOut into s1 by default
                next_state <= AFTER_R_TYPE;

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
                        -- TODO
                        next_state <= INSTRUCTION_FETCH;
                    when others => report "Invalid R Type instruction while decoding." severity note;
                end case;

            -- this state stores ALUOut into the register specified by IR 15 downto 11 (this is S1 in the excel instructions sheet?)
            when AFTER_R_TYPE =>

                ALU_LO_HI <= "00"; -- select ALUOut from ALUOut, LO, and HI
                MemToReg <= '0'; -- select the outputs of the ALU from MemoryDataReg and the outputs of the ALU
                RegDst <= '1'; -- the destination register is IR(15 downto 11) (the same thing as 'rd' in the MIPs manual)
                RegWrite <= '1'; -- enable the write to the register file
                next_state <= INSTRUCTION_FETCH; -- move back to the instruction fetch stage and do it all over again!

            when I_TYPE =>
                -- TODO??

            when HALT => -- fake instruction to stop the computer from repeatedly fetching and executing bad instructions
                next_state <= state;
        end case;
    end process;
end FSM;