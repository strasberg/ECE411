--
-- VHDL Architecture ece411.LRUReg.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-18.ews.illinois.edu)
--          at - 19:28:08 02/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY LRUReg IS
   PORT( 
      Way1Hit   : IN     std_logic;
      MRESP_H   : IN     std_logic;
      memAction : IN     std_logic;
      LRUIN     : OUT    std_logic;
      LRUHold   : IN     std_logic;
      RESET_L   : IN     std_logic
   );

-- Declarations

END LRUReg ;

--
ARCHITECTURE untitled OF LRUReg IS
BEGIN
  Process(Way1Hit, LRUHOLD, RESET_L, MRESP_H, MemAction)
  begin
    if(LRUHold = '1') THEN
      LRUIN <= Way1Hit;
    elsif((MRESP_H = '1') AND (MemAction = '1')) THEN
      LRUIN <= Way1Hit;
    end if;
    
    if(RESET_L = '0') Then
      LRUIN <= '0';
    end if;
  end process;
END ARCHITECTURE untitled;

