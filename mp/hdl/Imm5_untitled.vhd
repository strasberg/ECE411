--
-- VHDL Architecture ece411.Imm5.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-26.ews.illinois.edu)
--          at - 15:34:34 02/01/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Imm5 IS
   PORT( 
      clk        : IN     std_logic;
      immediate5 : IN     LC3b_imm5;
      Imm5out    : OUT    LC3b_word
   );

-- Declarations

END Imm5 ;

--
ARCHITECTURE untitled OF Imm5 IS
BEGIN
  Imm5out <= immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & immediate5(4) & Immediate5 AFTER DELAY_MUX2;
END ARCHITECTURE untitled;
