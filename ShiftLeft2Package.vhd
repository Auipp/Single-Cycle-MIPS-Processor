library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ShiftLeft2Package is

component ShiftLeft2 
    Port (
        Input   : in  STD_LOGIC_VECTOR(31 downto 0);
        Shifted : out STD_LOGIC_VECTOR(31 downto 0)
    );

end component;

end ShiftLeft2Package;