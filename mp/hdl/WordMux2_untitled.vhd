--
-- VHDL Architecture ece411.WordMux2.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 18:53:53 01/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY WordMux2 IS
   PORT( 
      A   : IN     LC3b_word;
      B   : IN     LC3b_word;
      Sel : IN     std_logic;
      F   : OUT    LC3b_word
   );

-- Declarations

END WordMux2 ;

--
ARCHITECTURE UNTITLED OF WORDMUX2 IS
BEGIN
	PROCESS (A, B, SEL)
	VARIABLE STATE : LC3B_WORD;
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
END UNTITLED;


