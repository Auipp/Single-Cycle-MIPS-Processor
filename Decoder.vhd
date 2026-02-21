library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Decoder is
    Port ( sel : in STD_LOGIC_VECTOR(4 downto 0); 
           y : out STD_LOGIC_VECTOR(31 downto 0));
end Decoder;

architecture Behavioral of Decoder is
begin
    process(sel) begin
	 
y <= (others => '0');
-------------------------------------------- DECODING 5 BITS TO 32 OUTPUTS
if    (sel = "00000") then y(0) <= '1';
elsif (sel = "00001") then y(1) <= '1';
elsif (sel = "00010") then y(2) <= '1';
elsif (sel = "00011") then y(3) <= '1';
elsif (sel = "00100") then y(4) <= '1';
elsif (sel = "00101") then y(5) <= '1';
elsif (sel = "00110") then y(6) <= '1';
elsif (sel = "00111") then y(7) <= '1';
elsif (sel = "01000") then y(8) <= '1';
elsif (sel = "01001") then y(9) <= '1';
elsif (sel = "01010") then y(10) <= '1';
elsif (sel = "01011") then y(11) <= '1';
elsif (sel = "01100") then y(12) <= '1';
elsif (sel = "01101") then y(13) <= '1';
elsif (sel = "01110") then y(14) <= '1';
elsif (sel = "01111") then y(15) <= '1';
elsif (sel = "10000") then y(16) <= '1';
elsif (sel = "10001") then y(17) <= '1';
elsif (sel = "10010") then y(18) <= '1';
elsif (sel = "10011") then y(19) <= '1';
elsif (sel = "10100") then y(20) <= '1';
elsif (sel = "10101") then y(21) <= '1';
elsif (sel = "10110") then y(22) <= '1';
elsif (sel = "10111") then y(23) <= '1';
elsif (sel = "11000") then y(24) <= '1';
elsif (sel = "11001") then y(25) <= '1';
elsif (sel = "11010") then y(26) <= '1';
elsif (sel = "11011") then y(27) <= '1';
elsif (sel = "11100") then y(28) <= '1';
elsif (sel = "11101") then y(29) <= '1';
elsif (sel = "11110") then y(30) <= '1';
elsif (sel = "11111") then y(31) <= '1';
end if;
    end process;
end Behavioral;