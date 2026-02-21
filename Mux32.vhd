library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Mux32 is
    Port (  sel : in STD_LOGIC_VECTOR(4 downto 0);
        i0  : in STD_LOGIC_VECTOR(31 downto 0);
        i1  : in STD_LOGIC_VECTOR(31 downto 0);
        i2  : in STD_LOGIC_VECTOR(31 downto 0);
        i3  : in STD_LOGIC_VECTOR(31 downto 0);
        i4  : in STD_LOGIC_VECTOR(31 downto 0);
        i5  : in STD_LOGIC_VECTOR(31 downto 0);
        i6  : in STD_LOGIC_VECTOR(31 downto 0);
        i7  : in STD_LOGIC_VECTOR(31 downto 0);
        i8  : in STD_LOGIC_VECTOR(31 downto 0);
        i9  : in STD_LOGIC_VECTOR(31 downto 0);
        i10 : in STD_LOGIC_VECTOR(31 downto 0);
        i11 : in STD_LOGIC_VECTOR(31 downto 0);
        i12 : in STD_LOGIC_VECTOR(31 downto 0);
        i13 : in STD_LOGIC_VECTOR(31 downto 0);
        i14 : in STD_LOGIC_VECTOR(31 downto 0);
        i15 : in STD_LOGIC_VECTOR(31 downto 0);
        i16 : in STD_LOGIC_VECTOR(31 downto 0);
        i17 : in STD_LOGIC_VECTOR(31 downto 0);
        i18 : in STD_LOGIC_VECTOR(31 downto 0);
        i19 : in STD_LOGIC_VECTOR(31 downto 0);
        i20 : in STD_LOGIC_VECTOR(31 downto 0);
        i21 : in STD_LOGIC_VECTOR(31 downto 0);
        i22 : in STD_LOGIC_VECTOR(31 downto 0);
        i23 : in STD_LOGIC_VECTOR(31 downto 0);
        i24 : in STD_LOGIC_VECTOR(31 downto 0);
        i25 : in STD_LOGIC_VECTOR(31 downto 0);
        i26 : in STD_LOGIC_VECTOR(31 downto 0);
        i27 : in STD_LOGIC_VECTOR(31 downto 0);
        i28 : in STD_LOGIC_VECTOR(31 downto 0);
        i29 : in STD_LOGIC_VECTOR(31 downto 0);
        i30 : in STD_LOGIC_VECTOR(31 downto 0);
        i31 : in STD_LOGIC_VECTOR(31 downto 0);
        y   : out STD_LOGIC_VECTOR(31 downto 0)
    );
end Mux32;

architecture Behavioral of Mux32 is
begin
    process(sel, i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31)
    begin
        y <= (others => '0'); -- default output


------------------------------------------------ OUTPUTS 
        if    (sel = "00000") then y <= i0;
        elsif (sel = "00001") then y <= i1;
        elsif (sel = "00010") then y <= i2;
        elsif (sel = "00011") then y <= i3;
        elsif (sel = "00100") then y <= i4;
        elsif (sel = "00101") then y <= i5;
        elsif (sel = "00110") then y <= i6;
        elsif (sel = "00111") then y <= i7;
        elsif (sel = "01000") then y <= i8;
        elsif (sel = "01001") then y <= i9;
        elsif (sel = "01010") then y <= i10;
        elsif (sel = "01011") then y <= i11;
        elsif (sel = "01100") then y <= i12;
        elsif (sel = "01101") then y <= i13;
        elsif (sel = "01110") then y <= i14;
        elsif (sel = "01111") then y <= i15;
        elsif (sel = "10000") then y <= i16;
        elsif (sel = "10001") then y <= i17;
        elsif (sel = "10010") then y <= i18;
        elsif (sel = "10011") then y <= i19;
        elsif (sel = "10100") then y <= i20;
        elsif (sel = "10101") then y <= i21;
        elsif (sel = "10110") then y <= i22;
        elsif (sel = "10111") then y <= i23;
        elsif (sel = "11000") then y <= i24;
        elsif (sel = "11001") then y <= i25;
        elsif (sel = "11010") then y <= i26;
        elsif (sel = "11011") then y <= i27;
        elsif (sel = "11100") then y <= i28;
        elsif (sel = "11101") then y <= i29;
        elsif (sel = "11110") then y <= i30;
        elsif (sel = "11111") then y <= i31;
        else
            y <= (others => '0');
        end if;
    end process;
end Behavioral;