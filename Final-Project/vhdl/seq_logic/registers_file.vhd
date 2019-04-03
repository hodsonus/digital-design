-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity registers_file is 
    port (
        clk           : in std_logic; -- 50 MHz internal clock
        rst           : in std_logic; -- reset

        ReadReg1      : in std_logic_vector(4 downto 0); -- read address 1
        ReadReg2      : in std_logic_vector(4 downto 0); -- read address 2
        ReadData1     : out std_logic_vector(31 downto 0); -- data 1
        ReadData2     : out std_logic_vector(31 downto 0);  -- data 2

        WriteRegister : in std_logic_vector(4 downto 0); -- write address
        WriteData     : in std_logic_vector(31 downto 0); -- write data
        RegWrite      : in std_logic; -- enables the register file, "write enable"

        JumpAndLink   : in std_logic -- when asserted, $s31 will be selected as the write register.
    );
end registers_file;

architecture async_read of registers_file is
    type reg_array is array(0 to 31) of std_logic_vector(31 downto 0); --32 registers of size 32 bits
    signal regs : reg_array; -- the array of registers
begin --async_read`
    process (clk, rst) is
    begin -- process
        if (rst = '1') then --reset each of the registers
            for i in regs'range loop
                regs(i) <= (others => '0');
            end loop;
        elsif (rising_edge(clk)) then
            if (RegWrite = '1') then
                if (JumpAndLink = '1') then
                    regs(31) <= WriteData;
                else
                    regs(to_integer(unsigned(WriteRegister))) <= WriteData;
                end if;
            end if;
        end if;
    end process;
    ReadData1 <= regs(to_integer(unsigned(ReadReg1)));
    ReadData2 <= regs(to_integer(unsigned(ReadReg2)));
end async_read;