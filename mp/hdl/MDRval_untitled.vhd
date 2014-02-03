--
-- VHDL Architecture ece411.MDRval.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-20.ews.illinois.edu)
--          at - 19:07:51 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY MDRval IS
   PORT( 
      MDRout    : IN     LC3b_word;
      clk       : IN     std_logic;
      MDRvalout : OUT    LC3b_word
   );

-- Declarations

END MDRval ;

--
ARCHITECTURE untitled OF MDRval IS
BEGIN
  ----------------------------------------
	VHDL_MDRval : PROCESS (MDRout)
	----------------------------------------
	VARIABLE TEMP_OUT : LC3B_WORD;
	BEGIN
		  TEMP_OUT := (MDRout AND "0000000011111111");
	    MDRvalout <= TEMP_OUT AFTER DELAY_ALU;
	END PROCESS VHDL_MDRval;
END ARCHITECTURE untitled;

