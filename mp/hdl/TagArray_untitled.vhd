LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY TagArray IS
   PORT( 
      TagIn     : IN     LC3B_C_TAG;
      TagOut    : OUT    LC3b_c_tag;
      Reset_L   : IN     std_logic;
      Index     : IN     LC3B_C_INDEX;
      DataWrite : IN     std_logic
   );

-- Declarations

END TagArray ;

--
ARCHITECTURE untitled OF TagArray IS
	TYPE TagArray IS array (7 downto 0) of LC3B_C_Tag;
	SIGNAL Tag : TagArray;
	BEGIN
		--------------------------------------------------------------
		ReadFromTagArray : PROCESS (Tag, Index)
		--------------------------------------------------------------
    
			VARIABLE TagIndex : integer;
			BEGIN
				TagIndex := to_integer(unsigned(Index));
				TagOut <= Tag(TagIndex) after 20 ns;
		
		END PROCESS ReadFromTagArray;
	
		--------------------------------------------------------------
		WriteToTagArray : PROCESS (RESET_L, Index, DataWrite, TagIn)
		-------------------------------------------------------	------	
			VARIABLE TagIndex : integer;
			BEGIN
				TagIndex := to_integer(unsigned(Index));
			IF RESET_L = '0' THEN
				Tag(0) <= (OTHERS => 'X');
				Tag(1) <= (OTHERS => 'X');
				Tag(2) <= (OTHERS => 'X');
				Tag(3) <= (OTHERS => 'X');
				Tag(4) <= (OTHERS => 'X');
				Tag(5) <= (OTHERS => 'X');
				Tag(6) <= (OTHERS => 'X');
				Tag(7) <= (OTHERS => 'X');
			END IF;

			IF (DataWrite = '1') THEN
				Tag(TagIndex) <= TagIn;
			END IF;
		
		END PROCESS WriteToTagArray;
END ARCHITECTURE untitled;
