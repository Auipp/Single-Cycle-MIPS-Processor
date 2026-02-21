library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.FloprPackage.ALL;
use work.Mux32Package.ALL;
use work.DecoderPackage.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


entity RegisterFile is
    Port ( 
        read_sel1 : in STD_LOGIC_VECTOR(4 downto 0);
        read_sel2 : in STD_LOGIC_VECTOR(4 downto 0);
        write_sel : in STD_LOGIC_VECTOR(4 downto 0);
        write_ena : in STD_LOGIC;
        clk       : in STD_LOGIC;
        rst       : in STD_LOGIC;
        write_data: in STD_LOGIC_VECTOR(31 downto 0);
        data1     : out STD_LOGIC_VECTOR(31 downto 0);
        data2     : out STD_LOGIC_VECTOR(31 downto 0)
    );
end RegisterFile;

architecture Behavioral of RegisterFile is
    signal dec_out, load : STD_LOGIC_VECTOR(31 downto 0) := (others => '0');
    signal q0, q1, q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14, q15, q16, q17, q18, q19, q20, q21, q22, q23, q24, q25, q26, q27, q28, q29, q30, q31 : STD_LOGIC_VECTOR(31 downto 0);

begin
    MainDecoder: Decoder port map (sel=>write_sel, y=>dec_out); -- INSTANCE OF DECODER
	 
	 -------------- FLOPRS
	 
	 load(0) <= write_ena and dec_out(0);
    r0: Flopr port map(clk, rst, load(0), write_data, q0);

    load(1) <= write_ena and dec_out(1);
    r1: Flopr port map(clk, rst, load(1), write_data, q1);

    load(2) <= write_ena and dec_out(2);
    r2: Flopr port map(clk, rst, load(2), write_data, q2);
	     load(3) <= write_ena and dec_out(3);
    r3: Flopr port map(clk, rst, load(3), write_data, q3);

    load(4) <= write_ena and dec_out(4);
    r4: Flopr port map(clk, rst, load(4), write_data, q4);

    load(5) <= write_ena and dec_out(5);
    r5: Flopr port map(clk, rst, load(5), write_data, q5);
	 
    load(6) <= write_ena and dec_out(6);
    r6: Flopr port map(clk, rst, load(6), write_data, q6);

    load(7) <= write_ena and dec_out(7);
    r7: Flopr port map(clk, rst, load(7), write_data, q7);

    load(8) <= write_ena and dec_out(8);
    r8: Flopr port map(clk, rst, load(8), write_data, q8);
	 
    load(9) <= write_ena and dec_out(9);
    r9: Flopr port map(clk, rst, load(9), write_data, q9);

    load(10) <= write_ena and dec_out(10);
    r10: Flopr port map(clk, rst, load(10), write_data, q10);

    load(11) <= write_ena and dec_out(11);
    r11: Flopr port map(clk, rst, load(11), write_data, q11);

    load(12) <= write_ena and dec_out(12);
    r12: Flopr port map(clk, rst, load(12), write_data, q12);

    load(13) <= write_ena and dec_out(13);
    r13: Flopr port map(clk, rst, load(13), write_data, q13);

    load(14) <= write_ena and dec_out(14);
    r14: Flopr port map(clk, rst, load(14), write_data, q14);

    load(15) <= write_ena and dec_out(15);
    r15: Flopr port map(clk, rst, load(15), write_data, q15);

    load(16) <= write_ena and dec_out(16);
    r16: Flopr port map(clk, rst, load(16), write_data, q16);
	 
    load(17) <= write_ena and dec_out(17);
    r17: Flopr port map(clk, rst, load(17), write_data, q17);

    load(18) <= write_ena and dec_out(18);
    r18: Flopr port map(clk, rst, load(18), write_data, q18);

    load(19) <= write_ena and dec_out(19);
    r19: Flopr port map(clk, rst, load(19), write_data, q19);

    load(20) <= write_ena and dec_out(20);
    r20: Flopr port map(clk, rst, load(20), write_data, q20);

    load(21) <= write_ena and dec_out(21);
    r21: Flopr port map(clk, rst, load(21), write_data, q21);

    load(22) <= write_ena and dec_out(22);
    r22: Flopr port map(clk, rst, load(22), write_data, q22);

    load(23) <= write_ena and dec_out(23);
    r23: Flopr port map(clk, rst, load(23), write_data, q23);
	 
    load(24) <= write_ena and dec_out(24);
    r24: Flopr port map(clk, rst, load(24), write_data, q24);

    load(25) <= write_ena and dec_out(25);
    r25: Flopr port map(clk, rst, load(25), write_data, q25);

    load(26) <= write_ena and dec_out(26);
    r26: Flopr port map(clk, rst, load(26), write_data, q26);

    load(27) <= write_ena and dec_out(27);
    r27: Flopr port map(clk, rst, load(27), write_data, q27);

    load(28) <= write_ena and dec_out(28);
    r28: Flopr port map(clk, rst, load(28), write_data, q28);

    load(29) <= write_ena and dec_out(29);
    r29: Flopr port map(clk, rst, load(29), write_data, q29);

    load(30) <= write_ena and dec_out(30);
    r30: Flopr port map(clk, rst, load(30), write_data, q30);

    load(31) <= write_ena and dec_out(31);
    r31: Flopr port map(clk, rst, load(31), write_data, q31);


-- TWO READ MUX

    m1: Mux32 port map(read_sel1, q0, q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31, data1);
    m2: Mux32 port map(read_sel2, q0, q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,q26,q27,q28,q29,q30,q31, data2);

end Behavioral;
