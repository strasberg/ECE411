--
-- VHDL Architecture ece411.comparator1.untitled
--
-- Created:
--          by - strasbe1.ews (evrt-252-36.ews.illinois.edu)
--          at - 15:07:48 02/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY comparator1 IS
   PORT( 
      AddrTAg : IN     LC3B_C_TAG;
      CLK     : IN     STD_LOGIC;
      TagOut1 : IN     LC3B_C_TAG;
      A1      : OUT    std_logic
   );

-- Declarations

END comparator1 ;

--
ARCHITECTURE untitled OF comparator1 IS
BEGIN
END ARCHITECTURE untitled;

