library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.DatapathPackage.ALL; 
use work.ControllerPackage.ALL;
use work.ImemPackage.ALL;
use work.DmemPackage.ALL;

entity Main_Module is
	Port ( 
	clk : in STD_LOGIC;
	rst : in STD_LOGIC;                            
	writedata : out STD_LOGIC_VECTOR(31 downto 0);
	dataadr : out STD_LOGIC_VECTOR(31 downto 0);   
	memwrite : out STD_LOGIC );
end Main_Module;


architecture Behavioral of Main_Module is
-- signals
signal instr : STD_LOGIC_VECTOR(31 downto 0);
signal pc_current : STD_LOGIC_VECTOR(31 downto 0);
signal alu_out_sig, dmem_wdata_int, dmem_rdata : STD_LOGIC_VECTOR(31 downto 0);

-- Control 
signal memtoreg, memwrite_sig, pcsrc, alusrc, regdst, regwrite, jump, zero : STD_LOGIC;
signal alucontrol : STD_LOGIC_VECTOR(3 downto 0);
	 
begin


-- Controller Instance
c: controller port map(
op => instr(31 downto 26),
funct => instr(5 downto 0),
zero => zero,
memtoreg => memtoreg,
memwrite => memwrite_sig, 
pcsrc => pcsrc,
alusrc => alusrc,
regdst => regdst,
regwrite => regwrite,
jump => jump,
alucontrol => alucontrol
);



-- Datapath Instance
dp: Datapath port map(
clk => clk,
reset => rst,            
memtoreg => memtoreg,
pcsrc => pcsrc,
alusrc => alusrc,
regdst => regdst,
regwrite => regwrite,
jump => jump,
alucontrol => alucontrol,
instr_in => instr,
dmem_data_in => dmem_rdata,
pc_out => pc_current,
alu_out => alu_out_sig,
writedata_out => dmem_wdata_int,
zero => zero
);

--  Instruction Memory Instance
im: imem port map(
a => pc_current(7 downto 2),
rd => instr
);

-- Data Memory Instance
dm: dmem port map(
clk => clk,
we => memwrite_sig,      
re => '1',
a => alu_out_sig,
wd => dmem_wdata_int,
rd => dmem_rdata
);

memwrite <= memwrite_sig;
dataadr <= alu_out_sig;      
writedata <= dmem_wdata_int; 
end Behavioral;