library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port (
clk : in  STD_LOGIC;
rst : in  STD_LOGIC;
pcin : in  STD_LOGIC_VECTOR (31 downto 0);
pcout : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

begin

process(clk, rst)
begin
if rst = '1' then
pcout <= (others => '0'); -- default 0
elsif rising_edge(clk) then pcout <= pcin;            
end if;
end process;
end Behavioral;
