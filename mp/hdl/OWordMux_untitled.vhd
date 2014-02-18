--
-- VHDL Architecture ece411.OWordMux.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-13.ews.illinois.edu)
--          at - 17:25:03 02/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY OWordMux IS
  PORT( 
      A   : IN     LC3b_oword;
      B   : IN     LC3b_oword;
      Sel : IN     std_logic;
      F   : OUT    LC3b_oword
   );
-- Declarations

END OWordMux ;

--
ARCHITECTURE untitled OF OWordMux IS
BEGIN
  PROCESS (A, B, SEL)
	VARIABLE STATE : LC3B_OWORD;
	BEGIN
		CASE SEL IS
			WHEN '0' =>
				STATE := A;
			WHEN '1' =>
				STATE := B;
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	F <= STATE AFTER DELAY_MUX2;
	END PROCESS;
END ARCHITECTURE untitled;

