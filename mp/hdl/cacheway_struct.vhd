-- VHDL Entity ece411.CacheWay.symbol
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 08:32:46 02/28/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY CacheWay IS
   PORT( 
      DataIn     : IN     LC3b_oword;
      DataWrite  : IN     std_logic;
      DirtyIn    : IN     std_logic;
      DirtyWrite : IN     std_logic;
      Index      : IN     LC3B_C_INDEX;
      Reset_L    : IN     std_logic;
      TagIn      : IN     LC3B_C_TAG;
      DataOut    : OUT    LC3B_OWORD;
      DirtyOut   : OUT    std_logic;
      TagOut     : OUT    LC3b_c_tag;
      ValidOut   : OUT    std_logic
   );

-- Declarations

END CacheWay ;

--
-- VHDL Architecture ece411.CacheWay.struct
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 08:32:46 02/28/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 


ARCHITECTURE struct OF CacheWay IS

   -- Architecture declarations

   -- Internal signal declarations


   -- Component Declarations
   COMPONENT DataArray
   PORT (
      Reset_L   : IN     std_logic ;
      DataOut   : OUT    LC3B_OWORD ;
      Index     : IN     LC3B_C_INDEX ;
      DataIn    : IN     LC3b_oword ;
      DataWrite : IN     std_logic 
   );
   END COMPONENT;
   COMPONENT DirtyArray
   PORT (
      DirtyOut   : OUT    std_logic ;
      Reset_L    : IN     std_logic ;
      Index      : IN     LC3B_C_INDEX ;
      DirtyWrite : IN     std_logic ;
      DirtyIn    : IN     std_logic 
   );
   END COMPONENT;
   COMPONENT TagArray
   PORT (
      TagIn     : IN     LC3B_C_TAG ;
      TagOut    : OUT    LC3b_c_tag ;
      Reset_L   : IN     std_logic ;
      Index     : IN     LC3B_C_INDEX ;
      DataWrite : IN     std_logic 
   );
   END COMPONENT;
   COMPONENT ValidArray
   PORT (
      ValidOut  : OUT    std_logic ;
      Reset_L   : IN     std_logic ;
      Index     : IN     LC3B_C_INDEX ;
      DataWrite : IN     std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : DataArray USE ENTITY ece411.DataArray;
   FOR ALL : DirtyArray USE ENTITY ece411.DirtyArray;
   FOR ALL : TagArray USE ENTITY ece411.TagArray;
   FOR ALL : ValidArray USE ENTITY ece411.ValidArray;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   aDAtaArray : DataArray
      PORT MAP (
         Reset_L   => Reset_L,
         DataOut   => DataOut,
         Index     => Index,
         DataIn    => DataIn,
         DataWrite => DataWrite
      );
   aDirtyArray : DirtyArray
      PORT MAP (
         DirtyOut   => DirtyOut,
         Reset_L    => Reset_L,
         Index      => Index,
         DirtyWrite => DirtyWrite,
         DirtyIn    => DirtyIn
      );
   aTagArray : TagArray
      PORT MAP (
         TagIn     => TagIn,
         TagOut    => TagOut,
         Reset_L   => Reset_L,
         Index     => Index,
         DataWrite => DataWrite
      );
   aValidArray : ValidArray
      PORT MAP (
         ValidOut  => ValidOut,
         Reset_L   => Reset_L,
         Index     => Index,
         DataWrite => DataWrite
      );

END struct;
