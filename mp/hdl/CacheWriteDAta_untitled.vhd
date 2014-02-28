--
-- VHDL Architecture ece411.CacheWriteDAta.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 05:06:38 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY CacheWriteDAta IS
   PORT( 
      DATAOUT      : IN     LC3b_word;
      MWRITEH_L    : IN     std_logic;
      MWRITEL_L    : IN     std_logic;
      PMDATAOUT    : IN     LC3B_OWORD;
      offset       : IN     LC3b_c_offset;
      DataWriteOut : OUT    Lc3b_Oword
   );

-- Declarations

END CacheWriteDAta ;

--
ARCHITECTURE untitled OF CacheWriteDAta IS
BEGIN
END ARCHITECTURE untitled;

