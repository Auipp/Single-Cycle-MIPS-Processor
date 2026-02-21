library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package PCPackage is
    component PC
        Port (
clk   : in  STD_LOGIC;
rst   : in  STD_LOGIC;
pcin  : in  STD_LOGIC_VECTOR(31 downto 0);
pcout : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
end PCPackage;