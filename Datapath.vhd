library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.RegisterFilePackage.ALL; 
use work.aluprojPackage.ALL;
use work.ShiftLeft2Package.ALL;
use work.SignExtendPackage.ALL;
use work.PCPackage.ALL;
use work.Mux2Package.ALL;
use work.Mux5Package.ALL;
use work.AdderPackage.ALL;


entity Datapath is
    Port ( 
clk, reset : in STD_LOGIC;
memtoreg  : in STD_LOGIC;
pcsrc  : in STD_LOGIC;
alusrc : in STD_LOGIC;
regdst : in STD_LOGIC;
regwrite  : in STD_LOGIC;
jump    : in STD_LOGIC;
alucontrol : in STD_LOGIC_VECTOR(3 downto 0);
instr_in  : in STD_LOGIC_VECTOR(31 downto 0);
dmem_data_in  : in STD_LOGIC_VECTOR(31 downto 0);
pc_out : out STD_LOGIC_VECTOR(31 downto 0);
alu_out : out STD_LOGIC_VECTOR(31 downto 0);
writedata_out : out STD_LOGIC_VECTOR(31 downto 0);
zero : out STD_LOGIC
    );
end Datapath; 


architecture Behavioral of Datapath is
-------------------------------------------------------- SIGNALS
signal pc_current, pc_next, pc_plus4, branch_target_addr, pc_after_branch_mux : STD_LOGIC_VECTOR(31 downto 0);
signal four : STD_LOGIC_VECTOR(31 downto 0) := x"00000004";
signal sign_extended_imm, shifted_imm : STD_LOGIC_VECTOR(31 downto 0);
signal write_register_addr : STD_LOGIC_VECTOR(4 downto 0);
signal write_back_data : STD_LOGIC_VECTOR(31 downto 0);
signal alu_operand_a, alu_operand_b : STD_LOGIC_VECTOR(31 downto 0);
signal alu_result_internal : STD_LOGIC_VECTOR(31 downto 0);
signal reg_read_data_2 : STD_LOGIC_VECTOR(31 downto 0);
signal jump_imm_shifted : STD_LOGIC_VECTOR(31 downto 0);
signal jump_target_addr : STD_LOGIC_VECTOR(31 downto 0);
    

begin

--------------------------------------------------- PC REGISTER INSTANCE
PC_Reg: PC port map(clk => clk,
 rst => reset, 
 pcin => pc_next,
 pcout => pc_current);
pc_out <= pc_current;
--------------------------------------------------- PC ADDER INSTANCE
PCAdder: Adder port map(A => pc_current,
 B => four, 
 Sum => pc_plus4);
--------------------------------------------------- SHIFT LEFT 2 (JUMP)
SL2_Jump: ShiftLeft2 port map(Input => "000000" & instr_in(25 downto 0),
 Shifted => jump_imm_shifted);
 
jump_target_addr <= pc_plus4(31 downto 28) & jump_imm_shifted(27 downto 0);
--  PC + 4


--------------------------------------------------- SHIFT LEFT 2 INSTANCE
SL2: ShiftLeft2 port map(Input => sign_extended_imm, 
Shifted => shifted_imm);

--------------------------------------------------- BRANCH ADDER INSTANCE
BranchAdder: Adder port map(A => pc_plus4, 
B => shifted_imm,
 Sum => branch_target_addr);

--------------------------------------------------- PC BRANCH MUX INSTANCE
PCMuxBranch: MUX2 port map(A => pc_plus4,
 B => branch_target_addr,
 Sel => pcsrc,
 Y => pc_after_branch_mux);
--------------------------------------------------- PC JUMP MUX INSTANCE
PCMuxJump: MUX2 port map(A => pc_after_branch_mux,
 B => jump_target_addr,
 Sel => jump, 
 Y => pc_next);
--------------------------------------------------- WRITE REGISTER MUX INSTANCE
WriteRegMux: Mux5 port map(d0 => instr_in(20 downto 16), 
d1 => instr_in(15 downto 11),
 s => regdst,
 y => write_register_addr);
--------------------------------------------------- REGISTER FILE INSTANCE
RF: RegisterFile port map(
read_sel1 => instr_in(25 downto 21),
read_sel2 => instr_in(20 downto 16),
write_sel => write_register_addr,
write_ena => regwrite,
clk => clk,
rst => reset,
write_data => write_back_data,
data1 => alu_operand_a,
data2 => reg_read_data_2
);
writedata_out <= reg_read_data_2;

--------------------------------------------------- SIGN EXTENDER INSTANCE
SE: SignExtend port map(Data_in => instr_in(15 downto 0),
 Data_out => sign_extended_imm);

--------------------------------------------------- ALU SOURCE MUX INSTANCE
ALUSrcMux: MUX2 port map(A => reg_read_data_2,
 B => sign_extended_imm,
 Sel => alusrc,
 Y => alu_operand_b);
--------------------------------------------------- ALU INSTANCE
ALU_Instance: aluproj port map(
data1 => alu_operand_a,
data2 => alu_operand_b,
aluop => alucontrol,
dataout => alu_result_internal,
zflag  => zero
);
alu_out <= alu_result_internal;
--------------------------------------------------- RESULT MUX INSTANCE
ResultMux: MUX2 port map(
A => alu_result_internal, 
B => dmem_data_in,  
Sel => memtoreg, 
Y => write_back_data
);


end Behavioral;
 