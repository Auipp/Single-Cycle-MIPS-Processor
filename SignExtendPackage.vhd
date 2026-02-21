library IEEE;
use IEEE.STD_LOGIC_1164.all;

package SignExtendPackage is
component SignExtend
    Port ( 
        Data_in  : in  STD_LOGIC_VECTOR(15 downto 0);
        Data_out : out STD_LOGIC_VECTOR(31 downto 0)
    );
end component;
end SignExtendPackage;