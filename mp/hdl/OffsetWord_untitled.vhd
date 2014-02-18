--
-- VHDL Architecture ece411.OffsetWord.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-05.ews.illinois.edu)
--          at - 19:50:35 02/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY OffsetWord IS
   PORT( 
      offset : IN     LC3b_c_offset;
      dataOutsel: Out LC3B_8MUX_SEL
   );

-- Declarations

END OffsetWord ;

--
ARCHITECTURE untitled OF OffsetWord IS
BEGIN
  dataOutSel <= offset(3 downto 1);
END ARCHITECTURE untitled;

