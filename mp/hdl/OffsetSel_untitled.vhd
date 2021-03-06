--
-- VHDL Architecture ece411.OffsetSel.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 05:40:02 02/28/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY OffsetSel IS
   PORT( 
      MWRITEH_L : IN     std_logic;
      MWRITEL_L : IN     std_logic;
      offset    : IN     LC3b_c_offset;
      sel0      : OUT    std_logic;
      sel1      : OUT    std_logic;
      sel2      : OUT    std_logic;
      sel3      : OUT    std_logic;
      sel4      : OUT    std_logic;
      sel5      : OUT    std_logic;
      sel6      : OUT    std_logic;
      sel7      : OUT    std_logic;
      sel8      : OUT    std_logic;
      sel9      : OUT    std_logic;
      sel10     : OUT    std_logic;
      sel11     : OUT    std_logic;
      sel12     : OUT    std_logic;
      sel13     : OUT    std_logic;
      sel14     : OUT    std_logic;
      sel15     : OUT    std_logic
   );

-- Declarations

END OffsetSel ;

--
ARCHITECTURE untitled OF OffsetSel IS
  signal pre_sel0, pre_sel1, pre_sel2, pre_sel3, pre_sel4, pre_sel5, pre_sel6, pre_sel7, pre_sel8, pre_sel9 : std_logic :='0';
  signal pre_sel10, pre_sel11, pre_sel12, pre_sel13, pre_sel14, pre_sel15 : std_logic :='0';
BEGIN
  Process(offset, MWRITEH_L, MWRITEL_L)
  begin
    if((offset(3 downto 1) = "000" ) AND (MWriteL_L = '0')) THEN
      pre_sel0 <= '1';
    else
      pre_sel0 <= '0';
    end if;
    
    if((offset(3 downto 1) = "000" ) AND (MWriteH_L = '0')) THEN
      pre_sel1 <= '1';
    else
      pre_sel1 <= '0';
    end if;
  
    if((offset(3 downto 1) = "001" ) AND (MWriteL_L = '0')) THEN
      pre_sel2 <= '1';
    else
      pre_sel2 <= '0';    
    end if;
    
    if((offset = "0010" or offset = "0011") AND (MWriteH_L = '0')) THEN
      pre_sel3 <= '1';
    else
      pre_sel3 <= '0';    
    end if;
    
  
    if((offset(3 downto 1) = "010" ) AND (MWriteL_L = '0')) THEN
      pre_sel4 <= '1';
    else
      pre_sel4 <= '0';
    end if;
    
    if((offset(3 downto 1) = "010" ) AND (MWriteH_L = '0')) THEN
      pre_sel5 <= '1';
    else
      pre_sel5 <= '0';
    end if;
  
    if((offset(3 downto 1) = "011" ) AND (MWriteL_L = '0')) THEN
      pre_sel6 <= '1';
    else
      pre_sel6 <= '0';
    end if;
    
    if((offset(3 downto 1) = "011" ) AND (MWriteH_L = '0')) THEN
      pre_sel7 <= '1';
    else
      pre_sel7 <= '0';
    end if;
  
    if((offset(3 downto 1) = "100" ) AND (MWriteL_L = '0')) THEN
      pre_sel8 <= '1';
    else
      pre_sel8 <= '0';
    end if;
    
    if((offset(3 downto 1) = "100" ) AND (MWriteH_L = '0')) THEN
      pre_sel9 <= '1';
    else
      pre_sel9 <= '0';
    end if;
  
    if((offset(3 downto 1) = "101" ) AND (MWriteL_L = '0')) THEN
      pre_sel10 <= '1';
    else
      pre_sel10 <= '0';
    end if;
    
    if((offset(3 downto 1) = "101" ) AND (MWriteH_L = '0')) THEN
      pre_sel11 <= '1';
    else
      pre_sel11 <= '0';
    end if;
  
    if((offset(3 downto 1) = "110" ) AND (MWriteL_L = '0')) THEN
      pre_sel12 <= '1';
    else
      pre_sel12 <= '0';
    end if;
    
    if((offset(3 downto 1) = "110" ) AND (MWriteH_L = '0')) THEN
      pre_sel13 <= '1';
    else
      pre_sel13 <= '0';
    end if;
  
    if((offset(3 downto 1) = "111" ) AND (MWriteL_L = '0')) THEN
      pre_sel14 <= '1';
    else
      pre_sel4 <= '0';
    end if;
    
    if((offset(3 downto 1) = "111" ) AND (MWriteH_L = '0')) THEN
      pre_sel15 <= '1';
    else
      pre_sel5 <= '0';
    end if;
  end process;


  sel0  <= pre_sel0;
  sel1  <= pre_sel1;
  sel2  <= pre_sel2;
  sel3  <= pre_sel3;
  sel4  <= pre_sel4;
  sel5  <= pre_sel5;
  sel6  <= pre_sel6;
  sel7  <= pre_sel7;
  sel8  <= pre_sel8;
  sel9  <= pre_sel9;
  sel10 <= pre_sel10;
  sel11 <= pre_sel11;
  sel12 <= pre_sel12;
  sel13 <= pre_sel13;
  sel14 <= pre_sel14;
  sel15 <= pre_sel15;
END ARCHITECTURE untitled;
