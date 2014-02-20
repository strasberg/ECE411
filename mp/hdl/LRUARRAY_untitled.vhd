--
-- VHDL Architecture ece411.LRUARRAY.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-05.ews.illinois.edu)
--          at - 20:14:44 02/17/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY LRUARRAY IS
   PORT( 
      LRUOut   : OUT    std_logic;
      LRUWrite : IN     std_logic;
      Index    : IN     LC3B_C_INDEX;
      Reset_L  : IN     std_logic;
      LRUIN    : IN     std_logic
   );

-- Declarations

END LRUARRAY ;

--
ARCHITECTURE untitled OF LRUARRAY IS
  TYPE LRUArray IS array (7 downto 0) of std_logic;
	SIGNAL LRU : LRUArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromLRUArray : PROCESS (LRU, Index)
		--------------------------------------------------------------
    
			VARIABLE LRUIndex : integer;
			BEGIN
				LRUIndex := to_integer(unsigned(Index));
				LRUOut <= LRU(LRUIndex) after 20 ns;
		
		END PROCESS ReadFromLRUArray;
	
		--------------------------------------------------------------
		WriteToLRUArray : PROCESS (RESET_L, Index, LRUWrite)
		-------------------------------------------------------	------	
			VARIABLE LRUIndex : integer;
			BEGIN
				LRUIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				LRU(0) <= '0';
				LRU(1) <= '0';
				LRU(2) <= '0';
				LRU(3) <= '0';
				LRU(4) <= '0';
				LRU(5) <= '0';
				LRU(6) <= '0';
				LRU(7) <= '0';
			END IF;

			IF (LRUWrite = '1') THEN
				LRU(LRUIndex) <= LRUIn;
			END IF;
		
		END PROCESS WriteToLRUArray;
END ARCHITECTURE untitled;

