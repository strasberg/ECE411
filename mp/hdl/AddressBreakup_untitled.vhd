--
-- VHDL Architecture ece411.AddressBreakup.untitled
--
-- Created:
--          by - strasbe1.ews (evrt-252-36.ews.illinois.edu)
--          at - 14:52:47 02/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY AddressBreakup IS
   PORT( 
      ADDRESS    : IN     LC3b_word;
      CLK        : IN     STD_LOGIC;
      AddrTAg    : OUT    LC3B_C_TAG;
      AddrOffset : OUT    LC3B_C_offset
   );

-- Declarations

END AddressBreakup ;

--
ARCHITECTURE untitled OF AddressBreakup IS
BEGIN
END ARCHITECTURE untitled;

