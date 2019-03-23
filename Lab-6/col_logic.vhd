library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.VGA_LIB.all;

entity col_logic is
    port (
        Hcount   : in  std_logic_vector(9 downto 0);
        Pos      : in  std_logic_vector(2 downto 0);
        col_en   : out std_logic;
        col_addr : out std_logic_vector(6 downto 0)
    );
end col_logic;

architecture BHV of col_logic is
    signal X_START: integer;
    signal X_END:   integer;
begin --BHV

    process(Pos)
    begin
        case Pos is
            when "000" => 
                --draw center
                X_START <= CENTERED_X_START;
                X_END   <= CENTERED_X_END;
                when "001" =>
                --draw top left
                X_START <= TOP_LEFT_X_START;
                X_END   <= TOP_LEFT_X_END;
            when "010" =>
                --draw top right
                X_START <= TOP_RIGHT_X_START;
                X_END   <= TOP_RIGHT_X_END;
            when "011" =>
                --draw bottom left
                X_START <= BOTTOM_LEFT_X_START;
                X_END   <= BOTTOM_LEFT_X_END;
            when "100" =>
                --draw bottom right
                X_START <= BOTTOM_RIGHT_X_START;
                X_END   <= BOTTOM_RIGHT_X_END;
            when others =>
                --draw center
                X_START <= CENTERED_X_START;
                X_END   <= CENTERED_X_END;
        end case;
    end process;

    process(X_START,X_END,Hcount)
    begin
        if(  X_START <= unsigned(Hcount) and unsigned(Hcount) <= X_END  ) then
            col_addr <= std_logic_vector(resize((unsigned(Hcount) - X_START)/1,7));
            col_en <= '1';
        else
            col_addr <= (others => '0');
            col_en   <= '0';
        end if;
    end process;
end BHV;