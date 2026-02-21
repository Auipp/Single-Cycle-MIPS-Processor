library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MainDecoderPackage is

    component maindec is
        Port ( 
            op : in STD_LOGIC_VECTOR (5 downto 0);
            memtoreg, memwrite, branch, alusrc, regdst, regwrite, jump : out STD_LOGIC;
            aluop : out STD_LOGIC_VECTOR (1 downto 0)
        );
    end component;

end MainDecoderPackage;

package body MainDecoderPackage is 
end MainDecoderPackage;