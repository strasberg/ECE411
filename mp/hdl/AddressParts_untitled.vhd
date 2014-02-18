--
-- VHDL Architecture ece411.AddressParts.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-13.ews.illinois.edu)
--          at - 16:28:45 02/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY AddressParts IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      Tag     : OUT    LC3b_c_tag;
      offset  : OUT    LC3b_c_offset;
      Index   : OUT    LC3B_C_INDEX
   );

-- Declarations

END AddressParts ;

--
ARCHITECTURE untitled OF AddressParts IS
BEGIN
  Tag <= Address(15 downto 7);
  Index <= Address(6 downto 4);
  Offset <= Address(3 downto 0);
END ARCHITECTURE untitled;

