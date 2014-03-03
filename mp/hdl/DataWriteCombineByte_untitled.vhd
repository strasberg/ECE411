--
-- VHDL Architecture ece411.DataWriteCombineByte.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 06:05:35 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY DataWriteCombineByte IS
   PORT( 
      byte0out  : IN     LC3b_byte;
      byte1out  : IN     LC3b_byte;
      byte2out  : IN     LC3b_byte;
      byte3out  : IN     LC3b_byte;
      byte4out  : IN     LC3b_byte;
      byte5out  : IN     LC3b_byte;
      byte6out  : IN     LC3b_byte;
      byte7out  : IN     LC3b_byte;
      byte8out  : IN     LC3b_byte;
      byte9out  : IN     LC3b_byte;
      byte10out : IN     LC3b_byte;
      byte11out : IN     LC3b_byte;
      byte12out : IN     LC3b_byte;
      byte13out : IN     LC3b_byte;
      byte14out : IN     LC3b_byte;
      byte15out : IN     LC3b_byte;
      DataWriteOut : OUT LC3B_Oword
   );

-- Declarations

END DataWriteCombineByte ;

--
ARCHITECTURE untitled OF DataWriteCombineByte IS
BEGIN
DATAWriteOUt(7 downto 0)     <= byte0out;
DATAWriteOUt(15 downto 8)    <= byte1out;
DATAWriteOUt(23 downto 16)   <= byte2out;
DATAWriteOUt(31 downto 24)   <= byte3out;
DATAWriteOUt(39 downto 32)   <= byte4out;
DATAWriteOUt(47 downto 40)   <= byte5out;
DATAWriteOUt(55 downto 48)   <= byte6out;
DATAWriteOUt(63 downto 56)   <= byte7out;
DATAWriteOUt(71 downto 64)   <= byte8out;
DATAWriteOUt(79 downto 72)   <= byte9out;
DATAWriteOUt(87 downto 80)   <= byte10out;
DATAWriteOUt(95 downto 88)   <= byte11out;
DATAWriteOUt(103 downto 96)  <= byte12out;
DATAWriteOUt(111 downto 104) <= byte13out;
DATAWriteOUt(119 downto 112) <= byte14out;
DATAWriteOUt(127 downto 120) <= byte15out;
END ARCHITECTURE untitled;
