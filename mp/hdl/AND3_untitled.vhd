--
-- VHDL Architecture ece411.AND3.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-40.ews.illinois.edu)
--          at - 23:08:18 02/19/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY AND3 IS
   PORT( 
      Hit         : IN     std_logic;
      PauseHits_L : IN     std_logic;
      MRESP_H     : OUT    std_logic
   );

-- Declarations

END AND3 ;

--
ARCHITECTURE untitled OF AND3 IS
BEGIN
  MRESP_H <= Hit and PauseHits_L after Delay_Logic3;
END ARCHITECTURE untitled;

