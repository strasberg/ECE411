--
-- VHDL Architecture ece411.IR.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 22:11:50 01/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY IR IS
   PORT( 
      LoadIR     : IN     std_logic;
      MDRout     : IN     LC3b_word;
      clk        : IN     std_logic;
      Opcode     : OUT    LC3b_opcode;
      SrcA       : OUT    LC3b_reg;
      SrcB       : OUT    LC3b_reg;
      index6     : OUT    LC3b_index6;
      offset9    : OUT    LC3b_offset9;
      Imm5sel    : OUT    std_logic;
      immediate5 : OUT    LC3b_imm5;
      dest       : OUT    LC3b_reg
   );

-- Declarations

END IR ;

--
ARCHITECTURE UNTITLED OF IR IS
SIGNAL VAL_IR : LC3B_WORD;
BEGIN
	------------------------------
	VHDL_REG_IR : PROCESS (CLK, LOADIR, MDROUT)
	------------------------------
	BEGIN
		IF (CLK'EVENT AND (CLK = '1') AND (CLK'LAST_VALUE = '0')) THEN
			IF (LOADIR = '1') THEN
				VAL_IR <= MDROUT AFTER DELAY_REG;
			END IF;
		END IF;
	END PROCESS VHDL_REG_IR;
	OPCODE <= VAL_IR(15 DOWNTO 12);
	SRCA <= VAL_IR(8 DOWNTO 6);
	SRCB <= VAL_IR(2 DOWNTO 0);
	DEST <= VAL_IR(11 DOWNTO 9);
	OFFSET9 <= VAL_IR(8 DOWNTO 0);
	INDEX6 <= VAL_IR(5 DOWNTO 0);
	Immediate5 <= VAL_IR(4 DOWNTO 0);
	Imm5Sel <= VAL_IR(5);
END UNTITLED;



