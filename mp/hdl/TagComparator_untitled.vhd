--
-- VHDL Architecture ece411.TagComparator.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-13.ews.illinois.edu)
--          at - 16:54:18 02/15/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY TagComparator IS
   PORT( 
      A      : IN     LC3b_c_tag;
      B      : IN     LC3b_c_tag;
      equal  : OUT    std_logic
   );

-- Declarations

END TagComparator ;

--
ARCHITECTURE untitled OF TagComparator IS
BEGIN
  Process(A,B)
  begin
    if( A = B) then
      equal <= '1';
    else
      equal <= '0';
    end if;
  end process;
END ARCHITECTURE untitled;

