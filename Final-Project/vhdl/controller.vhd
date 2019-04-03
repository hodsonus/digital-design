-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity controller is
    port (
        clk         : in std_logic;
        rst         : in std_logic;

        PCWriteCond : out std_logic; -- enables the PC register if the “Branch” signal is asserted.
        PCWrite     : out std_logic; -- enables the PC register.
        IorD        : out std_logic; -- select between the PC or the ALU output as the memory address.
        MemRead     : out std_logic; -- enables memory read.
        MemWrite    : out std_logic; -- enables memory write.
        MemToReg    : out std_logic; -- select between “Memory data register” or “ALU output” as input to “write data” signal.
        IRWrite     : out std_logic; -- enables the instruction register.
        JumpAndLink : out std_logic; -- when asserted, $s31 will be selected as the write register.
        IsSigned    : out std_logic; -- when asserted, “Sign Extended” will output a 32-bit sign extended representation of 16-bit input.
        PCSource    : out std_logic_vector(1 downto 0); -- select between the “ALU output”, “ALU OUT Reg”, or a “shifted to left PC” as an input to PC.
        ALUOp       : out std_logic_vector(ALU_SEL_SIZE-1 downto 0); -- used by the ALU controller to determine the desired operation to be executed by the ALU. It is up to you to determine how to use this signal. There are many possible ways of implementing the required functionality.
        ALUSrcA     : out std_logic; -- select between RegA or Pc as the Input1 of the ALU.
        ALUSrcB     : out std_logic_vector(1 downto 0); -- select between RegB, “4”, IR15-0, or “shifted IR15-0” as the Input2 of the ALU.
        RegWrite    : out std_logic; -- enables the register file
        RegDst      : out std_logic; -- select between IR20-16 or IR15-11 as the input to the “Write Reg”

        OPCode      : in  std_logic_vector(5 downto 0) -- IR31-26 (the OPCode): Will be decoded by the controller to determine what instruction to execute.
    );
end controller;

architecture FSM of controller is
begin --FSM
    --TODO, implement this entire beast
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
    ALUOp       <= std_logic_vector(to_unsigned(0,ALU_SEL_SIZE));
    ALUSrcA     <= '0';
    ALUSrcB     <= "00";
    RegWrite    <= '0';
    RegDst      <= '0';
end FSM;