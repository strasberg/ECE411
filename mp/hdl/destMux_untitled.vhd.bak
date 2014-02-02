--
-- VHDL Architecture ece411.destMux.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-16.ews.illinois.edu)
--          at - 13:29:51 02/02/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY destMux IS
   PORT( 
      clk        : IN     std_logic;
      dest       : IN     LC3b_reg;
      DestSel    : IN     std_logic;
      destMuxout : OUT    LC3b_reg
   );

-- Declarations

END destMux ;

--
ARCHITECTURE untitled OF destMux IS
  BEGIN
  PROCESS (dest, DestSel)
    variable state : LC3b_reg;
    BEGIN
      case DestSel is
      when '1' =>
        state := "111";
      when '0' =>
        state := dest;
      when others =>
        state := (OTHERS => 'X');
      end case;
     destMuxout <= state after delay_MUX2;
  END PROCESS;
END ARCHITECTURE untitled;

