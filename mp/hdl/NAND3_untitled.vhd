--
-- VHDL Architecture ece411.NAND3.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-40.ews.illinois.edu)
--          at - 22:03:55 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY NAND3 IS
   PORT( 
      MREAD_L   : IN     std_logic;
      MWRITEH_L : IN     std_logic;
      MWRITEL_L : IN     std_logic;
      memAction : OUT    std_logic
   );

-- Declarations

END NAND3 ;

--
ARCHITECTURE untitled OF NAND3 IS
BEGIN
  MemAction <= not(MREAD_L and MWRITEH_L and MWRITEL_L) after Delay_Logic3;
END ARCHITECTURE untitled;

