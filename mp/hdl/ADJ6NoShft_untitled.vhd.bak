--
-- VHDL Architecture ece411.ADJ6NoShft.untitled
--
-- Created:
--          by - strasbe1.ews (dcl-l520-33.ews.illinois.edu)
--          at - 20:30:39 02/06/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY ADJ6NoShft IS
   PORT( 
      clk           : IN     std_logic;
      index6        : IN     LC3b_index6;
      Adj6NoShftout : OUT    LC3b_word
   );

-- Declarations

END ADJ6NoShft ;

--
ARCHITECTURE untitled OF ADJ6NoShft IS
BEGIN
  Adj6NoShftout <= INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6(5) & INDEX6 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;

