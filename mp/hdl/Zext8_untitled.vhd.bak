--
-- VHDL Architecture ece411.Zext8.untitled
--
-- Created:
--          by - strasbe1.ews (dcl-l520-33.ews.illinois.edu)
--          at - 22:26:46 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Zext8 IS
   PORT( 
      clk      : IN     std_logic;
      trapvect : IN     LC3B_TRAPVECT8;
      Zext8out : OUT    LC3b_word
   );

-- Declarations

END Zext8 ;

--
ARCHITECTURE untitled OF Zext8 IS
BEGIN
  Zext8out <= '0'& '0'& '0'& '0'& '0'& '0'& '0'& Trapvect & '0' AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

