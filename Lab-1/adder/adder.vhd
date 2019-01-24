library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder is
  port (
    input1    : in  std_logic_vector(3 downto 0);
    input2    : in  std_logic_vector(3 downto 0);
    carry_in  : in  std_logic;
    sum       : out std_logic_vector(3 downto 0);
    carry_out : out std_logic);
end adder;

architecture STR of adder is  
signal carry : std_logic_vector(4 downto 0);
begin  -- STR
  ADD: for i in 0 to 3 generate
    FA: entity work.fa port map (
      input1 => input1(i),
      input2 => input2(i),
      carry_in => carry(i),
      sum => sum(i),
      carry_out => carry(i+1)
    );
  end generate ADD;
  carry(0) <= carry_in;
  carry_out <= carry(4);
end STR;

-- architecture BHV of adder is
-- begin --BHV
--   process(input1, input2, carry_in)
--   variable temp_sum: std_logic_vector(4 downto 0);
--   variable temp_carry_in: std_logic_vector(0 downto 0);
--   begin
-- 	  temp_carry_in(0) := carry_in;
--     temp_sum := std_logic_vector((resize(unsigned(input1),5) + resize(unsigned(input2),5) + resize(unsigned(temp_carry_in),5)));
--     sum <= temp_sum(3 downto 0);
--     carry_out <= temp_sum(4);
--   end process;
-- end BHV;