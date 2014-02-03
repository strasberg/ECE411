--
-- VHDL Architecture ece411.LwrByte.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-20.ews.illinois.edu)
--          at - 19:42:24 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY LwrByte IS
   PORT( 
      MDRout     : IN     LC3b_word;
      clk        : IN     std_logic;
      LwrByteSel : IN     std_logic;
      LwrByteout : OUT    LC3b_word
   );

-- Declarations

END LwrByte ;

--
ARCHITECTURE untitled OF LwrByte IS
BEGIN
  PROCESS (MDRout, LwrByteSEL)
  Constant lowerBits : LC3b_word := "0000000011111111";
	VARIABLE STATE : LC3b_word;
	BEGIN
		CASE LwrByteSel IS
			WHEN '0' =>
				STATE := MDRout;
			WHEN '1' =>
				STATE := (MDRout AND lowerBits);
			WHEN OTHERS =>
				STATE := (OTHERS => 'X');
		END CASE;
	LwrByteout <= STATE AFTER DELAY_ALU;
	END PROCESS;
END ARCHITECTURE untitled;

