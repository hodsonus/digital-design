library ieee;
use ieee.std_logic_1164.all;

entity cla4_tb is
end cla4_tb;

architecture TB of cla4_tb is

    component cla4 is
        port (
            X   : in    std_logic_vector(3 downto 0);
            Y   : in    std_logic_vector(3 downto 0);
            Cin : in    std_logic;
            S   : out   std_logic_vector(3 downto 0);
            Cout: out   std_logic;
            BP  : out   std_logic;
            BG  : out   std_logic
        );
    end component;

    signal X        : std_logic_vector(3 downto 0) := (others => '0');
    signal Y        : std_logic_vector(3 downto 0) := (others => '0');
    signal Cin      : std_logic := '0';
    signal S        : std_logic_vector(3 downto 0);
    signal Cout     : std_logic;
    signal BP       : std_logic;
    signal BG       : std_logic;

begin  -- TB

    UUT : cla4
        port map (
            X    => X,
            Y    => Y,
            Cin  => Cin,
            S    => S,
            Cout => Cout,
            BP   => BP,
            BG   => BG
        );
    process
    begin

        X <= "0101";
        Y <= "1010";
        Cin <= '0';
        wait for 5 ns;
        
        X <= "0101";
        Y <= "1010";
        Cin <= '1';
        wait for 5 ns;

        X <= "0101";
        Y <= "1011";
        Cin <= '1';
        wait for 5 ns;

        X <= "0000";
        Y <= "0000";
        Cin <= '1';
        wait for 5 ns;

        X <= "0000";
        Y <= "0000";
        Cin <= '0';
        wait for 5 ns;

        X <= "1010";
        Y <= "0100";
        Cin <= '1';
        wait for 5 ns;

        wait;

    end process;
end TB;
