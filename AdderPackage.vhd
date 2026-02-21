library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package AdderPackage is
    component Adder
        Port (
            A   : in  STD_LOGIC_VECTOR(31 downto 0);
            B   : in  STD_LOGIC_VECTOR(31 downto 0);
            Sum : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
end AdderPackage;