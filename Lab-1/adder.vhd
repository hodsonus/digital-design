library ieee;
use ieee.std_logic_1164.all;

-- DO NOT CHANGE ANYTHING IN THE ENTITY

entity adder is
  port (
    input1    : in  std_logic_vector(3 downto 0);
    input2    : in  std_logic_vector(3 downto 0);
    carry_in  : in  std_logic;
    sum       : out std_logic_vector(3 downto 0);
    carry_out : out std_logic);
end adder;

-- DEFINE A RIPPLE-CARRY ADDER USING A STRUCTURE DESCRIPTION THAT CONSISTS OF 4
-- FULL ADDERS

architecture STR of adder is  
begin  -- STR


end STR;
