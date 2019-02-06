library ieee;
use ieee.std_logic_1164.all;

entity pfa is 
    port(
        X : in std_logic;
        Y : in std_logic;
        Cin : in std_logic;
        S : out std_logic;
        P : out std_logic;
        G : out std_logic);
end pfa;

architecture BHV of pfa is
begin --BHV
    S <= X xor Y xor Cin;
    P <= X xor Y;
    G <= X and Y;
end BHV;