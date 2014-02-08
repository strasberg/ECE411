--
-- VHDL Architecture ece411.AddrLowestBit.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-39.ews.illinois.edu)
--          at - 18:05:12 02/07/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY AddrLowestBit IS
   PORT( 
      ADDRESS : IN     LC3b_word;
      clk     : IN     std_logic;
      Addr0   : OUT    std_logic
   );

-- Declarations

END AddrLowestBit ;

--
ARCHITECTURE untitled OF AddrLowestBit IS
BEGIN
  Addr0 <= Address(0) after delay_mux2;
END ARCHITECTURE untitled;

