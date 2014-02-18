-- VHDL Entity ece411.Datapath.interface
--
-- Created:
--          by - strasbe1.ews (gelib-057-18.ews.illinois.edu)
--          at - 13:00:24 02/08/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Datapath IS
   PORT( 
      ADJ6Sel    : IN     std_logic;
      ALUMuxSel  : IN     std_logic;
      ALUop      : IN     LC3b_aluop;
      DATAIN     : IN     LC3b_word;
      DestSel    : IN     std_logic;
      JMPSel     : IN     std_logic;
      JSRSel     : IN     std_logic;
      LDIMuxSel  : IN     std_logic;
      LEASel     : IN     std_logic;
      LoadIR     : IN     std_logic;
      LoadMAR    : IN     std_logic;
      LoadMDR    : IN     std_logic;
      LoadNZP    : IN     std_logic;
      LoadPC     : IN     std_logic;
      LwrByteSel : IN     std_logic;
      MARMuxSel  : IN     std_logic;
      MDRMuxSel  : IN     std_logic;
      PCMuxSel   : IN     std_logic;
      RESET_L    : IN     std_logic;
      RFMuxSel   : IN     std_logic;
      RegWrite   : IN     std_logic;
      StoreSR    : IN     std_logic;
      TrapSel    : IN     std_logic;
      clk        : IN     std_logic;
      A          : OUT    std_logic;
      ADDRESS    : OUT    LC3b_word;
      Addr0      : OUT    std_logic;
      CheckN     : OUT    std_logic;
      CheckP     : OUT    std_logic;
      CheckZ     : OUT    std_logic;
      D          : OUT    std_logic;
      DATAOUT    : OUT    LC3b_word;
      Opcode     : OUT    LC3b_opcode;
      n          : OUT    std_logic;
      p          : OUT    std_logic;
      z          : OUT    std_logic
   );

-- Declarations

END Datapath ;

--
-- VHDL Architecture ece411.Datapath.struct
--
-- Created:
--          by - strasbe1.ews (gelib-057-18.ews.illinois.edu)
--          at - 13:00:24 02/08/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;


ARCHITECTURE struct OF Datapath IS

   -- Architecture declarations

   -- Internal signal declarations
   SIGNAL ADJ6Muxout    : LC3b_word;
   SIGNAL ADJ6out       : LC3b_word;
   SIGNAL ADJ9out       : LC3b_word;
   SIGNAL ALUMuxout     : LC3b_word;
   SIGNAL ALUout        : LC3b_word;
   SIGNAL Adj6NoShftout : LC3b_word;
   SIGNAL BRaddout      : LC3b_word;
   SIGNAL GenCCout      : LC3b_cc;
   SIGNAL Imm5out       : LC3b_word;
   SIGNAL Imm5sel       : std_logic;
   SIGNAL ImmMuxout     : LC3b_word;
   SIGNAL JMPSELout     : LC3b_word;
   SIGNAL JSRMuxout     : LC3b_word;
   SIGNAL JSRaddout     : LC3b_word;
   SIGNAL LDIMuxOut     : LC3b_word;
   SIGNAL LEAMUXout     : LC3b_word;
   SIGNAL LwrByteout    : LC3b_word;
   SIGNAL MARMuxout     : LC3b_word;
   SIGNAL MDRMuxout     : LC3b_word;
   SIGNAL MDRout        : LC3b_word;
   SIGNAL Offset11out   : LC3B_word;
   SIGNAL PCMuxout      : LC3b_word;
   SIGNAL PCOUT         : LC3B_word;
   SIGNAL PCPlus2out    : LC3b_word;
   SIGNAL RFAout        : LC3b_word;
   SIGNAL RFBout        : LC3b_word;
   SIGNAL RFMuxout      : LC3b_word;
   SIGNAL SrcA          : LC3b_reg;
   SIGNAL SrcB          : LC3b_reg;
   SIGNAL StoreMuxout   : LC3b_reg;
   SIGNAL TrapMuxout    : LC3b_word;
   SIGNAL Zext8out      : LC3b_word;
   SIGNAL dest          : LC3b_reg;
   SIGNAL destMuxout    : LC3b_reg;
   SIGNAL immediate5    : LC3b_imm5;
   SIGNAL index6        : LC3b_index6;
   SIGNAL off11muxout   : LC3b_word;
   SIGNAL offset11      : LC3B_OFFSET11;
   SIGNAL offset11sel   : std_logic;
   SIGNAL offset9       : LC3b_offset9;
   SIGNAL trapvect      : LC3B_TRAPVECT8;

   -- Implicit buffer signal declarations
   SIGNAL ADDRESS_internal : LC3b_word;
   SIGNAL Addr0_internal   : std_logic;


   -- Component Declarations
   COMPONENT ADJ11
   PORT (
      clk         : IN     std_logic ;
      Offset11out : OUT    LC3B_word ;
      offset11    : IN     LC3B_OFFSET11 
   );
   END COMPONENT;
   COMPONENT ADJ6
   PORT (
      clk     : IN     std_logic ;
      index6  : IN     LC3b_index6 ;
      ADJ6out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ6NoShft
   PORT (
      clk           : IN     std_logic ;
      index6        : IN     LC3b_index6 ;
      Adj6NoShftout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ADJ9
   PORT (
      clk     : IN     std_logic ;
      offset9 : IN     LC3b_offset9 ;
      ADJ9out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT ALU
   PORT (
      ALUMuxout : IN     LC3b_word ;
      ALUop     : IN     LC3b_aluop ;
      RFAout    : IN     LC3b_word ;
      clk       : IN     std_logic ;
      ALUout    : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT AddrLowestBit
   PORT (
      ADDRESS : IN     LC3b_word ;
      clk     : IN     std_logic ;
      Addr0   : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT BRadd
   PORT (
      ADJ9out  : IN     LC3b_word ;
      PCOUT    : IN     LC3B_word ;
      clk      : IN     std_logic ;
      BRaddout : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT GenCC
   PORT (
      RFMuxout : IN     LC3b_word ;
      clk      : IN     std_logic ;
      GenCCout : OUT    LC3b_cc 
   );
   END COMPONENT;
   COMPONENT IR
   PORT (
      LoadIR      : IN     std_logic ;
      MDRout      : IN     LC3b_word ;
      clk         : IN     std_logic ;
      Opcode      : OUT    LC3b_opcode ;
      SrcA        : OUT    LC3b_reg ;
      SrcB        : OUT    LC3b_reg ;
      index6      : OUT    LC3b_index6 ;
      offset9     : OUT    LC3b_offset9 ;
      Imm5sel     : OUT    std_logic ;
      immediate5  : OUT    LC3b_imm5 ;
      dest        : OUT    LC3b_reg ;
      offset11    : OUT    LC3B_OFFSET11 ;
      offset11sel : OUT    std_logic ;
      A           : OUT    std_logic ;
      D           : OUT    std_logic ;
      trapvect    : OUT    LC3B_TRAPVECT8 
   );
   END COMPONENT;
   COMPONENT Imm5
   PORT (
      clk        : IN     std_logic ;
      immediate5 : IN     LC3b_imm5 ;
      Imm5out    : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT JSRadd
   PORT (
      Offset11out : IN     LC3B_word ;
      clk         : IN     std_logic ;
      JSRaddout   : OUT    LC3b_word ;
      PCOUT       : IN     LC3B_word 
   );
   END COMPONENT;
   COMPONENT LwrByte
   PORT (
      MDRout     : IN     LC3b_word ;
      clk        : IN     std_logic ;
      LwrByteSel : IN     std_logic ;
      LwrByteout : OUT    LC3b_word ;
      Addr0      : IN     std_logic 
   );
   END COMPONENT;
   COMPONENT NZP
   PORT (
      GenCCout : IN     LC3b_cc ;
      LoadNZP  : IN     std_logic ;
      clk      : IN     std_logic ;
      n        : OUT    std_logic ;
      p        : OUT    std_logic ;
      z        : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT NZPsplit
   PORT (
      clk    : IN     std_logic ;
      dest   : IN     LC3b_reg ;
      CheckN : OUT    std_logic ;
      CheckP : OUT    std_logic ;
      CheckZ : OUT    std_logic 
   );
   END COMPONENT;
   COMPONENT Plus2
   PORT (
      PCOUT      : IN     LC3B_word ;
      clk        : IN     std_logic ;
      PCPlus2out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT Reg16
   PORT (
      Input  : IN     LC3b_word ;
      RESET  : IN     std_logic ;
      clk    : IN     std_logic ;
      load   : IN     std_logic ;
      Output : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT RegFile
   PORT (
      RESET_L     : IN     std_logic ;
      RFMuxout    : IN     LC3b_word ;
      RegWrite    : IN     std_logic ;
      SrcB        : IN     LC3b_reg ;
      StoreMuxout : IN     LC3b_reg ;
      clk         : IN     std_logic ;
      destMuxout  : IN     LC3b_reg ;
      RFAout      : OUT    LC3b_word ;
      RFBout      : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT StoreMux
   PORT (
      SrcA        : IN     LC3b_reg ;
      StoreSR     : IN     std_logic ;
      clk         : IN     std_logic ;
      dest        : IN     LC3b_reg ;
      StoreMuxout : OUT    LC3b_reg 
   );
   END COMPONENT;
   COMPONENT WordMux2
   PORT (
      A   : IN     LC3b_word ;
      B   : IN     LC3b_word ;
      Sel : IN     std_logic ;
      F   : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT Zext8
   PORT (
      clk      : IN     std_logic ;
      trapvect : IN     LC3B_TRAPVECT8 ;
      Zext8out : OUT    LC3b_word 
   );
   END COMPONENT;
   COMPONENT destMux
   PORT (
      clk        : IN     std_logic ;
      dest       : IN     LC3b_reg ;
      DestSel    : IN     std_logic ;
      destMuxout : OUT    LC3b_reg 
   );
   END COMPONENT;

   -- Optional embedded configurations
   -- pragma synthesis_off
   FOR ALL : ADJ11 USE ENTITY ece411.ADJ11;
   FOR ALL : ADJ6 USE ENTITY ece411.ADJ6;
   FOR ALL : ADJ6NoShft USE ENTITY ece411.ADJ6NoShft;
   FOR ALL : ADJ9 USE ENTITY ece411.ADJ9;
   FOR ALL : ALU USE ENTITY ece411.ALU;
   FOR ALL : AddrLowestBit USE ENTITY ece411.AddrLowestBit;
   FOR ALL : BRadd USE ENTITY ece411.BRadd;
   FOR ALL : GenCC USE ENTITY ece411.GenCC;
   FOR ALL : IR USE ENTITY ece411.IR;
   FOR ALL : Imm5 USE ENTITY ece411.Imm5;
   FOR ALL : JSRadd USE ENTITY ece411.JSRadd;
   FOR ALL : LwrByte USE ENTITY ece411.LwrByte;
   FOR ALL : NZP USE ENTITY ece411.NZP;
   FOR ALL : NZPsplit USE ENTITY ece411.NZPsplit;
   FOR ALL : Plus2 USE ENTITY ece411.Plus2;
   FOR ALL : Reg16 USE ENTITY ece411.Reg16;
   FOR ALL : RegFile USE ENTITY ece411.RegFile;
   FOR ALL : StoreMux USE ENTITY ece411.StoreMux;
   FOR ALL : WordMux2 USE ENTITY ece411.WordMux2;
   FOR ALL : Zext8 USE ENTITY ece411.Zext8;
   FOR ALL : destMux USE ENTITY ece411.destMux;
   -- pragma synthesis_on


BEGIN
   -- Architecture concurrent statements
   -- HDL Embedded Text Block 1 eb1
   DATAOUT <= MDRout;                                 


   -- Instance port mappings.
   aADj11 : ADJ11
      PORT MAP (
         clk         => clk,
         Offset11out => Offset11out,
         offset11    => offset11
      );
   aADJ6 : ADJ6
      PORT MAP (
         clk     => clk,
         index6  => index6,
         ADJ6out => ADJ6out
      );
   aAdj6NoShft : ADJ6NoShft
      PORT MAP (
         clk           => clk,
         index6        => index6,
         Adj6NoShftout => Adj6NoShftout
      );
   aADJ9 : ADJ9
      PORT MAP (
         clk     => clk,
         offset9 => offset9,
         ADJ9out => ADJ9out
      );
   aALU : ALU
      PORT MAP (
         ALUMuxout => ALUMuxout,
         ALUop     => ALUop,
         RFAout    => RFAout,
         clk       => clk,
         ALUout    => ALUout
      );
   aAddrLowestBit : AddrLowestBit
      PORT MAP (
         ADDRESS => ADDRESS_internal,
         clk     => clk,
         Addr0   => Addr0_internal
      );
   aBRadd : BRadd
      PORT MAP (
         ADJ9out  => ADJ9out,
         PCOUT    => PCOUT,
         clk      => clk,
         BRaddout => BRaddout
      );
   aGenCC : GenCC
      PORT MAP (
         RFMuxout => RFMuxout,
         clk      => clk,
         GenCCout => GenCCout
      );
   aIR : IR
      PORT MAP (
         LoadIR      => LoadIR,
         MDRout      => MDRout,
         clk         => clk,
         Opcode      => Opcode,
         SrcA        => SrcA,
         SrcB        => SrcB,
         index6      => index6,
         offset9     => offset9,
         Imm5sel     => Imm5sel,
         immediate5  => immediate5,
         dest        => dest,
         offset11    => offset11,
         offset11sel => offset11sel,
         A           => A,
         D           => D,
         trapvect    => trapvect
      );
   aImm5 : Imm5
      PORT MAP (
         clk        => clk,
         immediate5 => immediate5,
         Imm5out    => Imm5out
      );
   aJSRadd : JSRadd
      PORT MAP (
         Offset11out => Offset11out,
         clk         => clk,
         JSRaddout   => JSRaddout,
         PCOUT       => PCOUT
      );
   aLwrByte : LwrByte
      PORT MAP (
         MDRout     => MDRout,
         clk        => clk,
         LwrByteSel => LwrByteSel,
         LwrByteout => LwrByteout,
         Addr0      => Addr0_internal
      );
   aNZP : NZP
      PORT MAP (
         GenCCout => GenCCout,
         LoadNZP  => LoadNZP,
         clk      => clk,
         n        => n,
         p        => p,
         z        => z
      );
   aNZPsplit : NZPsplit
      PORT MAP (
         clk    => clk,
         dest   => dest,
         CheckN => CheckN,
         CheckP => CheckP,
         CheckZ => CheckZ
      );
   aPlus2 : Plus2
      PORT MAP (
         PCOUT      => PCOUT,
         clk        => clk,
         PCPlus2out => PCPlus2out
      );
   MAR : Reg16
      PORT MAP (
         Input  => MARMuxout,
         RESET  => RESET_L,
         clk    => clk,
         load   => LoadMAR,
         Output => ADDRESS_internal
      );
   MDR : Reg16
      PORT MAP (
         Input  => MDRMuxout,
         RESET  => RESET_L,
         clk    => clk,
         load   => LoadMDR,
         Output => MDRout
      );
   PC : Reg16
      PORT MAP (
         Input  => PCMuxout,
         RESET  => RESET_L,
         clk    => clk,
         load   => LoadPC,
         Output => PCOUT
      );
   aRegFile : RegFile
      PORT MAP (
         RESET_L     => RESET_L,
         RFMuxout    => RFMuxout,
         RegWrite    => RegWrite,
         SrcB        => SrcB,
         StoreMuxout => StoreMuxout,
         clk         => clk,
         destMuxout  => destMuxout,
         RFAout      => RFAout,
         RFBout      => RFBout
      );
   aStoreMux : StoreMux
      PORT MAP (
         SrcA        => SrcA,
         StoreSR     => StoreSR,
         clk         => clk,
         dest        => dest,
         StoreMuxout => StoreMuxout
      );
   ADJ6Mux : WordMux2
      PORT MAP (
         A   => ADJ6out,
         B   => Adj6NoShftout,
         Sel => ADJ6Sel,
         F   => ADJ6Muxout
      );
   ALUMux : WordMux2
      PORT MAP (
         A   => ImmMuxout,
         B   => ADJ6Muxout,
         Sel => ALUMuxSel,
         F   => ALUMuxout
      );
   ImmMux : WordMux2
      PORT MAP (
         A   => RFBout,
         B   => Imm5out,
         Sel => Imm5sel,
         F   => ImmMuxout
      );
   JSRMux : WordMux2
      PORT MAP (
         A   => BRaddout,
         B   => PCOUT,
         Sel => JSRSel,
         F   => JSRMuxout
      );
   LDIMux : WordMux2
      PORT MAP (
         A   => ALUout,
         B   => RFMuxout,
         Sel => LDIMuxSel,
         F   => LDIMuxOut
      );
   LEAMux : WordMux2
      PORT MAP (
         A   => ALUout,
         B   => JSRMuxout,
         Sel => LEASel,
         F   => LEAMUXout
      );
   MARMux : WordMux2
      PORT MAP (
         A   => PCOUT,
         B   => LDIMuxOut,
         Sel => MARMuxSel,
         F   => MARMuxout
      );
   MDRMUX : WordMux2
      PORT MAP (
         A   => DATAIN,
         B   => ALUout,
         Sel => MDRMuxSel,
         F   => MDRMuxout
      );
   Off11Mux : WordMux2
      PORT MAP (
         A   => RFAout,
         B   => JSRaddout,
         Sel => offset11sel,
         F   => off11muxout
      );
   PCMux : WordMux2
      PORT MAP (
         A   => PCPlus2out,
         B   => TrapMuxout,
         Sel => PCMuxSel,
         F   => PCMuxout
      );
   RFMux : WordMux2
      PORT MAP (
         A   => LwrByteout,
         B   => LEAMUXout,
         Sel => RFMuxSel,
         F   => RFMuxout
      );
   TrapMux : WordMux2
      PORT MAP (
         A   => JMPSELout,
         B   => Zext8out,
         Sel => TrapSel,
         F   => TrapMuxout
      );
   aJMPSel : WordMux2
      PORT MAP (
         A   => BRaddout,
         B   => off11muxout,
         Sel => JMPSel,
         F   => JMPSELout
      );
   aZext8 : Zext8
      PORT MAP (
         clk      => clk,
         trapvect => trapvect,
         Zext8out => Zext8out
      );
   adestMux : destMux
      PORT MAP (
         clk        => clk,
         dest       => dest,
         DestSel    => DestSel,
         destMuxout => destMuxout
      );

   -- Implicit buffered output assignments
   ADDRESS <= ADDRESS_internal;
   Addr0   <= Addr0_internal;

END struct;
