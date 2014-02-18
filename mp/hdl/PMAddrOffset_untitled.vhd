--
-- VHDL Architecture ece411.PMAddrOffset.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-05.ews.illinois.edu)
--          at - 19:26:20 02/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY PMAddrOffset IS
   PORT( 
      ADDRESS   : IN     LC3b_word;
      PMADDRESS : OUT    LC3B_WORD
   );

-- Declarations

END PMAddrOffset ;

--
ARCHITECTURE untitled OF PMAddrOffset IS
BEGIN
  PMADDRESS <= ADDRESS and "1111111111110000" after Delay_Mux2;
END ARCHITECTURE untitled;

