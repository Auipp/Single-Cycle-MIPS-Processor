library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Mux5Package is
component Mux5
    Port ( d0 : in  STD_LOGIC_VECTOR (4 downto 0);
           d1 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           y : out  STD_LOGIC_VECTOR (4 downto 0));
			  end component;
end Mux5Package;
