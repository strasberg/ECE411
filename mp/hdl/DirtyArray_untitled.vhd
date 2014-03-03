--
-- VHDL Architecture ece411.DirtyArray.untitled
--
-- Created:
--          by - strasbe1.ews (evrt-252-36.ews.illinois.edu)
--          at - 14:09:48 02/14/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY DirtyArray IS
   PORT( 
      DirtyOut   : OUT    std_logic;
      Reset_L    : IN     std_logic;
      Index      : IN     LC3B_C_INDEX;
      DirtyWrite : IN     std_logic;
      DirtyIn    : IN     std_logic
   );

-- Declarations

END DirtyArray ;
ARCHITECTURE untitled OF DirtyArray IS
TYPE DirtyArray IS array (7 downto 0) of std_logic;
	SIGNAL Dirty : DirtyArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromDirtyArray : PROCESS (Dirty, Index)
		--------------------------------------------------------------
    
			VARIABLE DirtyIndex : integer;
			BEGIN
				DirtyIndex := to_integer(unsigned(Index));
				DirtyOut <= Dirty(DirtyIndex) after 20 ns;
		
		END PROCESS ReadFromDirtyArray;
	
		--------------------------------------------------------------
		WriteToDirtyArray : PROCESS (RESET_L, Index, DirtyWrite)
		-------------------------------------------------------	------	
			VARIABLE DirtyIndex : integer;
			BEGIN
				DirtyIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Dirty(0) <= '0';
				Dirty(1) <= '0';
				Dirty(2) <= '0';
				Dirty(3) <= '0';
				Dirty(4) <= '0';
				Dirty(5) <= '0';
				Dirty(6) <= '0';
				Dirty(7) <= '0';
			END IF;

			IF (DirtyWrite = '1') THEN
				Dirty(DirtyIndex) <= DirtyIn;
			END IF;
		
		END PROCESS WriteToDirtyArray;
END ARCHITECTURE untitled;

