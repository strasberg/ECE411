-- VHDL Entity ece411.Cache_Controller.generatedInstance
--
-- Created:
--          by - strasbe1.ews (gelib-057-40.ews.illinois.edu)
--          at - 22:23:49 02/19/14
--
-- Generated by Mentor Graphics' HDL Designer(TM) 2012.1 (Build 6)
--
LIBRARY ieee; 
USE ieee.std_logic_1164.all; 
USE ieee.NUMERIC_STD.all; 
 
LIBRARY ece411; 
USE ece411.LC3b_types.all; 

ENTITY Cache_Controller IS
   PORT( 
      CacheWrite : OUT    std_logic;
      CLK        : IN     STD_LOGIC;
      MRESP_H    : IN     std_logic;
      PMREAD_L   : OUT    STD_LOGIC;
      PMRESP_H   : IN     STD_LOGIC;
      PMWRITE_L  : OUT    STD_LOGIC;
      Reset_L    : IN     std_logic
   );

END Cache_Controller ;

-- 
-- Auto generated dummy architecture for leaf level instance.
-- 
ARCHITECTURE generatedInstance OF Cache_Controller IS 
BEGIN


END generatedInstance;
