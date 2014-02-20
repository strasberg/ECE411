--
-- VHDL Architecture ece411.Memory.untitled
--
-- Created:
--          by - strasbe1.ews (gelib-057-21.ews.illinois.edu)
--          at - 22:07:08 01/27/14
--
-- using Mentor Graphics HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Memory IS
   PORT( 
      ADDRESS   : IN     LC3b_word;
      CLK       : IN     STD_LOGIC;
      DATAOUT   : IN     LC3b_word;
      MREAD_L   : IN     std_logic;
      MWRITEH_L : IN     std_logic;
      MWRITEL_L : IN     std_logic;
      Reset_L   : IN     std_logic;
      DATAIN    : OUT    LC3b_word;
      MRESP_H   : OUT    std_logic
   );

-- Declarations

END Memory ;

--
-- VHDL Architecture ece411.Memory.struct
--
-- Created:
--          by - strasbe1.ews (gelib-057-40.ews.illinois.edu)
--          at - 23:09:26 02/19/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 


ARCHITECTURE struct OF Memory IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL CacheWrite  : std_logic;
   SIGNAL MemAction   : std_logic;
   SIGNAL PMADDRESS   : LC3B_WORD;
   SIGNAL PMDATAIN    : LC3B_OWORD;
   SIGNAL PMDATAOUT   : LC3B_OWORD;
   SIGNAL PMREAD_L    : STD_LOGIC;
   SIGNAL PMRESP_H    : STD_LOGIC;
   SIGNAL PMWRITE_L   : STD_LOGIC;
   SIGNAL PauseHits_L : std_logic;

   -- Implicit buffer signal declarations
   SIGNAL MRESP_H_internal : std_logic;


   -- Component Declarations
   COMPONENT Cache_Controller
   PORT (
      CLK         : IN     STD_LOGIC ;
      MRESP_H     : IN     std_logic ;
      MemAction   : IN     std_logic ;
      PMRESP_H    : IN     STD_LOGIC ;
      Reset_L     : IN     std_logic ;
      CacheWrite  : OUT    std_logic ;
      PMREAD_L    : OUT    STD_LOGIC ;
      PMWRITE_L   : OUT    STD_LOGIC ;
      PauseHits_L : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Cache_Datapath
   PORT (
      ADDRESS     : IN     LC3b_word ;
      CLK         : IN     STD_LOGIC ;
      CacheWrite  : IN     std_logic ;
      DATAOUT     : IN     LC3b_word ;
      MREAD_L     : IN     std_logic ;
      MWRITEH_L   : IN     std_logic ;
      MWRITEL_L   : IN     std_logic ;
      PMDATAIN    : IN     LC3B_OWORD ;
      PauseHits_L : IN     std_logic ;
      Reset_L     : IN     std_logic ;
      DATAIN      : OUT    LC3b_word ;
      MRESP_H     : OUT    std_logic ;
      MemAction   : OUT    std_logic ;
      PMADDRESS   : OUT    LC3B_WORD ;
      PMDATAOUT   : OUT    LC3B_OWORD 
   );
   END COMPONENT;
   COMPONENT Physical_Memory
   PORT (
      CLK       : IN     STD_LOGIC ;
      PMADDRESS : IN     LC3B_WORD ;
      PMDATAOUT : IN     LC3B_OWORD ;
      PMREAD_L  : IN     STD_LOGIC ;
      PMWRITE_L : IN     STD_LOGIC ;
      Reset_L   : IN     std_logic ;
      PMDATAIN  : OUT    LC3B_OWORD ;
      PMRESP_H  : OUT    STD_LOGIC 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : Cache_Controller USE ENTITY ece411.Cache_Controller;
   FOR ALL : Cache_Datapath USE ENTITY ece411.Cache_Datapath;
   FOR ALL : Physical_Memory USE ENTITY ece411.Physical_Memory;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   Cache_Cont : Cache_Controller
      PORT MAP (
         CLK         => CLK,
         MRESP_H     => MRESP_H_internal,
         MemAction   => MemAction,
         PMRESP_H    => PMRESP_H,
         Reset_L     => Reset_L,
         CacheWrite  => CacheWrite,
         PMREAD_L    => PMREAD_L,
         PMWRITE_L   => PMWRITE_L,
         PauseHits_L => PauseHits_L
      );
   Cache_DP : Cache_Datapath
      PORT MAP (
         ADDRESS     => ADDRESS,
         CLK         => CLK,
         CacheWrite  => CacheWrite,
         DATAOUT     => DATAOUT,
         MREAD_L     => MREAD_L,
         MWRITEH_L   => MWRITEH_L,
         MWRITEL_L   => MWRITEL_L,
         PMDATAIN    => PMDATAIN,
         PauseHits_L => PauseHits_L,
         Reset_L     => Reset_L,
         DATAIN      => DATAIN,
         MRESP_H     => MRESP_H_internal,
         MemAction   => MemAction,
         PMADDRESS   => PMADDRESS,
         PMDATAOUT   => PMDATAOUT
      );
   PDRAM : Physical_Memory
      PORT MAP (
         CLK       => CLK,
         PMADDRESS => PMADDRESS,
         PMDATAOUT => PMDATAOUT,
         PMREAD_L  => PMREAD_L,
         PMWRITE_L => PMWRITE_L,
         Reset_L   => Reset_L,
         PMDATAIN  => PMDATAIN,
         PMRESP_H  => PMRESP_H
      );

   -- Implicit buffered output assignments
   MRESP_H <= MRESP_H_internal;

END struct;
