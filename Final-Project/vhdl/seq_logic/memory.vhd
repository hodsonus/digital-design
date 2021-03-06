-- John Hodson
-- University of Florida

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.MIPS_LIB.all;

entity memory is
    port (
        clk       : in std_logic;
        rst       : in std_logic;

        address   : in  std_logic_vector(31 downto 0);
        data      : out std_logic_vector(31 downto 0);
        RegB      : in  std_logic_vector(31 downto 0);

        MemRead   : in std_logic;
        MemWrite  : in std_logic;

        InPort1_en : in  std_logic;
        InPort0_en : in  std_logic;
        InPort     : in  std_logic_vector(31 downto 0); -- InPort0/InPort1
        OutPort    : out std_logic_vector(31 downto 0)
    );
end memory;

architecture IO_WRAP of memory is

    signal OutPort_en : std_logic;
    signal Ram_en     : std_logic;

    signal InPort0    : std_logic_vector(31 downto 0);
    signal InPort1    : std_logic_vector(31 downto 0);
    signal RamOut     : std_logic_vector(31 downto 0);

    signal OutMuxSel  : std_logic_vector(1 downto 0);

begin --IO_WRAP

    -- before the clock edge hits, we want to ensure that we are capturing the input to the circuit in the proper place
    -- therefore, the logic that selects between writing to the out port or the ram MUST be combinational logic
    process(address, MemWrite)
    begin --process

        -- disable the two output components by default
        OutPort_en <= '0';
        Ram_en <= '0';
        
        if (MemWrite = '1') then
            if (address = x"0000FFFC") then -- write to the output port and not the RAM
                OutPort_en <= '1'; -- OUTPORT -> $0000FFFC
            else -- write to the RAM and not the output port
                Ram_en <= '1'; -- RAM -> any address other then the above
            end if; 
        end if;

        -- setting the enables appropriately (as above) allows the capture into ONE of those when the clock edge comes
    end process;

    process (clk,rst)
    begin -- process
        if (rst = '1') then -- select the 0 output of the mux. this is not the output from ANY of the inputs to the mux that we care about
            OutMuxSel <= "11";
        elsif (rising_edge(clk)) then 
            if (MemRead = '1') then -- update the mux select if we're reading
                if (address = x"0000FFF8") then -- mux select input 0 -> InPort0 
                    OutMuxSel <= "00"; -- INPORT0 -> $0000FFF8
                elsif (address = x"0000FFFC") then -- mux select input 1 -> InPort01
                    OutMuxSel <= "01";  -- INPORT1 -> $0000FFFC
                else -- mux select input 2 -> RAM
                    OutMuxSel <= "10"; -- RAM -> any address other then the above
                end if;
            end if;
        end if;
    end process;

    -- selects between InPort0, InPort1, and RamOut for the main output
    -- of the memory to the rest of the datapath. the sel is determined
    -- by a combination of MemRead and address
    U_OUT_MUX: entity work.mux_4x1
        generic map (
            WIDTH => 32
        )
        port map (
            sel    => OutMuxSel,
            in0    => InPort0,
            in1    => InPort1,
            in2    => RamOut,
            in3    => (others => '0'),
            output => data
        );

    -- wont be reset by the circuit-wide button reset, will store a
    -- new value whenever the store button is pressed and we select
    -- this port with the switches and then enable it with the button
    IN_PORT_0: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => '0',
            en     => InPort0_en,
            input  => InPort,
            output => InPort0
        );

    -- wont be reset by the circuit-wide button reset, will store a new
    -- value whenever the store button is pressed and we select this port
    -- with the switches and then enable it with the button
    IN_PORT_1: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => '0',
            en     => InPort1_en,
            input  => InPort,
            output => InPort1
        );

    -- ram output is not registered, TODO?? I think this should be registered
    -- 256 32-bit words, mapped to address 0, and is initialized with a mif 
    -- file that contains the program that will execute
    U_RAM: entity work.ram
        port map (
            address	=> address(9 downto 2), -- uses word-aligned addresses
            clock   => clk,
            data	=> RegB,
            wren	=> Ram_en,
            q		=> RamOut
        );

    -- output is controlled by writing to address $0000FFFC. output to the 7 
    -- segment LEDs onboard the MAX 10 DElite
    U_OUT_PORT: entity work.reg
        generic map (
            WIDTH => 32
        )
        port map (
            clk    => clk,
            rst    => rst,
            en     => OutPort_en,
            input  => RegB,
            output => OutPort
        );

end IO_WRAP;