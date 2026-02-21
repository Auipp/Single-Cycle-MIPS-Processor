library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity aluproj is
    Port ( 
        data1  : in  STD_LOGIC_VECTOR(31 downto 0);
        data2  : in  STD_LOGIC_VECTOR(31 downto 0);
        aluop  : in  STD_LOGIC_VECTOR(3 downto 0);
        dataout: out STD_LOGIC_VECTOR(31 downto 0);
        zflag  : out STD_LOGIC
    );
end aluproj;

architecture Behavioral of aluproj is
    signal result : STD_LOGIC_VECTOR(31 downto 0);
begin
    process(data1, data2, aluop)
    begin
result <= (others => '0'); -- default value	
 
if    (aluop = "0000") then result <= data1 and data2;      -- AND
elsif (aluop = "0001") then result <= data1 or data2;       -- OR
elsif (aluop = "0010") then result <= data1 + data2;        -- ADD
elsif (aluop = "0110") then result <= data1 - data2;        -- SUB
elsif (aluop = "1100") then result <= not (data1 or data2); -- NOR
elsif (aluop = "0111") then                                 -- SLT
    if (data1 < data2) then result <= X"00000001";
	     else result <= X"00000000";
    end if;
end if;
    end process;
	 
dataout <= result;

process(result)
begin
if (result = X"00000000") then
zflag <= '1';
else
zflag <= '0';
end if;
end process;

end Behavioral;