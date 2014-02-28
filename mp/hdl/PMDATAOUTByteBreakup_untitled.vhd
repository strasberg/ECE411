--
-- VHDL Architecture ece411.PMDATAOUTByteBreakup.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 05:02:48 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY PMDATAOUTByteBreakup IS
   PORT( 
      byte0     : OUT    LC3B_byte;
      byte1     : OUT    LC3B_byte;
      byte2     : OUT    LC3B_byte;
      byte3     : OUT    LC3B_byte;
      byte4     : OUT    LC3B_byte;
      byte5     : OUT    LC3B_byte;
      byte6     : OUT    LC3B_byte;
      byte7     : OUT    LC3B_byte;
      byte8     : OUT    LC3B_byte;
      byte9     : OUT    LC3B_byte;
      byte10    : OUT    LC3B_byte;
      byte11    : OUT    LC3B_byte;
      byte12    : OUT    LC3B_byte;
      byte13    : OUT    LC3B_byte;
      byte14    : OUT    LC3B_byte;
      byte15    : OUT    LC3B_byte;
      DATAOUT   : IN     LC3b_word;
      dataByte0 : OUT    LC3B_byte;
      dataByte1 : OUT    LC3B_byte;
      PMDATAOUT : IN     LC3B_OWORD
   );

-- Declarations

END PMDATAOUTByteBreakup ;

--
ARCHITECTURE untitled OF PMDATAOUTByteBreakup IS
BEGIN
      byte0  <= PMDATAOUT(7 downto 0);
      byte1  <= PMDATAOUT(15 downto 8);
      byte2  <= PMDATAOUT(23 downto 16);
      byte3  <= PMDATAOUT(31 downto 24);
      byte4  <= PMDATAOUT(39 downto 32);
      byte5  <= PMDATAOUT(47 downto 40);
      byte6  <= PMDATAOUT(55 downto 48);
      byte7  <= PMDATAOUT(63 downto 56);
      byte8  <= PMDATAOUT(71 downto 64);
      byte9  <= PMDATAOUT(79 downto 72);
      byte10 <= PMDATAOUT(87 downto 80);
      byte11 <= PMDATAOUT(95 downto 88);
      byte12 <= PMDATAOUT(103 downto 96);
      byte13 <= PMDATAOUT(111 downto 104);
      byte14 <= PMDATAOUT(119 downto 112);
      byte15 <= PMDATAOUT(127 downto 120);
      dataByte0 <= DATAOUT(7 downto 0);
      dataBYte1 <= DATAOUT(15 downto 8);
END ARCHITECTURE untitled;

