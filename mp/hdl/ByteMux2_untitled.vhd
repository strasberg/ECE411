--
-- VHDL Architecture ece411.ByteMux2.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 05:20:42 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY ByteMux2 IS
   PORT( 
      B : IN     LC3b_byte;
      a : IN     LC3b_byte;
      sel : in   STD_LOGIC;
      F : OUT    LC3b_byte
   );

-- Declarations

END ByteMux2 ;

--
ARCHITECTURE untitled OF ByteMux2 IS
BEGIN
  PROCESS (A, B, SEL)
	VARIABLE STATE : LC3B_byte;
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
