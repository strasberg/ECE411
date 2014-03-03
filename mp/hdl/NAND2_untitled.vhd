--
-- VHDL Architecture ece411.NAND2.untitled
--
-- Created:
--          by - strasbe1.ews (dcl-l520-32.ews.illinois.edu)
--          at - 19:06:21 03/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY NAND2 IS
   PORT( 
      MWRITEH_L : IN     std_logic;
      MWRITEL_L : IN     std_logic;
      MemWrite  : OUT    std_logic
   );

-- Declarations

END NAND2 ;

--
ARCHITECTURE untitled OF NAND2 IS
BEGIN
  MemWrite <= MWRITEH_L nand MWRITEL_L after Delay_logic2;
END ARCHITECTURE untitled;

