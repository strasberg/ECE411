--
-- VHDL Architecture ece411.JSRadd.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-16.ews.illinois.edu)
--          at - 14:33:58 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY JSRadd IS
   PORT( 
      Offset11out : IN     LC3B_word;
      clk         : IN     std_logic;
      JSRaddout   : OUT    LC3b_word;
      PCOUT       : IN     LC3B_word
   );

-- Declarations

END JSRadd ;

--
ARCHITECTURE untitled OF JSRadd IS
BEGIN
  VHDL_JSRadd : PROCESS (PCOUT, Offset11out)
	BEGIN 
		  JSRaddout <= STD_LOGIC_VECTOR(SIGNED(PCOUT) + SIGNED(Offset11out)) AFTER DELAY_ADDER;
	END PROCESS;
END ARCHITECTURE untitled;

