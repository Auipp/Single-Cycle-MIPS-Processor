library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SignExtend is
    Port ( 
        Data_in  : in  STD_LOGIC_VECTOR(15 downto 0);
        Data_out : out STD_LOGIC_VECTOR(31 downto 0)
    );
end SignExtend;
architecture Behavioral of SignExtend is
begin
    process(Data_in)
    begin
        if Data_in(15) = '1' then
            Data_out <= X"FFFF" & Data_in;
        else
            Data_out <= X"0000" & Data_in;
        end if;
    end process;
end Behavioral;