library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity VGA_sync_gen_tb is
end VGA_sync_gen_tb;

architecture TB of VGA_sync_gen_tb is

    signal clkEn  : std_logic                          := '1';
    signal clk    : std_logic                          := '0';
    signal rst    : std_logic                          := '1';

    signal pixel_clk : std_logic;

    signal Hcount     : std_logic_vector(9 downto 0);
    signal Vcount     : std_logic_vector(9 downto 0);
    signal Horiz_Sync : std_logic;
    signal Vert_Sync  : std_logic;
    signal Video_On   : std_logic;    
begin

    UUT : entity work.VGA_sync_gen
        port map (
            pixel_clock => pixel_clk,
            rst         => rst,
            Hcount      => Hcount,
            Vcount      => Vcount,
            Horiz_Sync  => Horiz_Sync,
            Vert_Sync   => Vert_Sync,
            Video_On    => Video_On);

    CLK_GEN: entity work.pix_clk_gen
        port map (
            clk50MHz    => clk,
            rst         => rst,
            pixel_clock => pixel_clk);

    -- 50 MHz clk
    clk <= not clk and clkEn after 10 ns;

    process
    begin

        clkEn <= '1';
        rst   <= '1';
        wait for 200 ns;

        rst <= '0';

        --start testing

        wait for 150 ms;
        clkEn <= '0';
        report "DONE!!!!!!" severity note;

        wait;
    end process;

end TB;