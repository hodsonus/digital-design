library ieee;
use ieee.std_logic_1164.all;

entity cgen2 is
        --i-> 0
        --ip1 -> 1
        --ip2 -> 2
    port(
        Ci  : in std_logic;
        Pi  : in std_logic;
        Gi  : in std_logic;
        Pip1: in std_logic;
        Gip1: in std_logic;
        Cip1: out std_logic;
        Cip2: out std_logic;
        BP  : out std_logic;
        BG  : out std_logic
    );
end cgen2;

architecture BHV of cgen2 is
begin -- BHV
    Cip1 <= (Ci and Pi) or Gi;
    Cip2 <= (Ci and Pi and Pip1) or (Gi and Pip1) or Gip1;
    BP <= Pi and Pip1;
    BG <= Gi and Gip1;
end BHV;