library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity datapath2 is
    generic (
        WIDTH : positive := 8);
    port (
        clk        : in   std_logic;
        rst        : in   std_logic;
        x          : in   std_logic_vector(WIDTH-1 downto 0);
        y          : in   std_logic_vector(WIDTH-1 downto 0);
        x_sel      : in   std_logic;
        x_en       : in   std_logic;
        y_sel      : in   std_logic;
        y_en       : in   std_logic;
        output_en  : in   std_logic;
        x_lt_y     : out  std_logic;
        x_ne_y     : out  std_logic;
        output     : out  std_logic_vector(WIDTH-1 downto 0));
end datapath2;

architecture DEF of datapath2 is
    --variables here
    signal tmp_x, tmp_y, x_min_y, y_min_x, x_mux_out, y_mux_out : std_logic_vector(WIDTH-1 downto 0);
begin --DEF
    U_MUX_X : entity work.mux_2x1 
        generic map (WIDTH => WIDTH)
        port map (
            in1 => x,
            in2 => x_min_y,
            sel => x_sel,
            output => x_mux_out);
    U_MUX_Y : entity work.mux_2x1 
        generic map (WIDTH => WIDTH)
        port map (
            in1 => y,
            in2 => y_min_x,
            sel => y_sel,
            output => y_mux_out);
    U_TMP_X_REG : entity work.reg
        generic map (WIDTH => WIDTH)
        port map (
            clk => clk,
            rst => rst,
            en  => x_en,
            input  => x_mux_out,
            output => tmp_x);
    U_TMP_Y_REG : entity work.reg
        generic map (WIDTH => WIDTH)
        port map (
            clk => clk,
            rst => rst,
            en  => y_en,
            input  => y_mux_out,
            output => tmp_y);
    U_X_SUB_Y : entity work.sub(UNSIGNED_INPUTS)
        generic map (WIDTH => WIDTH)
        port map (
            in1     => tmp_x,
            in2     => tmp_y,
            output  => x_min_y);
    U_Y_SUB_X : entity work.sub(UNSIGNED_INPUTS)
        generic map (WIDTH => WIDTH)
        port map (
            in1     => tmp_y,
            in2     => tmp_x,
            output  => y_min_x);
    U_COMP : entity work.comp(UNSIGNED_INPUTS)
        generic map (WIDTH => WIDTH)
        port map (
            in1 => tmp_x,
            in2 => tmp_y,
            lt  => x_lt_y,
            neq => x_ne_y);
    U_OUT_REG : entity work.reg
        generic map (WIDTH => WIDTH)
        port map (
            clk => clk,
            rst => rst,
            en  => output_en,
            input  => tmp_x,
            output => output);
end DEF;