-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity datapath is
    port(
        clk         : in  std_logic;
        rst         : in  std_logic;

        PCWriteCond : in  std_logic; -- enables the PC register if the “Branch” signal is asserted.
        PCWrite     : in  std_logic; -- enables the PC register.
        IorD        : in  std_logic; -- select between the PC or the ALU output as the memory address.
        MemRead     : in  std_logic; -- enables memory read.
        MemWrite    : in  std_logic; -- enables memory write.
        MemToReg    : in  std_logic; -- select between “Memory data register” or “ALU output” as input to “write data” signal.
        IRWrite     : in  std_logic; -- enables the instruction register.
        JumpAndLink : in  std_logic; -- when asserted, $s31 will be selected as the write register.
        IsSigned    : in  std_logic; -- when asserted, “Sign Extended” will output a 32-bit sign extended representation of 16-bit input.
        PCSource    : in  std_logic_vector(1 downto 0); -- select between the “ALU output”, “ALU OUT Reg”, or a “shifted to left PC” as an input to PC.
        ALUOp       : in  std_logic_vector(ALU_SEL_SIZE-1 downto 0); -- used by the ALU controller to determine the desired operation to be executed by the ALU. It is up to you to determine how to use this signal. There are many possible ways of implementing the required functionality.
        ALUSrcA     : in  std_logic; -- select between RegA or Pc as the Input1 of the ALU.
        ALUSrcB     : in  std_logic_vector(1 downto 0); -- select between RegB, “4”, IR15-0, or “shifted IR15-0” as the Input2 of the ALU.
        RegWrite    : in  std_logic; -- enables the register file
        RegDst      : in  std_logic; -- select between IR20-16 or IR15-11 as the input to the “Write Reg”
        OPCode      : out std_logic_vector(5 downto 0) -- IR31-26 (the OPCode): Will be decoded by the controller to determine what instruction to execute.
    );
end datapath;

architecture STR of datapath is
    signal PC             : std_logic_vector(31 downto 0); -- the output of the program counter
    signal ALUOut         : std_logic_vector(31 downto 0); -- output of the ALU, input to the ALUOutReg
    signal ALUOutReg      : std_logic_vector(31 downto 0); -- output of the ALUOutReg, used throughout the circuit
    signal MemAddr        : std_logic_vector(31 downto 0); -- address to the memory, selected from ALUOutReg and the PC
    signal IR             : std_logic_vector(31 downto 0); -- output from the instruction register
    signal WriteRegister  : std_logic_vector( 4 downto 0); -- the selection between IR20-16 and IR15-11, an input to the Registers File
    signal WriteData      : std_logic_vector(31 downto 0); -- selection b/w ALUOutSeletion and MemDataReg
    signal MemData        : std_logic_vector(31 downto 0); -- the memory data, fed into the memory data register
    signal MemDataReg     : std_logic_vector(31 downto 0); -- data from the memory data register
    signal ALUOutSeletion : std_logic_vector(31 downto 0); -- selected from the ALUOutReg, LOReg, HIReg
    signal RegAIn         : std_logic_vector(31 downto 0); -- input for the ALU Source A Register
    signal RegBIn         : std_logic_vector(31 downto 0); -- input for the ALU Source B Register
    signal RegAOut        : std_logic_vector(31 downto 0); -- ALU Source A Register
    signal RegBOut        : std_logic_vector(31 downto 0); -- ALU Source B Register
    signal ALUInputA      : std_logic_vector(31 downto 0); -- ALU Input A
    signal ALUInputB      : std_logic_vector(31 downto 0); -- ALU Input B
    signal OPSelect       : std_logic_vector(ALU_SEL_SIZE-1 downto 0); -- the signal from ALU contorl to ALU, controls the operation that the ALU performs
    signal PCInput        : std_logic_vector(31 downto 0); -- selects between ALUOut,ALUOutReg, and a combination of IR25:0 and PC31:28 (Mux4BSrc2)
    signal HI             : std_logic_vector(31 downto 0); -- HI bit of the output of the ALU. Only set when the operation last performed by the ALU was a mult
    signal HIReg          : std_logic_vector(31 downto 0); -- registered version of HI
    signal LO             : std_logic_vector(31 downto 0); -- LO bit of the output of the ALU. The same as ALUOut
    signal LOReg          : std_logic_vector(31 downto 0); -- registered version of LO
    signal Branch         : std_logic; -- set by the ALU, it enables the PC to load in a new value
    signal ALU_LO_HI      : std_logic_vector(1 downto 0); -- set by the ALU control, it selects between ALUOut, LOReg, and HIReg
    signal Mux4ASrc2      : std_logic_vector(31 downto 0); -- IR15:0, sign extended to 32 bits
    signal Mux4ASrc3      : std_logic_vector(31 downto 0); -- Mux4ASrc2, but shifted left twice (multiplied by 4)
    signal Mux4BSrc2      : std_logic_vector(31 downto 0); -- a combination of IR25:0 and PC31:28 that potentially becomes PCInput and feeds into the PC
    signal PC_en          : std_logic; -- condition for updating the PC, ((Branch and PCWriteCond) or PCWrite)
    signal HI_en          : std_logic; -- condition for updating the HI reg, output from the ALU control
    signal LO_en          : std_logic; -- condition for updating the LO reg, output from the ALU control
begin --STR

    -- X IMPLEMENT MUXES
    -- X IMPLEMENT ALU
    -- X IMPLEMENT REGISTERS
    -- O IMPLEMENT MEMORY
    -- O IMPLEMENT REGISTER FILE
    -- X IMPLEMENT EXTENDERS
    -- X IMPLEMENT SHIFTERS
    -- X IMPLEMENT CONCATENATOR

    U_PROGRAM_COUNTER: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => PC_en,
            input  => PCInput,
            output => PC
        );

    PC_en <= ((Branch and PCWriteCond) or PCWrite);

    --TODO, Memory entity here

    U_INSTRUCTION_REGISTER: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => IRWrite,
            input  => MemData,
            output => IR
        );

    U_MEMORY_DATA_REGISTER: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => '1',
            input  => MemData,
            output => MemDataReg
        );

    U_MUX_2x1_A: entity work.mux_2x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => IorD,
            in0    => PC,
            in1    => ALUOutReg,
            output => MemAddr
        );

    U_MUX_2x1_B: entity work.mux_2x1
        generic map (
            WIDTH => 5
        )
        port map(
            sel    => RegDst,
            in0    => IR(20 downto 16),
            in1    => IR(15 downto 11),
            output => WriteRegister
        );

    U_MUX_2x1_C: entity work.mux_2x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => MemToReg,
            in0    => ALUOutSeletion,
            in1    => MemDataReg,
            output => WriteData
        );

    -- TODO, Register file here

    U_REGISTER_A: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => '1',
            input  => RegAIn,
            output => RegAOut
        );

    U_REGISTER_B: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => '1',
            input  => RegBIn,
            output => RegBOut
        );

    U_MUX_2x1_D: entity work.mux_2x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => ALUSrcA,
            in0    => PC,
            in1    => RegAOut,
            output => ALUInputA
        );

    U_SIGN_EXTEND_MUX_4A: entity work.extender
        generic map (
            IN_WIDTH => 16,
            OUT_WIDTH => 32
        )
        port map (
            IsSigned => IsSigned,
            input    => IR(15 downto 0),
            output   => Mux4ASrc2
        );

    Mux4ASrc3 <= std_logic_vector(SHIFT_LEFT(unsigned(Mux4ASrc2), 2));

    U_MUX_4x1_A: entity work.mux_4x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => ALUSrcB,
            in0    => RegBOut,
            in1    => std_logic_vector(to_unsigned(4, 32)), --the constant, 4
            in2    => Mux4ASrc2,
            in3    => Mux4ASrc3,
            output => ALUInputB
        );

    U_ALU_CONTROLLER: entity work.alu_ctrl
        port map (
            ALUOp       => ALUOp,
            instruction => IR(5 downto 0),
            OPSelect    => OpSelect,
            ALU_LO_HI   => ALU_LO_HI,
            HI_en       => HI_en,
            LO_en       => LO_en
        );

    U_ALU: entity work.alu
        generic map (
            WIDTH => 32
        )
        port map(
            Input1   => ALUInputA,
            Input2   => ALUInputB,
            ShiftAmt => IR(10 downto 6),
            OpSelect => OpSelect,
            Result   => ALUOut,
            ResultHi => HI,
            Branch   => Branch
        );

    Mux4BSrc2 <= PC(31 downto 28) & IR(25 downto 0) & "00";

    U_MUX_4x1_B: entity work.mux_4x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => PCSource,
            in0    => ALUOut,
            in1    => ALUOutReg,
            in2    => Mux4BSrc2,
            in3    => std_logic_vector(to_unsigned(0, 32)), --the constant, 0. not on the datapath, this is not a selection we normally want to make
            output => PCInput
        );

    U_MUX_4x1_C: entity work.mux_4x1
        generic map (
            WIDTH => 32
        )
        port map(
            sel    => ALU_LO_HI,
            in0    => ALUOutReg,
            in1    => LOReg,
            in2    => HIReg,
            in3    => std_logic_vector(to_unsigned(0, 32)), --the constant, 0. not on the datapath, this is not a selection we normally want to make
            output => ALUOutSeletion
        );

    U_ALU_OUT_REGISTER: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => '1',
            input  => ALUOut,
            output => ALUOutReg
        );

    U_LO_REGISTER: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => LO_en,
            input  => ALUOut,
            output => LOReg
        );

    U_HI_REGISTER: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => HI_en,
            input  => HI,
            output => HIReg
        );

end STR;