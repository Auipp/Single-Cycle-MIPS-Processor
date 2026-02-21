library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ShiftLeft2 is
    Port (
        Input   : in  STD_LOGIC_VECTOR(31 downto 0);
        Shifted : out STD_LOGIC_VECTOR(31 downto 0)
    );
end ShiftLeft2;

architecture Behavioral of ShiftLeft2 is
begin
    Shifted <= Input(29 downto 0) & "00";
end Behavioral;