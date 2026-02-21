library IEEE;
use IEEE.STD_LOGIC_1164.all;

package FloprPackage is


    component Flopr is
        Port ( 
            clk, rst, enable : in STD_LOGIC; 
            d : in STD_LOGIC_VECTOR(31 downto 0); 
            q : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;

end FloprPackage;

package body FloprPackage is


end FloprPackage;