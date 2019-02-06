library ieee;
use ieee.std_logic_1164.all;

entity cla2 is
  port (
    X   : in    std_logic_vector(1 downto 0);
    Y   : in    std_logic_vector(1 downto 0);
    Cin : in    std_logic;
    S   : out   std_logic_vector(1 downto 0);
    Cout: out   std_logic;
    BP  : out   std_logic;
    BG  : out   std_logic
  );
end cla2;

architecture BHV of cla2 is

    -- component pfa is 
    -- port(
    --     X : in std_logic;
    --     Y : in std_logic;
    --     Cin : in std_logic;
    --     S : out std_logic;
    --     P : out std_logic;
    --     G : out std_logic);
    -- end component;
    signal c1: std_logic;
    signal P,G: std_logic_vector(1 downto 0);

begin 
    U_PFA1: entity work.pfa port map(
        --PFA1 port => signal in this architecture
        X => X(0), 
        Y => Y(0), 
        Cin => Cin, 
        S => S(0), 
        P => P(0), 
        G => G(0)
    );
    U_PFA2: entity work.pfa port map(
        --PFA1 port => signal in this architecture
        X => X(1), 
        Y => Y(1), 
        Cin => c1, 
        S => S(1), 
        P => P(1), 
        G => G(1)
    );
    c1 <= (Cin and P(0)) or G(0);
    Cout <= (Cin and P(0) and P(1)) or (G(0) and P(1)) or G(1);
    BP <= P(1) and P(0);
    BG <= G(1) or (P(1) and G(0));
end BHV;