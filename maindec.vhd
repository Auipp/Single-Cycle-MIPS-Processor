library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity maindec is
    Port ( 
        op : in  STD_LOGIC_VECTOR (5 downto 0);
        memtoreg : out  STD_LOGIC;
        memwrite : out  STD_LOGIC;
        branch : out  STD_LOGIC;
        alusrc : out  STD_LOGIC;
        regdst : out  STD_LOGIC;
        regwrite : out  STD_LOGIC;
        jump : out  STD_LOGIC;
        aluop : out  STD_LOGIC_VECTOR (1 downto 0)
    );
end maindec;

architecture Behavioral of maindec is

begin
process(op)
begin

-- set default values
memtoreg <= '0';
memwrite <= '0';
branch <= '0';
alusrc <= '0';
regdst <= '0';
regwrite <= '0';
jump <= '0';
aluop <="00";

case op is

when "000000" => -- R-Type
regwrite <= '1'; regdst <= '1'; aluop <= "10";

when "100011" => -- lw
alusrc <= '1'; regwrite <= '1'; memtoreg <= '1'; aluop <= "00";

when "101011" => -- sw
alusrc <= '1'; memwrite <= '1'; aluop <= "00";

when "000100" => -- beq
branch <= '1'; aluop <= "01";

when "001000" => -- addi
alusrc <= '1'; regwrite <= '1'; aluop <= "00";

when "000010" => -- j
jump <= '1';

when others =>

memtoreg <= '0';
memwrite <= '0';
branch <= '0';
alusrc <= '0';
regdst <= '0';
regwrite <= '0';
jump <= '0';
aluop <="00";


end case;

end process;

end Behavioral;
