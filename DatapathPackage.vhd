library IEEE;
use IEEE.STD_LOGIC_1164.all;

package DatapathPackage is
component Datapath is
 Port ( 
clk, reset : in STD_LOGIC;
memtoreg  : in STD_LOGIC;
pcsrc  : in STD_LOGIC;
alusrc : in STD_LOGIC;
regdst : in STD_LOGIC;
regwrite  : in STD_LOGIC;
jump    : in STD_LOGIC;
alucontrol : in STD_LOGIC_VECTOR(3 downto 0);
instr_in  : in STD_LOGIC_VECTOR(31 downto 0);
dmem_data_in  : in STD_LOGIC_VECTOR(31 downto 0);
pc_out : out STD_LOGIC_VECTOR(31 downto 0);
alu_out : out STD_LOGIC_VECTOR(31 downto 0);
writedata_out : out STD_LOGIC_VECTOR(31 downto 0);
zero : out STD_LOGIC
    );
end component;

end DatapathPackage;