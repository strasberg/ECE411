-- VHDL Entity ece411.Control.interface
--
-- Created:
--          by - strasbe1.ews (gelib-057-16.ews.illinois.edu)
--          at - 14:00:22 02/02/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;

ENTITY Control IS
   PORT( 
      CheckN    : IN     std_logic;
      CheckP    : IN     std_logic;
      CheckZ    : IN     std_logic;
      MRESP_H   : IN     std_logic;
      Opcode    : IN     LC3b_opcode;
      RESET_L   : IN     std_logic;
      START_H   : IN     std_logic;
      clk       : IN     std_logic;
      n         : IN     std_logic;
      p         : IN     std_logic;
      z         : IN     std_logic;
      ALUMuxSel : OUT    std_logic;
      ALUop     : OUT    LC3b_aluop;
      DestSel   : OUT    std_logic;
      JMPSel    : OUT    std_logic;
      JSRSel    : OUT    std_logic;
      LEASel    : OUT    std_logic;
      LoadIR    : OUT    std_logic;
      LoadMAR   : OUT    std_logic;
      LoadMDR   : OUT    std_logic;
      LoadNZP   : OUT    std_logic;
      LoadPC    : OUT    std_logic;
      MARMuxSel : OUT    std_logic;
      MDRMuxSel : OUT    std_logic;
      MREAD_L   : OUT    std_logic;
      MWRITEH_L : OUT    std_logic;
      MWRITEL_L : OUT    std_logic;
      PCMuxSel  : OUT    std_logic;
      RFMuxSel  : OUT    std_logic;
      RegWrite  : OUT    std_logic;
      StoreSR   : OUT    std_logic
   );

-- Declarations

END Control ;

--
-- VHDL Architecture ece411.Control.fsm
--
-- Created:
--          by - strasbe1.ews (gelib-057-16.ews.illinois.edu)
--          at - 14:00:22 02/02/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.NUMERIC_STD.all;

LIBRARY ece411;
USE ece411.LC3b_types.all;
 
ARCHITECTURE fsm OF Control IS

   TYPE STATE_TYPE IS (
      Reset,
      BR1,
      L_AND,
      BR2,
      Decode,
      L_NOT,
      ADD,
      IF1,
      IF2,
      IF3,
      CalcADDR,
      ST1,
      LD1,
      ST2,
      LD2,
      JMP,
      LEA,
      JSR1,
      JSR2
   );
 
   -- Declare current and next state signals
   SIGNAL current_state : STATE_TYPE;
   SIGNAL next_state : STATE_TYPE;

BEGIN

   -----------------------------------------------------------------
   clocked_proc : PROCESS ( 
      clk,
      RESET_L
   )
   -----------------------------------------------------------------
   BEGIN
      IF (RESET_L = '0') THEN
         current_state <= Reset;
      ELSIF (clk'EVENT AND clk = '1') THEN
         current_state <= next_state;
      END IF;
   END PROCESS clocked_proc;
 
   -----------------------------------------------------------------
   nextstate_proc : PROCESS ( 
      CheckN,
      CheckP,
      CheckZ,
      MRESP_H,
      Opcode,
      START_H,
      current_state,
      n,
      p,
      z
   )
   -----------------------------------------------------------------
   BEGIN
      CASE current_state IS
         WHEN Reset => 
            IF (START_H = '1') THEN 
               next_state <= IF1;
            ELSE
               next_state <= Reset;
            END IF;
         WHEN BR1 => 
            IF (( ( n AND CheckN ) OR 
                ( p AND CheckP ) OR 
                ( z AND CheckZ ) ) = '1') THEN 
               next_state <= BR2;
            ELSE
               next_state <= IF1;
            END IF;
         WHEN L_AND => 
            next_state <= IF1;
         WHEN BR2 => 
            next_state <= IF1;
         WHEN Decode => 
            IF (Opcode = op_add) THEN 
               next_state <= ADD;
            ELSIF (Opcode = op_and) THEN 
               next_state <= L_AND;
            ELSIF (Opcode = op_not) THEN 
               next_state <= L_NOT;
            ELSIF ((Opcode = op_ldr) OR 
                   (Opcode = op_str)) THEN 
               next_state <= CalcADDR;
            ELSIF (Opcode = op_br) THEN 
               next_state <= BR1;
            ELSIF (Opcode = op_jmp) THEN 
               next_state <= JMP;
            ELSIF (Opcode = op_lea) THEN 
               next_state <= LEA;
            ELSIF (Opcode = op_jsr) THEN 
               next_state <= JSR1;
            ELSE
               next_state <= IF1;
            END IF;
         WHEN L_NOT => 
            next_state <= IF1;
         WHEN ADD => 
            next_state <= IF1;
         WHEN IF1 => 
            next_state <= IF2;
         WHEN IF2 => 
            IF (MRESP_H = '1') THEN 
               next_state <= IF3;
            ELSE
               next_state <= IF2;
            END IF;
         WHEN IF3 => 
            next_state <= Decode;
         WHEN CalcADDR => 
            IF (Opcode = op_str) THEN 
               next_state <= ST1;
            ELSIF (Opcode = op_ldr) THEN 
               next_state <= LD1;
            ELSE
               next_state <= CalcADDR;
            END IF;
         WHEN ST1 => 
            next_state <= ST2;
         WHEN LD1 => 
            IF (MRESP_H = '1') THEN 
               next_state <= LD2;
            ELSE
               next_state <= LD1;
            END IF;
         WHEN ST2 => 
            IF (MRESP_H = '1') THEN 
               next_state <= IF1;
            ELSE
               next_state <= ST2;
            END IF;
         WHEN LD2 => 
            next_state <= IF1;
         WHEN JMP => 
            next_state <= IF1;
         WHEN LEA => 
            next_state <= IF1;
         WHEN JSR1 => 
            next_state <= JSR2;
         WHEN JSR2 => 
            next_state <= IF1;
         WHEN OTHERS =>
            next_state <= Reset;
      END CASE;
   END PROCESS nextstate_proc;
 
   -----------------------------------------------------------------
   output_proc : PROCESS ( 
      current_state
   )
   -----------------------------------------------------------------
   BEGIN
      -- Default Assignment
      ALUMuxSel <= '0';
      ALUop <= "000";
      DestSel <= '0';
      JMPSel <= '0';
      JSRSel <= '0';
      LEASel <= '0';
      LoadIR <= '0';
      LoadMAR <= '0';
      LoadMDR <= '0';
      LoadNZP <= '0';
      LoadPC <= '0';
      MARMuxSel <= '0';
      MDRMuxSel <= '0';
      MREAD_L <= '1';
      MWRITEH_L <= '1';
      MWRITEL_L <= '1';
      PCMuxSel <= '0';
      RFMuxSel <= '0';
      RegWrite <= '0';
      StoreSR <= '1';

      -- Combined Actions
      CASE current_state IS
         WHEN L_AND => 
            ALUop <= alu_and;
            RegWrite <= '1';
            LoadNZP <= '1';
            RFMuxSel <= '1';
         WHEN BR2 => 
            PCMuxSel <= '1';
            LoadPC <= '1';
         WHEN L_NOT => 
            ALUop <= alu_not;
            RegWrite <= '1';
            LoadNZP <= '1';
            RFMuxSel <= '1';
         WHEN ADD => 
            ALUop <= alu_add;
            RegWrite <= '1';
            LoadNZP <= '1';
            RFMuxSel <= '1';
         WHEN IF1 => 
            LoadMAR <= '1';
            LoadPC <= '1';
         WHEN IF2 => 
            LoadMDR <= '1';
            MREAD_L <= '0' after 6 ns;
         WHEN IF3 => 
            LoadIR <= '1';
         WHEN CalcADDR => 
            ALUMuxSel <= '1';
            ALUop  <= alu_add;
            MARMuxSel <= '1';
            LoadMAR <= '1';
         WHEN ST1 => 
            StoreSR <= '0';
            ALUop <= alu_pass;
            LoadMDR <= '1';
            MDRMuxSel <= '1';
         WHEN LD1 => 
            LoadMDR <= '1';
            MREAD_L <= '0' after 6ns;
         WHEN ST2 => 
            MWRITEL_L <= '0' after 6ns;
            MWRITEL_L <= '0' after 6ns;
         WHEN LD2 => 
            RegWrite <= '1';
            LoadNZP <= '1';
         WHEN JMP => 
            PCMuxSel <= '1';
            LoadPC <= '1';
            StoreSR <= '1';
            JMPSel <= '1';
         WHEN LEA => 
            LEASel <= '1';
            RegWrite <= '1';
            RFMuxSel <= '1';
         WHEN JSR1 => 
            RegWrite <= '1';
            DestSel <='1';
            JSRSel <= '1';
            LEASel <= '1';
            RFMuxSel <= '1';
         WHEN OTHERS =>
            NULL;
      END CASE;
   END PROCESS output_proc;
 
END fsm;
