--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : digitalfilter.vhf
-- /___/   /\     Timestamp : 07/16/2015 12:35:39
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/mconner/DSPexample1/digitalfilter.vhf -w C:/Users/mconner/DSPexample1/digitalfilter.sch
--Design Name: digitalfilter
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FD16CE_HXILINX_digitalfilter -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FD16CE_HXILINX_digitalfilter is
port (
    Q   : out STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(15 downto 0)
    );
end FD16CE_HXILINX_digitalfilter;

architecture Behavioral of FD16CE_HXILINX_digitalfilter is

begin

process(C, CLR)
begin
  if (CLR='1') then
    Q <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      Q <= D;
    end if;
  end if;
end process;


end Behavioral;

----- CELL ADD16_HXILINX_digitalfilter -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD16_HXILINX_digitalfilter is
port(
       CO  : out std_logic;
       OFL : out std_logic;
       S   : out std_logic_vector(15 downto 0);
    
       A   : in std_logic_vector(15 downto 0);
       B   : in std_logic_vector(15 downto 0);
       CI  : in std_logic
    );
end ADD16_HXILINX_digitalfilter;

architecture ADD16_HXILINX_digitalfilter_V of ADD16_HXILINX_digitalfilter is
  signal adder_tmp: std_logic_vector(16 downto 0);
begin
  adder_tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),17);
  S         <= adder_tmp(15 downto 0);
  CO        <= adder_tmp(16);
  OFL <=  ( A(15) and B(15) and (not adder_tmp(15)) ) or ( (not A(15)) and (not B(15)) and adder_tmp(15) );  
          
end ADD16_HXILINX_digitalfilter_V;
 
----- CELL ADSU16_HXILINX_digitalfilter -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_digitalfilter is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_digitalfilter;

architecture ADSU16_HXILINX_digitalfilter_V of ADSU16_HXILINX_digitalfilter is

begin
  adsu_p : process (A, ADD, B, CI)
    variable adsu_tmp : std_logic_vector(16 downto 0);
  begin
    if(ADD = '1') then
     adsu_tmp := conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),17);
    else
     adsu_tmp := conv_std_logic_vector((conv_integer(A) - conv_integer(not CI) - conv_integer(B)),17);
  end if;
      
  S   <= adsu_tmp(15 downto 0);
   
  if (ADD='1') then
    CO <= adsu_tmp(16);
    OFL <=  ( A(15) and B(15) and (not adsu_tmp(15)) ) or ( (not A(15)) and (not B(15)) and adsu_tmp(15) );  
  else
    CO <= not adsu_tmp(16);
    OFL <=  ( A(15) and (not B(15)) and (not adsu_tmp(15)) ) or ( (not A(15)) and B(15) and adsu_tmp(15) );  
  end if;
 
  end process;
  
end ADSU16_HXILINX_digitalfilter_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity digitalfilter is
   port ( inn   : in    std_logic_vector (15 downto 0); 
          shift : in    std_logic; 
          outt  : out   std_logic_vector (15 downto 0));
end digitalfilter;

architecture BEHAVIORAL of digitalfilter is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_1                 : std_logic_vector (15 downto 0);
   signal XLXN_2                 : std_logic_vector (15 downto 0);
   signal XLXN_3                 : std_logic_vector (15 downto 0);
   signal XLXN_4                 : std_logic_vector (15 downto 0);
   signal XLXN_6                 : std_logic_vector (15 downto 0);
   signal XLXN_7                 : std_logic_vector (15 downto 0);
   signal XLXN_8                 : std_logic_vector (15 downto 0);
   signal XLXN_9                 : std_logic_vector (15 downto 0);
   signal XLXN_11                : std_logic_vector (15 downto 0);
   signal XLXN_12                : std_logic_vector (15 downto 0);
   signal XLXN_13                : std_logic_vector (15 downto 0);
   signal XLXN_14                : std_logic_vector (15 downto 0);
   signal XLXN_15                : std_logic_vector (15 downto 0);
   signal XLXN_16                : std_logic_vector (15 downto 0);
   signal XLXN_17                : std_logic_vector (15 downto 0);
   signal XLXN_18                : std_logic_vector (15 downto 0);
   signal XLXN_19                : std_logic_vector (15 downto 0);
   signal XLXN_20                : std_logic_vector (15 downto 0);
   signal XLXN_21                : std_logic_vector (15 downto 0);
   signal XLXN_22                : std_logic_vector (15 downto 0);
   signal XLXN_38                : std_logic;
   signal XLXN_39                : std_logic;
   signal XLXN_40                : std_logic_vector (15 downto 0);
   signal XLXN_44                : std_logic_vector (15 downto 0);
   signal XLXN_46                : std_logic;
   signal XLXN_59                : std_logic;
   signal XLXN_61                : std_logic_vector (15 downto 0);
   signal XLXN_62                : std_logic_vector (15 downto 0);
   signal XLXI_4_CLR_openSignal  : std_logic;
   signal XLXI_5_CLR_openSignal  : std_logic;
   signal XLXI_6_CLR_openSignal  : std_logic;
   signal XLXI_7_CLR_openSignal  : std_logic;
   signal XLXI_8_CLR_openSignal  : std_logic;
   signal XLXI_9_CLR_openSignal  : std_logic;
   signal XLXI_10_CLR_openSignal : std_logic;
   signal XLXI_11_CLR_openSignal : std_logic;
   signal XLXI_12_CLR_openSignal : std_logic;
   signal XLXI_13_CLR_openSignal : std_logic;
   signal XLXI_14_CLR_openSignal : std_logic;
   signal XLXI_15_CLR_openSignal : std_logic;
   signal XLXI_16_CLR_openSignal : std_logic;
   signal XLXI_17_CLR_openSignal : std_logic;
   signal XLXI_18_CLR_openSignal : std_logic;
   signal XLXI_19_CLR_openSignal : std_logic;
   signal XLXI_20_CLR_openSignal : std_logic;
   signal XLXI_21_CLR_openSignal : std_logic;
   signal XLXI_22_CLR_openSignal : std_logic;
   signal XLXI_23_CI_openSignal  : std_logic;
   signal XLXI_24_CI_openSignal  : std_logic;
   signal XLXI_30_CI_openSignal  : std_logic;
   component FD16CE_HXILINX_digitalfilter
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component ADSU16_HXILINX_digitalfilter
      port ( A   : in    std_logic_vector (15 downto 0); 
             ADD : in    std_logic; 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component ADD16_HXILINX_digitalfilter
      port ( A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_3 : label is "XLXI_3_0";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_1";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_2";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_3";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_4";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_5";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_6";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_7";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_8";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_9";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_10";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_11";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_12";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_13";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_14";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_15";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_16";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_17";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_18";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_19";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_20";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_21";
   attribute HU_SET of XLXI_30 : label is "XLXI_30_22";
begin
   XLXN_40(15 downto 0) <= x"8000";
   XLXN_44(15 downto 0) <= x"8000";
   XLXI_3 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXN_38,
                D(15 downto 0)=>XLXN_1(15 downto 0),
                Q(15 downto 0)=>XLXN_2(15 downto 0));
   
   XLXI_4 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_4_CLR_openSignal,
                D(15 downto 0)=>XLXN_2(15 downto 0),
                Q(15 downto 0)=>XLXN_3(15 downto 0));
   
   XLXI_5 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_5_CLR_openSignal,
                D(15 downto 0)=>XLXN_3(15 downto 0),
                Q(15 downto 0)=>XLXN_4(15 downto 0));
   
   XLXI_6 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_6_CLR_openSignal,
                D(15 downto 0)=>XLXN_4(15 downto 0),
                Q(15 downto 0)=>XLXN_11(15 downto 0));
   
   XLXI_7 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_7_CLR_openSignal,
                D(15 downto 0)=>XLXN_11(15 downto 0),
                Q(15 downto 0)=>XLXN_12(15 downto 0));
   
   XLXI_8 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_8_CLR_openSignal,
                D(15 downto 0)=>XLXN_12(15 downto 0),
                Q(15 downto 0)=>XLXN_19(15 downto 0));
   
   XLXI_9 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_9_CLR_openSignal,
                D(15 downto 0)=>XLXN_19(15 downto 0),
                Q(15 downto 0)=>XLXN_21(15 downto 0));
   
   XLXI_10 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_10_CLR_openSignal,
                D(15 downto 0)=>XLXN_21(15 downto 0),
                Q(15 downto 0)=>XLXN_6(15 downto 0));
   
   XLXI_11 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_11_CLR_openSignal,
                D(15 downto 0)=>XLXN_6(15 downto 0),
                Q(15 downto 0)=>XLXN_7(15 downto 0));
   
   XLXI_12 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_12_CLR_openSignal,
                D(15 downto 0)=>XLXN_7(15 downto 0),
                Q(15 downto 0)=>XLXN_8(15 downto 0));
   
   XLXI_13 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_13_CLR_openSignal,
                D(15 downto 0)=>XLXN_8(15 downto 0),
                Q(15 downto 0)=>XLXN_9(15 downto 0));
   
   XLXI_14 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_14_CLR_openSignal,
                D(15 downto 0)=>XLXN_9(15 downto 0),
                Q(15 downto 0)=>XLXN_13(15 downto 0));
   
   XLXI_15 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_15_CLR_openSignal,
                D(15 downto 0)=>XLXN_13(15 downto 0),
                Q(15 downto 0)=>XLXN_20(15 downto 0));
   
   XLXI_16 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_16_CLR_openSignal,
                D(15 downto 0)=>XLXN_20(15 downto 0),
                Q(15 downto 0)=>XLXN_22(15 downto 0));
   
   XLXI_17 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_17_CLR_openSignal,
                D(15 downto 0)=>XLXN_22(15 downto 0),
                Q(15 downto 0)=>XLXN_14(15 downto 0));
   
   XLXI_18 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_18_CLR_openSignal,
                D(15 downto 0)=>XLXN_14(15 downto 0),
                Q(15 downto 0)=>XLXN_15(15 downto 0));
   
   XLXI_19 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_19_CLR_openSignal,
                D(15 downto 0)=>XLXN_15(15 downto 0),
                Q(15 downto 0)=>XLXN_16(15 downto 0));
   
   XLXI_20 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_20_CLR_openSignal,
                D(15 downto 0)=>XLXN_16(15 downto 0),
                Q(15 downto 0)=>XLXN_17(15 downto 0));
   
   XLXI_21 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_21_CLR_openSignal,
                D(15 downto 0)=>XLXN_17(15 downto 0),
                Q(15 downto 0)=>XLXN_18(15 downto 0));
   
   XLXI_22 : FD16CE_HXILINX_digitalfilter
      port map (C=>shift,
                CE=>XLXN_59,
                CLR=>XLXI_22_CLR_openSignal,
                D(15 downto 0)=>XLXN_18(15 downto 0),
                Q(15 downto 0)=>XLXN_61(15 downto 0));
   
   XLXI_23 : ADSU16_HXILINX_digitalfilter
      port map (A(15 downto 0)=>inn(15 downto 0),
                ADD=>XLXN_39,
                B(15 downto 0)=>XLXN_40(15 downto 0),
                CI=>XLXI_23_CI_openSignal,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>XLXN_1(15 downto 0));
   
   XLXI_24 : ADSU16_HXILINX_digitalfilter
      port map (A(15 downto 0)=>XLXN_62(15 downto 0),
                ADD=>XLXN_46,
                B(15 downto 0)=>XLXN_44(15 downto 0),
                CI=>XLXI_24_CI_openSignal,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>outt(15 downto 0));
   
   XLXI_25 : GND
      port map (G=>XLXN_39);
   
   XLXI_28 : VCC
      port map (P=>XLXN_46);
   
   XLXI_29 : VCC
      port map (P=>XLXN_59);
   
   XLXI_30 : ADD16_HXILINX_digitalfilter
      port map (A(15 downto 0)=>XLXN_61(15 downto 0),
                B(15 downto 0)=>XLXN_2(15 downto 0),
                CI=>XLXI_30_CI_openSignal,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>XLXN_62(15 downto 0));
   
end BEHAVIORAL;


