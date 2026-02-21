library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Flopr is
    Port ( 
        clk, rst, enable : in STD_LOGIC; 
        d : in STD_LOGIC_VECTOR(31 downto 0); 
        q : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Flopr;

architecture Behavioral of Flopr is
begin
    process(clk, rst) begin
        if (rst = '1') then 
            q <= (others => '0');
        elsif (clk'event and clk = '1') then
            if (enable = '1') then 
                q <= d; 
            end if;
        end if;
    end process;
end Behavioral;