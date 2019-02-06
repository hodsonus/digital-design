library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity cla4 is
    port (
        X   : in    std_logic_vector(3 downto 0);
        Y   : in    std_logic_vector(3 downto 0);
        Cin : in    std_logic;
        S   : out   std_logic_vector(3 downto 0);
        Cout: out   std_logic;
        BP  : out   std_logic;
        BG  : out   std_logic
    );
end cla4;

architecture BHV of cla4 is

    signal c0, p0, g0, c1, c1_cgen, p1, g1, c2: std_logic;

begin -- BHV
    U_CLA2_0: entity work.cla2 port map(
        -- X   : in    std_logic_vector(1 downto 0);
        -- Y   : in    std_logic_vector(1 downto 0);
        -- Cin : in    std_logic;
        -- S   : out   std_logic_vector(1 downto 0);
        -- Cout: out   std_logic;
        -- BP  : out   std_logic;
        -- BG  : out   std_logic
        --entity signal => signal in this architecture
        X => X(1 downto 0), 
        Y => Y(1 downto 0), 
        Cin => Cin, 
        S => S(1 downto 0), 
        Cout => c0,
        BP => p0, 
        BG => g0);
    U_CLA2_1: entity work.cla2 port map(
        --entity signal => signal in this architecture
        X => X(3 downto 2), 
        Y => Y(3 downto 2), 
        Cin => c0, 
        S => S(3 downto 2), 
        Cout => c1,
        BP => p1, 
        BG => g1);
    U_CGEN2: entity work.cgen2 port map(
        -- Ci  : in std_logic;
        -- Pi  : in std_logic;
        -- Gi  : in std_logic;
        -- Pip1: in std_logic;
        -- Gip1: in std_logic;
        -- Cip1: out std_logic;
        -- Cip2: out std_logic;
        -- BP  : out std_logic;
        -- BG  : out std_logic
        --entity signal => signal in this architecture
        Ci   => c0,
        Pi   => p0,
        Gi   => g0,
        Pip1 => p1,
        Gip1 => g1,
        Cip1 => c1_cgen,
        Cip2 => c2,
        BP   => BP,
        BG   => BG);

    Cout <= c2;

end BHV;