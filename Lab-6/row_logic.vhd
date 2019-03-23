library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity row_logic is
    port (
        Vcount   : in  std_logic_vector(9 downto 0);
        Pos      : in  std_logic_vector(2 downto 0);
        row_en   : out std_logic;
        row_addr : out std_logic_vector(6 downto 0)
    );
end row_logic;

architecture BHV of row_logic is
    signal Y_START: integer;
    signal Y_END:   integer;
begin --BHV

    process(Pos)
    begin
        case Pos is
            when "000" => 
                --draw center
                Y_START <= CENTERED_Y_START;
                Y_END   <= CENTERED_Y_END;
            when "001" =>
                --draw top left
                Y_START <= TOP_LEFT_Y_START;
                Y_END   <= TOP_LEFT_Y_END;
            when "010" =>
                --draw top right
                Y_START <= TOP_RIGHT_Y_START;
                Y_END   <= TOP_RIGHT_Y_END;
            when "011" =>
                --draw bottom left
                Y_START <= BOTTOM_LEFT_Y_START;
                Y_END   <= BOTTOM_LEFT_Y_END;
            when "100" =>
                --draw bottom right
                Y_START <= BOTTOM_RIGHT_Y_START;
                Y_END   <= BOTTOM_RIGHT_Y_END;
            when others =>
                --draw center
                Y_START <= CENTERED_Y_START;
                Y_END   <= CENTERED_Y_END;
        end case;
    end process;

    process(Y_START,Y_END,Vcount)
    begin
        if(  Y_START <= unsigned(Vcount) and unsigned(Vcount) <= Y_END  ) then
            row_addr <= std_logic_vector(resize((unsigned(Vcount) - Y_START)/1,7));
            row_en <= '1';
        else
            row_addr <= (others => '0');
            row_en   <= '0';
        end if;
    end process;
end BHV;