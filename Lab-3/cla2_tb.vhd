library ieee;
use ieee.std_logic_1164.all;

entity cla2_tb is
end cla2_tb;

architecture TB of cla2_tb is

    component cla2 is
        port (
          X   : in    std_logic_vector(1 downto 0);
          Y   : in    std_logic_vector(1 downto 0);
          Cin : in    std_logic;
          S   : out   std_logic_vector(1 downto 0);
          Cout: out   std_logic;
          BP  : out   std_logic;
          BG  : out   std_logic
        );
    end component;

    signal X        : std_logic_vector(1 downto 0) := (others => '0');
    signal Y        : std_logic_vector(1 downto 0) := (others => '0');
    signal Cin      : std_logic := '0';
    signal S        : std_logic_vector(1 downto 0);
    signal Cout     : std_logic;
    signal BP       : std_logic;
    signal BG       : std_logic;

begin  -- TB

    UUT : cla2
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

        X <= "01";
        Y <= "10";
        Cin <= '0';
        wait for 40 ns;

        X <= "01";
        Y <= "10";
        Cin <= '1';
        wait for 40 ns;

        X <= "11";
        Y <= "11";
        Cin <= '1';
        wait for 40 ns;

        X <= "00";
        Y <= "00";
        Cin <= '0';
        wait for 40 ns;

        X <= "00";
        Y <= "00";
        Cin <= '1';
        wait for 40 ns;

        wait;

    end process;
end TB;
