library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MUX2Package is
component MUX2
    Port (
        A   : in  STD_LOGIC_VECTOR(31 downto 0);
        B   : in  STD_LOGIC_VECTOR(31 downto 0);
        Sel : in  STD_LOGIC;
        Y   : out STD_LOGIC_VECTOR(31 downto 0)
    );
end component;

end MUX2Package;