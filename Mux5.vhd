library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Mux5 is
    Port ( d0 : in  STD_LOGIC_VECTOR (4 downto 0);
           d1 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (4 downto 0));
end Mux5;

architecture Behavioral of Mux5 is
begin
y <= d0 when s = '0' else d1;
end Behavioral;
