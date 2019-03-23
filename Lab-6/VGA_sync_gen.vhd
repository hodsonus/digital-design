library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity VGA_sync_gen is
    port (
        pixel_clock : in  std_logic;
        rst         : in  std_logic;
        Hcount      : out std_logic_vector(9 downto 0);
        Vcount      : out std_logic_vector(9 downto 0);
        Horiz_Sync  : out std_logic;
        Vert_Sync   : out std_logic;
        Video_On    : out std_logic
    );
end VGA_sync_gen;

architecture BHV of VGA_sync_gen is
--variables here
    signal horiz_count: unsigned(9 downto 0);
    signal vert_count: unsigned(9 downto 0);
begin --BHV

    -- sequential logic to determine the counts
    process(pixel_clock, rst)
    begin
        if (rst = '1') then
            horiz_count <= (others => '0');
            vert_count <= (others => '0');

            Horiz_sync <= '1';
		    Vert_sync <= '1';
		    Video_On <= '0';
        elsif (rising_edge(pixel_clock)) then

            horiz_count <= horiz_count + 1;
            if (horiz_count = H_VERT_INC) then
                vert_count <= vert_count + 1;
            end if;

            --logic to decode the Horiz_sync signal
            Horiz_Sync <= '1';
            if (HSYNC_BEGIN < horiz_count and horiz_count < HSYNC_END) then
                Horiz_Sync <= '0';
            end if;
            --

            --logic to decode the Vert_sync signal
            Vert_Sync <= '1';
            if (VSYNC_BEGIN <= vert_count and vert_count <= VSYNC_END) then
                Vert_Sync <= '0';
            end if;
            --

            --logic to decode the Video_on signal
            Video_on <= '0';
            if (0 <= horiz_count and horiz_count <= H_DISPLAY_END) then
                Video_on <= '1';
            end if;
            --

            if (horiz_count >= H_MAX) then
                horiz_count <= "0000000000";
            end if;
            if (vert_count >= V_MAX) then
                vert_count <= "0000000000";
            end if;

            Hcount <= std_logic_vector(horiz_count);
            Vcount <= std_logic_vector(vert_count);

        end if;
    end process;
end BHV;