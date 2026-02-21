library IEEE;
use IEEE.STD_LOGIC_1164.all;

package DecoderPackage is
		component Decoder is
		    Port ( sel : in STD_LOGIC_VECTOR(4 downto 0); 
           y : out STD_LOGIC_VECTOR(31 downto 0));
			  
			  end component; 


end DecoderPackage;

package body DecoderPackage is


 
end DecoderPackage;