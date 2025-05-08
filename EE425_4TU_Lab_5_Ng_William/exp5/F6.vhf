--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : F6.vhf
-- /___/   /\     Timestamp : 04/04/2025 11:35:44
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/student01/Desktop/Sap/exp5/exp5/F6.vhf -w C:/Users/student01/Desktop/Sap/exp5/exp5/F6.sch
--Design Name: F6
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity F6 is
   port ( A  : in    std_logic; 
          B  : in    std_logic; 
          C  : in    std_logic; 
          D  : in    std_logic; 
          F6 : out   std_logic);
end F6;

architecture BEHAVIORAL of F6 is
   attribute BOX_TYPE   : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_6  : std_logic;
   signal XLXN_7  : std_logic;
   signal XLXN_8  : std_logic;
   signal XLXN_9  : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>XLXN_1,
                I1=>C,
                O=>XLXN_3);
   
   XLXI_2 : AND2
      port map (I0=>XLXN_3,
                I1=>XLXN_6,
                O=>XLXN_11);
   
   XLXI_3 : AND2
      port map (I0=>D,
                I1=>C,
                O=>XLXN_8);
   
   XLXI_4 : AND2
      port map (I0=>XLXN_8,
                I1=>XLXN_7,
                O=>XLXN_9);
   
   XLXI_5 : AND2
      port map (I0=>XLXN_14,
                I1=>D,
                O=>XLXN_15);
   
   XLXI_6 : AND2
      port map (I0=>XLXN_23,
                I1=>XLXN_22,
                O=>XLXN_24);
   
   XLXI_7 : AND2
      port map (I0=>XLXN_24,
                I1=>A,
                O=>XLXN_25);
   
   XLXI_8 : INV
      port map (I=>D,
                O=>XLXN_1);
   
   XLXI_9 : INV
      port map (I=>A,
                O=>XLXN_7);
   
   XLXI_10 : INV
      port map (I=>B,
                O=>XLXN_6);
   
   XLXI_11 : OR2
      port map (I0=>XLXN_11,
                I1=>XLXN_9,
                O=>XLXN_17);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_17,
                I1=>XLXN_16,
                O=>XLXN_26);
   
   XLXI_13 : OR2
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                O=>F6);
   
   XLXI_14 : AND2
      port map (I0=>XLXN_15,
                I1=>B,
                O=>XLXN_16);
   
   XLXI_15 : INV
      port map (I=>D,
                O=>XLXN_23);
   
   XLXI_16 : INV
      port map (I=>C,
                O=>XLXN_14);
   
   XLXI_17 : INV
      port map (I=>C,
                O=>XLXN_22);
   
end BEHAVIORAL;


