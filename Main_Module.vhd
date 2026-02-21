library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Main_Module is
    Port ( 
        clk : in  STD_LOGIC;
        rst : in  STD_LOGIC;
        writedata : out STD_LOGIC_VECTOR(31 downto 0);
        dataadr : out STD_LOGIC_VECTOR(31 downto 0);
        memwrite : out STD_LOGIC
    );
end Main_Module;

architecture Structural of Main_Module is

-- Component declaration

    component mips is
Port ( 
clk  : in  STD_LOGIC;
reset  : in  STD_LOGIC;
dmem_addr : out STD_LOGIC_VECTOR(31 downto 0);
dmem_wdata : out STD_LOGIC_VECTOR(31 downto 0);
dmem_we : out STD_LOGIC;
pc_out : out STD_LOGIC_VECTOR(31 downto 0)
);
    end component;
	 
signal pc_s : STD_LOGIC_VECTOR(31 downto 0);
    
begin

-- mips instance

    MIPS_CPU: mips
    port map (
clk  => clk,
reset  => rst,
dmem_addr  => dataadr,
dmem_wdata => writedata,
dmem_we  => memwrite,
pc_out  => pc_s
    );

end Structural;