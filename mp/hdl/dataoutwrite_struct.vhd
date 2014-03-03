-- VHDL Entity ece411.DataOutWrite.interface
--
-- Created:
--          by - strasbe1.ews (dcl-l520-32.ews.illinois.edu)
--          at - 19:20:58 03/02/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY DataOutWrite IS
   PORT( 
      DATAOUT      : IN     LC3b_word;
      MWRITEH_L    : IN     std_logic;
      MWRITEL_L    : IN     std_logic;
      PMDATAOUT    : IN     LC3B_OWORD;
      offset       : IN     LC3b_c_offset;
      DataWriteOut : OUT    LC3B_Oword
   );

-- Declarations

END DataOutWrite ;

--
-- VHDL Architecture ece411.DataOutWrite.struct
--
-- Created:
--          by - strasbe1.ews (dcl-l520-32.ews.illinois.edu)
--          at - 19:20:58 03/02/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 


ARCHITECTURE struct OF DataOutWrite IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL byte0     : LC3B_byte;
   SIGNAL byte0out  : LC3b_byte;
   SIGNAL byte1     : LC3B_byte;
   SIGNAL byte10    : LC3B_byte;
   SIGNAL byte10out : LC3b_byte;
   SIGNAL byte11    : LC3B_byte;
   SIGNAL byte11out : LC3b_byte;
   SIGNAL byte12    : LC3B_byte;
   SIGNAL byte12out : LC3b_byte;
   SIGNAL byte13    : LC3B_byte;
   SIGNAL byte13out : LC3b_byte;
   SIGNAL byte14    : LC3B_byte;
   SIGNAL byte14out : LC3b_byte;
   SIGNAL byte15    : LC3B_byte;
   SIGNAL byte15out : LC3b_byte;
   SIGNAL byte1out  : LC3b_byte;
   SIGNAL byte2     : LC3B_byte;
   SIGNAL byte2out  : LC3b_byte;
   SIGNAL byte3     : LC3B_byte;
   SIGNAL byte3out  : LC3b_byte;
   SIGNAL byte4     : LC3B_byte;
   SIGNAL byte4out  : LC3b_byte;
   SIGNAL byte5     : LC3B_byte;
   SIGNAL byte5out  : LC3b_byte;
   SIGNAL byte6     : LC3B_byte;
   SIGNAL byte6out  : LC3b_byte;
   SIGNAL byte7     : LC3B_byte;
   SIGNAL byte7out  : LC3b_byte;
   SIGNAL byte8     : LC3B_byte;
   SIGNAL byte8out  : LC3b_byte;
   SIGNAL byte9     : LC3B_byte;
   SIGNAL byte9out  : LC3b_byte;
   SIGNAL dataByte0 : LC3B_byte;
   SIGNAL dataByte1 : LC3B_byte;
   SIGNAL sel0      : std_logic;
   SIGNAL sel1      : std_logic;
   SIGNAL sel10     : std_logic;
   SIGNAL sel11     : std_logic;
   SIGNAL sel12     : std_logic;
   SIGNAL sel13     : std_logic;
   SIGNAL sel14     : std_logic;
   SIGNAL sel15     : std_logic;
   SIGNAL sel2      : std_logic;
   SIGNAL sel3      : std_logic;
   SIGNAL sel4      : std_logic;
   SIGNAL sel5      : std_logic;
   SIGNAL sel6      : std_logic;
   SIGNAL sel7      : std_logic;
   SIGNAL sel8      : std_logic;
   SIGNAL sel9      : std_logic;


   -- Component Declarations
   COMPONENT ByteMux2
   PORT (
      B   : IN     LC3b_byte;
      a   : IN     LC3b_byte;
      sel : IN     STD_LOGIC;
      F   : OUT    LC3b_byte
   );
   END COMPONENT;
   COMPONENT DataWriteCombineByte
   PORT (
      byte0out     : IN     LC3b_byte ;
      byte10out    : IN     LC3b_byte ;
      byte11out    : IN     LC3b_byte ;
      byte12out    : IN     LC3b_byte ;
      byte13out    : IN     LC3b_byte ;
      byte14out    : IN     LC3b_byte ;
      byte15out    : IN     LC3b_byte ;
      byte1out     : IN     LC3b_byte ;
      byte2out     : IN     LC3b_byte ;
      byte3out     : IN     LC3b_byte ;
      byte4out     : IN     LC3b_byte ;
      byte5out     : IN     LC3b_byte ;
      byte6out     : IN     LC3b_byte ;
      byte7out     : IN     LC3b_byte ;
      byte8out     : IN     LC3b_byte ;
      byte9out     : IN     LC3b_byte ;
      DataWriteOut : OUT    LC3B_Oword 
   );
   END COMPONENT;
   COMPONENT OffsetSel
   PORT (
      MWRITEH_L : IN     std_logic ;
      MWRITEL_L : IN     std_logic ;
      offset    : IN     LC3b_c_offset ;
      sel0      : OUT    std_logic ;
      sel1      : OUT    std_logic ;
      sel2      : OUT    std_logic ;
      sel3      : OUT    std_logic ;
      sel4      : OUT    std_logic ;
      sel5      : OUT    std_logic ;
      sel6      : OUT    std_logic ;
      sel7      : OUT    std_logic ;
      sel8      : OUT    std_logic ;
      sel9      : OUT    std_logic ;
      sel10     : OUT    std_logic ;
      sel11     : OUT    std_logic ;
      sel12     : OUT    std_logic ;
      sel13     : OUT    std_logic ;
      sel14     : OUT    std_logic ;
      sel15     : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT PMDATAOUTByteBreakup
   PORT (
      byte0     : OUT    LC3B_byte ;
      byte1     : OUT    LC3B_byte ;
      byte2     : OUT    LC3B_byte ;
      byte3     : OUT    LC3B_byte ;
      byte4     : OUT    LC3B_byte ;
      byte5     : OUT    LC3B_byte ;
      byte6     : OUT    LC3B_byte ;
      byte7     : OUT    LC3B_byte ;
      byte8     : OUT    LC3B_byte ;
      byte9     : OUT    LC3B_byte ;
      byte10    : OUT    LC3B_byte ;
      byte11    : OUT    LC3B_byte ;
      byte12    : OUT    LC3B_byte ;
      byte13    : OUT    LC3B_byte ;
      byte14    : OUT    LC3B_byte ;
      byte15    : OUT    LC3B_byte ;
      DATAOUT   : IN     LC3b_word ;
      dataByte0 : OUT    LC3B_byte ;
      dataByte1 : OUT    LC3B_byte ;
      PMDATAOUT : IN     LC3B_OWORD 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ByteMux2 USE ENTITY ece411.ByteMux2;
   FOR ALL : DataWriteCombineByte USE ENTITY ece411.DataWriteCombineByte;
   FOR ALL : OffsetSel USE ENTITY ece411.OffsetSel;
   FOR ALL : PMDATAOUTByteBreakup USE ENTITY ece411.PMDATAOUTByteBreakup;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   U_0 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte0,
         sel => sel0,
         F   => byte0out
      );
   U_1 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte1,
         sel => sel1,
         F   => byte1out
      );
   U_2 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte2,
         sel => sel2,
         F   => byte2out
      );
   U_3 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte3,
         sel => sel3,
         F   => byte3out
      );
   U_4 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte4,
         sel => sel4,
         F   => byte4out
      );
   U_5 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte5,
         sel => sel5,
         F   => byte5out
      );
   U_6 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte6,
         sel => sel6,
         F   => byte6out
      );
   U_7 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte7,
         sel => sel7,
         F   => byte7out
      );
   U_8 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte8,
         sel => sel8,
         F   => byte8out
      );
   U_9 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte12,
         sel => sel12,
         F   => byte12out
      );
   U_10 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte9,
         sel => sel9,
         F   => byte9out
      );
   U_11 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte13,
         sel => sel13,
         F   => byte13out
      );
   U_12 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte10,
         sel => sel10,
         F   => byte10out
      );
   U_13 : ByteMux2
      PORT MAP (
         B   => dataByte0,
         a   => byte14,
         sel => sel14,
         F   => byte14out
      );
   U_14 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte11,
         sel => sel1,
         F   => byte11out
      );
   U_15 : ByteMux2
      PORT MAP (
         B   => dataByte1,
         a   => byte15,
         sel => sel15,
         F   => byte15out
      );
   aDataWriteCombineByte : DataWriteCombineByte
      PORT MAP (
         byte0out     => byte0out,
         byte10out    => byte10out,
         byte11out    => byte11out,
         byte12out    => byte12out,
         byte13out    => byte13out,
         byte14out    => byte14out,
         byte15out    => byte15out,
         byte1out     => byte1out,
         byte2out     => byte2out,
         byte3out     => byte3out,
         byte4out     => byte4out,
         byte5out     => byte5out,
         byte6out     => byte6out,
         byte7out     => byte7out,
         byte8out     => byte8out,
         byte9out     => byte9out,
         DataWriteOut => DataWriteOut
      );
   aoffsetSel : OffsetSel
      PORT MAP (
         MWRITEH_L => MWRITEH_L,
         MWRITEL_L => MWRITEL_L,
         offset    => offset,
         sel0      => sel0,
         sel1      => sel1,
         sel2      => sel2,
         sel3      => sel3,
         sel4      => sel4,
         sel5      => sel5,
         sel6      => sel6,
         sel7      => sel7,
         sel8      => sel8,
         sel9      => sel9,
         sel10     => sel10,
         sel11     => sel11,
         sel12     => sel12,
         sel13     => sel13,
         sel14     => sel14,
         sel15     => sel15
      );
   aaByteBreakup : PMDATAOUTByteBreakup
      PORT MAP (
         byte0     => byte0,
         byte1     => byte1,
         byte2     => byte2,
         byte3     => byte3,
         byte4     => byte4,
         byte5     => byte5,
         byte6     => byte6,
         byte7     => byte7,
         byte8     => byte8,
         byte9     => byte9,
         byte10    => byte10,
         byte11    => byte11,
         byte12    => byte12,
         byte13    => byte13,
         byte14    => byte14,
         byte15    => byte15,
         DATAOUT   => DATAOUT,
         dataByte0 => dataByte0,
         dataByte1 => dataByte1,
         PMDATAOUT => PMDATAOUT
      );

END struct;
