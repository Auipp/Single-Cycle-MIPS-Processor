library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aludec is
    Port ( 
        funct : in  STD_LOGIC_VECTOR (5 downto 0);
        aluop : in  STD_LOGIC_VECTOR (1 downto 0);
        alucontrol : out  STD_LOGIC_VECTOR (3 downto 0)
    );
end aludec;

architecture Behavioral of aludec is
    begin
	     process(aluop, funct)
begin

case aluop is	  
when "00" => alucontrol <= "0010"; -- ADD (lw/sw/addi)
when "01" => alucontrol <= "0110"; -- SUB (beq)
					 
when others => -- "10" (R-Type)
case funct is
when "100000" => alucontrol <= "0010"; -- ADD
when "100010" => alucontrol <= "0110"; -- SUB
when "100100" => alucontrol <= "0000"; -- AND
when "100101" => alucontrol <= "0001"; -- OR 
when "101010" => alucontrol <= "0111"; -- SLT
when others   => alucontrol <= "----" ; -- unknown
end case;
end case;
    end process;

end Behavioral;
