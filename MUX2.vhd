library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX2 is
    Port (
        A   : in  STD_LOGIC_VECTOR(31 downto 0);
        B   : in  STD_LOGIC_VECTOR(31 downto 0);
        Sel : in  STD_LOGIC;
        Y   : out STD_LOGIC_VECTOR(31 downto 0)
    );
end MUX2;

architecture Behavioral of MUX2 is
begin
    Y <= A when Sel = '0' else B;
end Behavioral;