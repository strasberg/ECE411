--
-- VHDL Architecture ece411.Offset11.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-16.ews.illinois.edu)
--          at - 14:31:44 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Offset11 IS
   PORT( 
      clk         : IN     std_logic;
      offset11    : IN     LC3B_OFFSET11;
      Offset11out : OUT    LC3B_word
   );

-- Declarations

END Offset11 ;

--
ARCHITECTURE untitled OF Offset11 IS
BEGIN
  offset11out <= offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11(10) & offset11 & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

