-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity alu_ctrl is
    port(
        ALUOp       : in  std_logic_vector(ALU_SEL_SIZE-1 downto 0); -- used by the ALU controller to determine the desired operation to be executed by the ALU. It is up to you to determine how to use this signal. There are many possible ways of implementing the required functionality.
        instruction : in  std_logic_vector(5 downto 0); -- IR5-0 - If the instruction is as R-type, this signal will be decoded by the ALU controller to determine the desired operation to be executed by the ALU.
        OPSelect    : out std_logic_vector(ALU_SEL_SIZE-1 downto 0); -- will be used by the ALU to execute the desired operation
        ALU_LO_HI   : out std_logic_vector(1 downto 0); -- select between ALU out, LO, or Hi as the write data of register file.
        HI_en       : out std_logic; -- enables the HI register
        LO_en       : out std_logic); -- enables the LO register
end alu_ctrl;

architecture BHV of alu_ctrl is
begin --BHV
    --TODO, implement this
    OPSelect    <= std_logic_vector(to_unsigned(0,ALU_SEL_SIZE));
    ALU_LO_HI   <= "00";
    HI_en       <= '0';
    LO_en       <= '0';
end BHV;