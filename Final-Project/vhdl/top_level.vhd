-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity top_level is
    port (
        clk50MHz : in  std_logic;

        switches : in  std_logic_vector(9 downto 0);
        buttons  : in  std_logic_vector(1 downto 0);

        led      : out std_logic_vector(9 downto 0);
        led0     : out std_logic_vector(6 downto 0);
        led0_dp  : out std_logic;
        led1     : out std_logic_vector(6 downto 0);
        led1_dp  : out std_logic;
        led2     : out std_logic_vector(6 downto 0);
        led2_dp  : out std_logic;
        led3     : out std_logic_vector(6 downto 0);
        led3_dp  : out std_logic;
        led4     : out std_logic_vector(6 downto 0);
        led4_dp  : out std_logic;
        led5     : out std_logic_vector(6 downto 0);
        led5_dp  : out std_logic
    );
end top_level;

architecture STR of top_level is
    signal rst         : std_logic;

    signal InPort      : std_logic_vector(31 downto 0);
    signal OutPort     : std_logic_vector(31 downto 0);
    signal InPort_en   : std_logic_vector(1 downto 0);
    signal InPort1_en  : std_logic;
    signal InPort0_en  : std_logic;

    signal PCWriteCond : std_logic; -- enables the PC register if the “Branch” signal is asserted. Input to the datapath, output from the controller.
    signal PCWrite     : std_logic; -- enables the PC register. Input to the datapath, output from the controller.
    signal IorD        : std_logic; -- select between the PC or the ALU output as the memory address. Input to the datapath, output from the controller.
    signal MemRead     : std_logic; -- enables memory read. Input to the datapath, output from the controller.
    signal MemWrite    : std_logic; -- enables memory write. Input to the datapath, output from the controller.
    signal MemToReg    : std_logic_vector(1 downto 0); -- select between “Memory data register” or “ALU output” as input to “write data” signal. Input to the datapath, output from the controller.
    signal IRWrite     : std_logic; -- enables the instruction register. Input to the datapath, output from the controller.
    signal JumpAndLink : std_logic; -- when asserted, $s31 will be selected as the write register. Input to the datapath, output from the controller.
    signal IsSigned    : std_logic; -- when asserted, “Sign Extended” will output a 32-bit sign extended representation of 16-bit input. Input to the datapath, output from the controller.
    signal PCSource    : std_logic_vector(1 downto 0); -- select between the “ALU output”, “ALU OUT Reg”, or a “shifted to left PC” as an input to PC. Input to the datapath, output from the controller.
    signal ALUSrcA     : std_logic; -- select between RegA or Pc as the Input1 of the ALU. Input to the datapath, output from the controller.
    signal ALUSrcB     : std_logic_vector(1 downto 0); -- select between RegB, “4”, IR15-0, or “shifted IR15-0” as the Input2 of the ALU. Input to the datapath, output from the controller.
    signal RegWrite    : std_logic; -- enables the register file. Input to the datapath, output from the controller.
    signal RegDst      : std_logic; -- select between IR20-16 or IR15-11 as the input to the “Write Reg”. Input to the datapath, output from the controller.
    signal IR31downto26: std_logic_vector(5 downto 0); -- IR31-26 (the OPCode): Will be decoded by the controller to determine what instruction to execute. Input to the CONTROLLER, output from the datapath.
    signal IR5downto0: std_logic_vector(5 downto 0);

    signal OpSelect  : std_logic_vector(ALU_SEL_SIZE-1 downto 0);
    signal IR20downto16 : std_logic_vector(4 downto 0);

    signal HI_en       : std_logic;
    signal LO_en       : std_logic;
    signal ALU_LO_HI   : std_logic_vector(1 downto 0);
begin --STR

    rst <= not buttons(1);

    InPort1_en <= switches(9) and (not buttons(0));
    InPort0_en <= (not switches(9)) and (not buttons(0));
    InPort <= std_logic_vector(to_unsigned(0,23) & unsigned(switches(8 downto 0)));

    U_DATAPATH: entity work.datapath
        port map (
            clk         => clk50MHz, -- 50 MHz internal clock
            rst         => rst, -- rst for the entire circuit, does NOT reset the input ports
            InPort1_en  => InPort1_en,
            InPort0_en  => InPort0_en,
            InPort      => InPort, -- InPort0/InPort1, concatenate 23 '0's with switches(8 downto 0)
            OutPort     => OutPort, -- output to the 7 segment LEDS
            PCWriteCond  => PCWriteCond,
            PCWrite      => PCWrite,
            IorD         => IorD,
            MemRead      => MemRead,
            MemWrite     => MemWrite,
            MemToReg     => MemToReg,
            IRWrite      => IRWrite,
            JumpAndLink  => JumpAndLink,
            IsSigned     => IsSigned,
            PCSource     => PCSource,
            OpSelect     => OpSelect,
            ALUSrcA      => ALUSrcA,
            ALUSrcB      => ALUSrcB,
            RegWrite     => RegWrite,
            RegDst       => RegDst,
            IR31downto26 => IR31downto26,
            IR5downto0   => IR5downto0,
            IR20downto16 => IR20downto16,
            HI_en        => HI_en,
            LO_en        => LO_en,
            ALU_LO_HI    => ALU_LO_HI
        );

    U_CONTROLLER: entity work.controller
        port map (
            clk          => clk50MHz, -- 50 MHz internal clock
            rst          => rst, -- rst for the entire circuit, does NOT reset the input ports
            PCWriteCond  => PCWriteCond,
            PCWrite      => PCWrite,
            IorD         => IorD,
            MemRead      => MemRead,
            MemWrite     => MemWrite,
            MemToReg     => MemToReg,
            IRWrite      => IRWrite,
            JumpAndLink  => JumpAndLink,
            IsSigned     => IsSigned,
            PCSource     => PCSource,
            OpSelect     => OpSelect,
            ALUSrcA      => ALUSrcA,
            ALUSrcB      => ALUSrcB,
            RegWrite     => RegWrite,
            RegDst       => RegDst,
            IR31downto26 => IR31downto26,
            IR5downto0   => IR5downto0,
            IR20downto16 => IR20downto16,
            HI_en        => HI_en,
            LO_en        => LO_en,
            ALU_LO_HI    => ALU_LO_HI
        );

        led <= "0000000000";

        U_LED5 : entity work.decoder7seg 
            port map (
                input  => OutPort(23 downto 20),
                output => led5
            );
        led5_dp <= '1';

        U_LED4 : entity work.decoder7seg 
        port map (
            input  => OutPort(19 downto 16),
            output => led4
        );
        led4_dp <= '1';

        U_LED3 : entity work.decoder7seg 
        port map (
            input  => OutPort(15 downto 12),
            output => led3
        );
        led3_dp <= '1';

        U_LED2 : entity work.decoder7seg 
        port map (
            input  => OutPort(11 downto 8),
            output => led2
        );
        led2_dp <= '1';

        U_LED1 : entity work.decoder7seg 
        port map (
            input  => OutPort(7 downto 4),
            output => led1
        );
        led1_dp <= '1';

        U_LED0 : entity work.decoder7seg 
        port map (
            input  => OutPort(3 downto 0),
            output => led0
        );
        led0_dp <= '1';
end STR;