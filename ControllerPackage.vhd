library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ControllerPackage is

component Controller is
    Port ( 
        op : in  STD_LOGIC_VECTOR (5 downto 0);
        funct : in  STD_LOGIC_VECTOR (5 downto 0);
        zero : in  STD_LOGIC;
        memtoreg : out  STD_LOGIC;
        memwrite : out  STD_LOGIC;
        pcsrc : out  STD_LOGIC;
        alusrc : out  STD_LOGIC;
        regdst : out  STD_LOGIC;
        regwrite : out  STD_LOGIC;
        jump : out  STD_LOGIC;
        alucontrol : out  STD_LOGIC_VECTOR (3 downto 0)
    );

end component;

end ControllerPackage;