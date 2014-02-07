-- VHDL Entity ece411.mp2_CPU.symbol
--
-- Created:
--          by - strasbe1.ews (gelib-057-39.ews.illinois.edu)
--          at - 16:55:43 02/07/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY mp2_CPU IS
   PORT( 
      RESET_L : IN     std_logic;
      START_H : IN     std_logic
   );

-- Declarations

END mp2_CPU ;

--
-- VHDL Architecture ece411.mp2_CPU.struct
--
-- Created:
--          by - strasbe1.ews (gelib-057-39.ews.illinois.edu)
--          at - 16:55:43 02/07/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF mp2_CPU IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL A          : std_logic;
   SIGNAL ADDRESS    : LC3b_word;
   SIGNAL ADJ6Sel    : std_logic;
   SIGNAL ALUMuxSel  : std_logic;
   SIGNAL ALUop      : LC3b_aluop;
   SIGNAL CheckN     : std_logic;
   SIGNAL CheckP     : std_logic;
   SIGNAL CheckZ     : std_logic;
   SIGNAL D          : std_logic;
   SIGNAL DATAIN     : LC3b_word;
   SIGNAL DATAOUT    : LC3b_word;
   SIGNAL DestSel    : std_logic;
   SIGNAL JMPSel     : std_logic;
   SIGNAL JSRSel     : std_logic;
   SIGNAL LDIMuxSel  : std_logic;
   SIGNAL LEASel     : std_logic;
   SIGNAL LoadIR     : std_logic;
   SIGNAL LoadMAR    : std_logic;
   SIGNAL LoadMDR    : std_logic;
   SIGNAL LoadNZP    : std_logic;
   SIGNAL LoadPC     : std_logic;
   SIGNAL LwrByteSel : std_logic;
   SIGNAL MARMuxSel  : std_logic;
   SIGNAL MDRMuxSel  : std_logic;
   SIGNAL MREAD_L    : std_logic;
   SIGNAL MRESP_H    : std_logic;
   SIGNAL MWRITEH_L  : std_logic;
   SIGNAL MWRITEL_L  : std_logic;
   SIGNAL Opcode     : LC3b_opcode;
   SIGNAL PCMuxSel   : std_logic;
   SIGNAL RFMuxSel   : std_logic;
   SIGNAL RegWrite   : std_logic;
   SIGNAL StoreSR    : std_logic;
   SIGNAL TrapSel    : std_logic;
   SIGNAL Zext8Sel   : std_logic;
   SIGNAL clk        : std_logic := '0';
   SIGNAL n          : std_logic;
   SIGNAL p          : std_logic;
   SIGNAL z          : std_logic;


   -- Component Declarations
   COMPONENT CLKgen
   PORT (
      clk : INOUT  std_logic  := '0'
   );
   END COMPONENT;
   COMPONENT Control
   PORT (
      A          : IN     std_logic ;
      CheckN     : IN     std_logic ;
      CheckP     : IN     std_logic ;
      CheckZ     : IN     std_logic ;
      D          : IN     std_logic ;
      MRESP_H    : IN     std_logic ;
      Opcode     : IN     LC3b_opcode ;
      RESET_L    : IN     std_logic ;
      START_H    : IN     std_logic ;
      clk        : IN     std_logic ;
      n          : IN     std_logic ;
      p          : IN     std_logic ;
      z          : IN     std_logic ;
      ADJ6Sel    : OUT    std_logic ;
      ALUMuxSel  : OUT    std_logic ;
      ALUop      : OUT    LC3b_aluop ;
      DestSel    : OUT    std_logic ;
      JMPSel     : OUT    std_logic ;
      JSRSel     : OUT    std_logic ;
      LDIMuxSel  : OUT    std_logic ;
      LEASel     : OUT    std_logic ;
      LoadIR     : OUT    std_logic ;
      LoadMAR    : OUT    std_logic ;
      LoadMDR    : OUT    std_logic ;
      LoadNZP    : OUT    std_logic ;
      LoadPC     : OUT    std_logic ;
      LwrByteSel : OUT    std_logic ;
      MARMuxSel  : OUT    std_logic ;
      MDRMuxSel  : OUT    std_logic ;
      MREAD_L    : OUT    std_logic ;
      MWRITEH_L  : OUT    std_logic ;
      MWRITEL_L  : OUT    std_logic ;
      PCMuxSel   : OUT    std_logic ;
      RFMuxSel   : OUT    std_logic ;
      RegWrite   : OUT    std_logic ;
      StoreSR    : OUT    std_logic ;
      TrapSel    : OUT    std_logic ;
      Zext8Sel   : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Datapath
   PORT (
      ADJ6Sel    : IN     std_logic ;
      ALUMuxSel  : IN     std_logic ;
      ALUop      : IN     LC3b_aluop ;
      DATAIN     : IN     LC3b_word ;
      DestSel    : IN     std_logic ;
      JMPSel     : IN     std_logic ;
      JSRSel     : IN     std_logic ;
      LDIMuxSel  : IN     std_logic ;
      LEASel     : IN     std_logic ;
      LoadIR     : IN     std_logic ;
      LoadMAR    : IN     std_logic ;
      LoadMDR    : IN     std_logic ;
      LoadNZP    : IN     std_logic ;
      LoadPC     : IN     std_logic ;
      LwrByteSel : IN     std_logic ;
      MARMuxSel  : IN     std_logic ;
      MDRMuxSel  : IN     std_logic ;
      PCMuxSel   : IN     std_logic ;
      RESET_L    : IN     std_logic ;
      RFMuxSel   : IN     std_logic ;
      RegWrite   : IN     std_logic ;
      StoreSR    : IN     std_logic ;
      TrapSel    : IN     std_logic ;
      Zext8Sel   : IN     std_logic ;
      clk        : IN     std_logic ;
      A          : OUT    std_logic ;
      ADDRESS    : OUT    LC3b_word ;
      CheckN     : OUT    std_logic ;
      CheckP     : OUT    std_logic ;
      CheckZ     : OUT    std_logic ;
      D          : OUT    std_logic ;
      DATAOUT    : OUT    LC3b_word ;
      Opcode     : OUT    LC3b_opcode ;
      n          : OUT    std_logic ;
      p          : OUT    std_logic ;
      z          : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Memory
   PORT (
      ADDRESS   : IN     LC3b_word ;
      DATAOUT   : IN     LC3b_word ;
      MREAD_L   : IN     std_logic ;
      MWRITEH_L : IN     std_logic ;
      MWRITEL_L : IN     std_logic ;
      RESET_L   : IN     std_logic ;
      clk       : IN     std_logic ;
      DATAIN    : OUT    LC3b_word ;
      MRESP_H   : OUT    std_logic 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : CLKgen USE ENTITY ece411.CLKgen;
   FOR ALL : Control USE ENTITY ece411.Control;
   FOR ALL : Datapath USE ENTITY ece411.Datapath;
   FOR ALL : Memory USE ENTITY ece411.Memory;
   -- pragma synthesis_on


BEGIN

   -- Instance port mappings.
   I0 : CLKgen
      PORT MAP (
         clk => clk
      );
   ControlUnit : Control
      PORT MAP (
         A          => A,
         CheckN     => CheckN,
         CheckP     => CheckP,
         CheckZ     => CheckZ,
         D          => D,
         MRESP_H    => MRESP_H,
         Opcode     => Opcode,
         RESET_L    => RESET_L,
         START_H    => START_H,
         clk        => clk,
         n          => n,
         p          => p,
         z          => z,
         ADJ6Sel    => ADJ6Sel,
         ALUMuxSel  => ALUMuxSel,
         ALUop      => ALUop,
         DestSel    => DestSel,
         JMPSel     => JMPSel,
         JSRSel     => JSRSel,
         LDIMuxSel  => LDIMuxSel,
         LEASel     => LEASel,
         LoadIR     => LoadIR,
         LoadMAR    => LoadMAR,
         LoadMDR    => LoadMDR,
         LoadNZP    => LoadNZP,
         LoadPC     => LoadPC,
         LwrByteSel => LwrByteSel,
         MARMuxSel  => MARMuxSel,
         MDRMuxSel  => MDRMuxSel,
         MREAD_L    => MREAD_L,
         MWRITEH_L  => MWRITEH_L,
         MWRITEL_L  => MWRITEL_L,
         PCMuxSel   => PCMuxSel,
         RFMuxSel   => RFMuxSel,
         RegWrite   => RegWrite,
         StoreSR    => StoreSR,
         TrapSel    => TrapSel,
         Zext8Sel   => Zext8Sel
      );
   theDatapath : Datapath
      PORT MAP (
         ADJ6Sel    => ADJ6Sel,
         ALUMuxSel  => ALUMuxSel,
         ALUop      => ALUop,
         DATAIN     => DATAIN,
         DestSel    => DestSel,
         JMPSel     => JMPSel,
         JSRSel     => JSRSel,
         LDIMuxSel  => LDIMuxSel,
         LEASel     => LEASel,
         LoadIR     => LoadIR,
         LoadMAR    => LoadMAR,
         LoadMDR    => LoadMDR,
         LoadNZP    => LoadNZP,
         LoadPC     => LoadPC,
         LwrByteSel => LwrByteSel,
         MARMuxSel  => MARMuxSel,
         MDRMuxSel  => MDRMuxSel,
         PCMuxSel   => PCMuxSel,
         RESET_L    => RESET_L,
         RFMuxSel   => RFMuxSel,
         RegWrite   => RegWrite,
         StoreSR    => StoreSR,
         TrapSel    => TrapSel,
         Zext8Sel   => Zext8Sel,
         clk        => clk,
         A          => A,
         ADDRESS    => ADDRESS,
         CheckN     => CheckN,
         CheckP     => CheckP,
         CheckZ     => CheckZ,
         D          => D,
         DATAOUT    => DATAOUT,
         Opcode     => Opcode,
         n          => n,
         p          => p,
         z          => z
      );
   DRAM : Memory
      PORT MAP (
         ADDRESS   => ADDRESS,
         DATAOUT   => DATAOUT,
         MREAD_L   => MREAD_L,
         MWRITEH_L => MWRITEH_L,
         MWRITEL_L => MWRITEL_L,
         RESET_L   => RESET_L,
         clk       => clk,
         DATAIN    => DATAIN,
         MRESP_H   => MRESP_H
      );

END struct;
