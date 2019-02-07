library ieee;
use ieee.std_logic_1164.all;

entity adder is
    generic (
        WIDTH : positive := 8); 
    port (
        x, y : in  std_logic_vector(WIDTH-1 downto 0);
        cin  : in  std_logic;
        s    : out std_logic_vector(WIDTH-1 downto 0);
        cout : out std_logic);
end adder;



architecture RIPPLE_CARRY of adder is
    signal carry : std_logic_vector(WIDTH downto 0);
begin  -- RIPPLE_CARRY
  U_ADD: for i in 0 to WIDTH-1 generate
    U_FA: entity work.fa port map (
      input1 => x(i),
      input2 => y(i),
      carry_in => carry(i),
      sum => s(i),
      carry_out => carry(i+1)
    );
  end generate U_ADD;
  carry(0) <= cin;
  cout <= carry(WIDTH);
end RIPPLE_CARRY;



architecture CARRY_LOOKAHEAD of adder is
begin  -- CARRY_LOOKAHEAD
    process(x, y, cin)
        -- generate and propagate bits
        variable g, p : std_logic_vector(WIDTH-1 downto 0);
        -- internal carry bits
        variable carry : std_logic_vector(WIDTH downto 0);
        -- and'd p sequences
        variable p_ands : std_logic_vector(WIDTH-1 downto 0);
    begin
        -- calculate generate (g) and propogate (p) values
        for i in 0 to WIDTH-1 loop
        -- fill in code that defines each g and p bit
        g(i) := x(i) and y(i);
        p(i) := x(i) or y(i);
        end loop;  -- i
        carry(0) := cin;
        -- calculate each carry bit
        for i in 1 to WIDTH loop
            -- calculate and'd p terms for ith carry logic      
            -- the index j corresponds to the lowest Pj value in the sequence
            -- e.g., PiPi-1...Pj
            for j in 0 to i-1 loop
                p_ands(j) := '1';
                -- and everything from Pj to Pi-1
                for k in j to i-1 loop
                -- fill code
                end loop;
            end loop;
            carry(i) := g(i-1);
            -- handle all of the pg minterms
            for j in 1 to i-1 loop
            -- fill in code
            end loop;
            -- handle the final propagate of the carry in
            carry(i) := carry(i) or (p_ands(0) and cin);
        end loop;  -- i
        -- set the outputs
        for i in 0 to WIDTH-1 loop
        -- fill in code
        end loop;  -- i
        cout <= carry(WIDTH);
    end process;
end CARRY_LOOKAHEAD;


-- You don't have to change any of the code for the following
-- architecture. However, read the lab instructions to create
-- an RTL schematic of this entity so you can see how the
-- synthesized circuit differs from the previous carry
-- lookahead circuit.

architecture CARRY_LOOKAHEAD_BAD_SYNTHESIS of adder is
begin  -- CARRY_LOOKAHEAD_BAD_SYNTHESIS
    process(x, y, cin)
        -- generate and propagate bits
        variable g, p : std_logic_vector(WIDTH-1 downto 0);
        -- internal carry bits
        variable carry : std_logic_vector(WIDTH downto 0);
    begin
        -- calculate generate (g) and propogate (p) values
        for i in 0 to WIDTH-1 loop
            g(i) := x(i) and y(i);
            p(i) := x(i) or y(i);
        end loop;  -- i
        -- calculate carry bits (the order here is very important)
        -- Problem: defining the carries this way causes the synthesis
        -- tool to chain everything together like a ripple carry.
        -- See RTL view in synthesis tool.
        carry(0) := cin;
        for i in 0 to WIDTH-1 loop
            carry(i+1) := g(i) or (p(i) and carry(i));
        end loop;  -- i
        -- set the outputs
        for i in 0 to WIDTH-1 loop
            s(i) <= x(i) xor y(i) xor carry(i);
        end loop;  -- i
        cout <= carry(WIDTH);
    end process;
end CARRY_LOOKAHEAD_BAD_SYNTHESIS;



architecture HIERARCHICAL of adder is

    --   x, y : in  std_logic_vector(7 downto 0);
    --   cin  : in  std_logic;
    --   s    : out std_logic_vector(7 downto 0);
    --   cout : out std_logic

    signal c0, p0, g0, c1, c1_cgen, p1, g1, c2, bp, bg: std_logic;

    begin -- HIERARCHICAL
        U_CLA4_0: entity work.cla4 port map(
            -- X   : in    std_logic_vector(3 downto 0);
            -- Y   : in    std_logic_vector(3 downto 0);
            -- Cin : in    std_logic;
            -- S   : out   std_logic_vector(3 downto 0);
            -- Cout: out   std_logic;
            -- BP  : out   std_logic;
            -- BG  : out   std_logic
            --entity signal => signal in this architecture
            X => x(3 downto 0), 
            Y => y(3 downto 0), 
            Cin => cin, 
            S => s(3 downto 0), 
            Cout => c0,
            BP => p0, 
            BG => g0);
        U_CLA4_1: entity work.cla4 port map(
            --entity signal => signal in this architecture
            X => x(7 downto 4), 
            Y => Y(7 downto 4), 
            Cin => c0, 
            S => S(7 downto 4), 
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
            BP   => bp,
            BG   => bg);
    
        cout <= c2;
end HIERARCHICAL;