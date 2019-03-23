library ieee;
use ieee.std_logic_1164.all;

entity top_level is
    port (
        clk50MHz   : in  std_logic;                    -- pass into pixel clk to use the 25 MHz clk
        switch     : in  std_logic_vector(9 downto 0); -- swtiches (9 downto 3) -> ??? , switches(2 downto 0) -> position selector
        button     : in  std_logic_vector(1 downto 0); -- 1 -> ??, 0 -> rst

        RED        : out std_logic_vector(3 downto 0); -- out to VGA
        GRN        : out std_logic_vector(3 downto 0); -- out to VGA
        BLU        : out std_logic_vector(3 downto 0); -- out to VGA
        Horiz_Sync : out std_logic;                    -- out to VGA
        Vert_Sync  : out std_logic                     -- out to VGA
    );
end top_level;

architecture STR of top_level is
    -- variables
    signal pixel_clock: std_logic;
    signal row_addr: std_logic_vector(6 downto 0);
    signal col_addr: std_logic_vector(6 downto 0);
    signal RGB_tmp: std_logic_vector(11 downto 0);
    signal Hcount: std_logic_vector(9 downto 0);
    signal Vcount: std_logic_vector(9 downto 0);
    signal Video_On: std_logic;
    signal rst: std_logic;
    signal row_en: std_logic;
    signal col_en: std_logic;
begin

    rst <= not button(0);

    U_PIX_CLK_GEN: entity work.pix_clk_gen
        -- clk50MHz     : in  std_logic;
        -- rst          : in  std_logic;
        -- pixel_clock  : out std_logic
        port map(
            clk50MHz    => clk50MHz,
            rst         => rst,
            pixel_clock => pixel_clock
        );

    U_VGA_SYNC: entity work.VGA_sync_gen
        -- pixel_clock : in  std_logic;
        -- rst         : in  std_logic;
        -- Hcount      : out std_logic_vector(9 downto 0);
        -- Vcount      : out std_logic_vector(9 downto 0);
        -- Horiz_Sync  : out std_logic;
        -- Vert_Sync   : out std_logic;
        -- Video_On    : out std_logic
        port map(
            pixel_clock => pixel_clock,
            rst         => rst,
            Hcount      => Hcount,
            Vcount      => Vcount,
            Horiz_Sync  => Horiz_Sync,
            Vert_Sync   => Vert_Sync,
            Video_On    => Video_On
        );

    U_COL_LOG: entity work.col_logic
        port map(
            Hcount => Hcount,
            Pos => switch(2 downto 0),
            col_en => col_en,
            col_addr => col_addr
        );
    U_ROW_LOG: entity work.row_logic
        port map(
            Vcount => Vcount,
            Pos => switch(2 downto 0),
            row_en => row_en,
            row_addr => row_addr
        );

    U_RAM: entity work.vga_rom
        -- address		: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
	    -- clock		: IN STD_LOGIC  := '1';
	    -- q		: OUT STD_LOGIC_VECTOR (11 DOWNTO 0)
        port map(
            address(13 downto 7) => row_addr,
            address(6 downto 0) => col_addr,
            clock => pixel_clock,
            q => RGB_tmp
        );

    process(pixel_clock, rst)
    begin   
        if (rst = '1') then
            RED <= (others => '0');
            GRN <= (others => '0');
            BLU <= (others => '0');
        elsif (rising_edge(pixel_clock)) then
            if (row_en='1' and col_en='1' and Video_On='1') then
                RED <= RGB_tmp(11 downto 8);
                GRN <= RGB_tmp(7  downto 4);
                BLU <= RGB_tmp(3  downto 0);
            else 
                RED <= (others => '0');
                GRN <= (others => '0');
                BLU <= (others => '0');
            end if;
        end if;
    end process;
end STR;