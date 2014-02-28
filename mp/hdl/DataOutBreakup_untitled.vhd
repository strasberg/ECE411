--
-- VHDL Architecture ece411.DataOutBreakup.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-05.ews.illinois.edu)
--          at - 19:41:02 02/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY DataOutBreakup IS
   PORT( 
      word0     : OUT    LC3B_WORD;
      word1     : OUT    LC3B_WORD;
      word2     : OUT    LC3B_WORD;
      word3     : OUT    LC3B_WORD;
      word4     : OUT    LC3B_WORD;
      word5     : OUT    LC3B_WORD;
      word6     : OUT    LC3B_WORD;
      word7     : OUT    LC3B_WORD;
      PMDATAOUT : IN     LC3B_OWORD
   );

-- Declarations

END DataOutBreakup ;

--
ARCHITECTURE untitled OF DataOutBreakup IS
BEGIN
    word0 <= PMDATAOUT(15 downto 0);
    word1 <= PMDATAOUT(31 downto 16);
    word2 <= PMDATAOUT(47 downto 32);
    word3 <= PMDATAOUT(63 downto 48);
    word4 <= PMDATAOUT(79 downto 64);
    word5 <= PMDATAOUT(95 downto 80);
    word6 <= PMDATAOUT(111 downto 96);
    word7 <= PMDATAOUT(127 downto 112);
END ARCHITECTURE untitled;

