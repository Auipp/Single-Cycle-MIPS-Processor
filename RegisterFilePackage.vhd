library IEEE;
use IEEE.STD_LOGIC_1164.all;

package RegisterFilePackage is
    component RegisterFile is
        Port ( 
            read_sel1 : in STD_LOGIC_VECTOR(4 downto 0);
            read_sel2 : in STD_LOGIC_VECTOR(4 downto 0);
            write_sel : in STD_LOGIC_VECTOR(4 downto 0);
            write_ena : in STD_LOGIC;
            clk       : in STD_LOGIC;
            rst       : in STD_LOGIC;
            write_data: in STD_LOGIC_VECTOR(31 downto 0);
            data1     : out STD_LOGIC_VECTOR(31 downto 0);
            data2     : out STD_LOGIC_VECTOR(31 downto 0)
        );
    end component;
end RegisterFilePackage;

package body RegisterFilePackage is 
end RegisterFilePackage;