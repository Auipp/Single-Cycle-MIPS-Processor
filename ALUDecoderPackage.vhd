library IEEE;
use IEEE.STD_LOGIC_1164.all;

package ALUDecoderPackage is


component aludec is
Port ( 
funct : in STD_LOGIC_VECTOR (5 downto 0);
aluop : in STD_LOGIC_VECTOR (1 downto 0);
alucontrol : out STD_LOGIC_VECTOR (3 downto 0)
);
end component;


end ALUDecoderPackage;



package body ALUDecoderPackage is
end ALUDecoderPackage;