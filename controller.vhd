library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.MainDecoderPackage.ALL;
use work.ALUDecoderPackage.ALL;


entity controller is
    Port ( 
        op : in  STD_LOGIC_VECTOR (5 downto 0);
        funct : in  STD_LOGIC_VECTOR (5 downto 0);
        zero : in  STD_LOGIC;
        memtoreg : out  STD_LOGIC;
        memwrite : out  STD_LOGIC;
        pcsrc : out  STD_LOGIC;
        alusrc : out  STD_LOGIC;
        regdst : out  STD_LOGIC;
        regwrite : out  STD_LOGIC;
        jump : out  STD_LOGIC;
        alucontrol : out  STD_LOGIC_VECTOR (3 downto 0)
    );
end ;
  
architecture Behavioral of controller is

signal aluop_sig : STD_LOGIC_VECTOR(1 downto 0);
signal branch_sig : STD_LOGIC;
begin

-- Main Decoder Instance
md: maindec port map (
op => op,
memtoreg => memtoreg,
memwrite => memwrite,
branch => branch_sig,
alusrc => alusrc,
regdst => regdst,
regwrite => regwrite,
jump => jump,
aluop => aluop_sig
);

-- ALU Decoder Instance
ad: aludec port map (
funct => funct,
aluop => aluop_sig,
alucontrol => alucontrol
);

-- PC Source 
pcsrc <= branch_sig and zero;

end Behavioral;
