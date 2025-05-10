--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : digital_filter.vhf
-- /___/   /\     Timestamp : 07/15/2015 12:30:43
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/mconner/DSPexample1/digital_filter.vhf -w C:/Users/mconner/DSPexample1/digital_filter.sch
--Design Name: digital_filter
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL ADD16_HXILINX_digital_filter -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADD16_HXILINX_digital_filter is
port(
       CO  : out std_logic;
       OFL : out std_logic;
       S   : out std_logic_vector(15 downto 0);
    
       A   : in std_logic_vector(15 downto 0);
       B   : in std_logic_vector(15 downto 0);
       CI  : in std_logic
    );
end ADD16_HXILINX_digital_filter;

architecture ADD16_HXILINX_digital_filter_V of ADD16_HXILINX_digital_filter is
  signal adder_tmp: std_logic_vector(16 downto 0);
begin
  adder_tmp <= conv_std_logic_vector((conv_integer(A) + conv_integer(B) + conv_integer(CI)),17);
  S         <= adder_tmp(15 downto 0);
  CO        <= adder_tmp(16);
  OFL <=  ( A(15) and B(15) and (not adder_tmp(15)) ) or ( (not A(15)) and (not B(15)) and adder_tmp(15) );  
          
end ADD16_HXILINX_digital_filter_V;
 
----- CELL ADSU16_HXILINX_digital_filter -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ADSU16_HXILINX_digital_filter is
port(
    CO   : out std_logic;
    OFL  : out std_logic;
    S    : out std_logic_vector(15 downto 0);

    A    : in std_logic_vector(15 downto 0);
    ADD  : in std_logic;
    B    : in std_logic_vector(15 downto 0);
    CI   : in std_logic
  );
end ADSU16_HXILINX_digital_filter;

architecture ADSU16_HXILINX_digital_filter_V of ADSU16_HXILINX_digital_filter is

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
  
end ADSU16_HXILINX_digital_filter_V;
----- CELL SR16CLE_HXILINX_digital_filter -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR16CLE_HXILINX_digital_filter is
port (
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    D   : in STD_LOGIC_VECTOR(15 downto 0);
    L   : in STD_LOGIC;
    SLI : in STD_LOGIC
    );
end SR16CLE_HXILINX_digital_filter;

architecture Behavioral of SR16CLE_HXILINX_digital_filter is
signal q_tmp : std_logic_vector(15 downto 0);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= (others => '0');
  elsif (C'event and C = '1') then
    if (L= '1') then
      q_tmp <= D;
    elsif (CE='1') then 
      q_tmp <= ( q_tmp(14 downto 0) & SLI );
    end if;
  end if;
end process;

Q <= q_tmp;

end Behavioral;


library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity digital_filter is
   port ( inn  : in    std_logic_vector (15 downto 0); 
          load : in    std_logic; 
          outt : out   std_logic_vector (15 downto 0));
end digital_filter;

architecture BEHAVIORAL of digital_filter is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_4                 : std_logic_vector (15 downto 0);
   signal XLXN_5                 : std_logic_vector (15 downto 0);
   signal XLXN_6                 : std_logic_vector (15 downto 0);
   signal XLXN_7                 : std_logic_vector (15 downto 0);
   signal XLXN_8                 : std_logic_vector (15 downto 0);
   signal XLXN_9                 : std_logic_vector (15 downto 0);
   signal XLXN_10                : std_logic_vector (15 downto 0);
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
   signal XLXN_23                : std_logic_vector (15 downto 0);
   signal XLXN_28                : std_logic;
   signal XLXN_29                : std_logic_vector (15 downto 0);
   signal XLXN_33                : std_logic_vector (15 downto 0);
   signal XLXN_34                : std_logic_vector (15 downto 0);
   signal XLXN_35                : std_logic_vector (15 downto 0);
   signal XLXN_38                : std_logic_vector (15 downto 0);
   signal XLXN_40                : std_logic;
   signal XLXN_61                : std_logic;
   signal XLXN_69                : std_logic;
   signal outt_DUMMY             : std_logic_vector (15 downto 0);
   signal XLXI_2_SLI_openSignal  : std_logic;
   signal XLXI_3_C_openSignal    : std_logic;
   signal XLXI_3_CE_openSignal   : std_logic;
   signal XLXI_3_D_openSignal    : std_logic_vector (15 downto 0);
   signal XLXI_3_SLI_openSignal  : std_logic;
   signal XLXI_4_C_openSignal    : std_logic;
   signal XLXI_4_CE_openSignal   : std_logic;
   signal XLXI_4_SLI_openSignal  : std_logic;
   signal XLXI_5_C_openSignal    : std_logic;
   signal XLXI_5_CE_openSignal   : std_logic;
   signal XLXI_5_SLI_openSignal  : std_logic;
   signal XLXI_6_C_openSignal    : std_logic;
   signal XLXI_6_CE_openSignal   : std_logic;
   signal XLXI_6_SLI_openSignal  : std_logic;
   signal XLXI_7_C_openSignal    : std_logic;
   signal XLXI_7_CE_openSignal   : std_logic;
   signal XLXI_7_SLI_openSignal  : std_logic;
   signal XLXI_8_C_openSignal    : std_logic;
   signal XLXI_8_CE_openSignal   : std_logic;
   signal XLXI_8_SLI_openSignal  : std_logic;
   signal XLXI_9_C_openSignal    : std_logic;
   signal XLXI_9_CE_openSignal   : std_logic;
   signal XLXI_9_SLI_openSignal  : std_logic;
   signal XLXI_10_C_openSignal   : std_logic;
   signal XLXI_10_CE_openSignal  : std_logic;
   signal XLXI_10_SLI_openSignal : std_logic;
   signal XLXI_11_C_openSignal   : std_logic;
   signal XLXI_11_CE_openSignal  : std_logic;
   signal XLXI_11_SLI_openSignal : std_logic;
   signal XLXI_12_C_openSignal   : std_logic;
   signal XLXI_12_CE_openSignal  : std_logic;
   signal XLXI_12_SLI_openSignal : std_logic;
   signal XLXI_13_C_openSignal   : std_logic;
   signal XLXI_13_CE_openSignal  : std_logic;
   signal XLXI_13_SLI_openSignal : std_logic;
   signal XLXI_14_C_openSignal   : std_logic;
   signal XLXI_14_CE_openSignal  : std_logic;
   signal XLXI_14_SLI_openSignal : std_logic;
   signal XLXI_15_C_openSignal   : std_logic;
   signal XLXI_15_CE_openSignal  : std_logic;
   signal XLXI_15_SLI_openSignal : std_logic;
   signal XLXI_16_C_openSignal   : std_logic;
   signal XLXI_16_CE_openSignal  : std_logic;
   signal XLXI_16_SLI_openSignal : std_logic;
   signal XLXI_17_C_openSignal   : std_logic;
   signal XLXI_17_CE_openSignal  : std_logic;
   signal XLXI_17_SLI_openSignal : std_logic;
   signal XLXI_18_C_openSignal   : std_logic;
   signal XLXI_18_CE_openSignal  : std_logic;
   signal XLXI_18_SLI_openSignal : std_logic;
   signal XLXI_19_C_openSignal   : std_logic;
   signal XLXI_19_CE_openSignal  : std_logic;
   signal XLXI_19_SLI_openSignal : std_logic;
   signal XLXI_20_C_openSignal   : std_logic;
   signal XLXI_20_CE_openSignal  : std_logic;
   signal XLXI_20_SLI_openSignal : std_logic;
   signal XLXI_21_C_openSignal   : std_logic;
   signal XLXI_21_CE_openSignal  : std_logic;
   signal XLXI_21_SLI_openSignal : std_logic;
   signal XLXI_22_A_openSignal   : std_logic_vector (15 downto 0);
   signal XLXI_23_C_openSignal   : std_logic;
   signal XLXI_23_CE_openSignal  : std_logic;
   signal XLXI_23_SLI_openSignal : std_logic;
   component SR16CLE_HXILINX_digital_filter
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             D   : in    std_logic_vector (15 downto 0); 
             L   : in    std_logic; 
             SLI : in    std_logic; 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component ADSU16_HXILINX_digital_filter
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
   
   component ADD16_HXILINX_digital_filter
      port ( A   : in    std_logic_vector (15 downto 0); 
             B   : in    std_logic_vector (15 downto 0); 
             CI  : in    std_logic; 
             CO  : out   std_logic; 
             OFL : out   std_logic; 
             S   : out   std_logic_vector (15 downto 0));
   end component;
   
   attribute HU_SET of XLXI_2 : label is "XLXI_2_0";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_1";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_2";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_3";
   attribute HU_SET of XLXI_6 : label is "XLXI_6_4";
   attribute HU_SET of XLXI_7 : label is "XLXI_7_5";
   attribute HU_SET of XLXI_8 : label is "XLXI_8_6";
   attribute HU_SET of XLXI_9 : label is "XLXI_9_7";
   attribute HU_SET of XLXI_10 : label is "XLXI_10_8";
   attribute HU_SET of XLXI_11 : label is "XLXI_11_9";
   attribute HU_SET of XLXI_12 : label is "XLXI_12_10";
   attribute HU_SET of XLXI_13 : label is "XLXI_13_11";
   attribute HU_SET of XLXI_14 : label is "XLXI_14_12";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_13";
   attribute HU_SET of XLXI_16 : label is "XLXI_16_14";
   attribute HU_SET of XLXI_17 : label is "XLXI_17_15";
   attribute HU_SET of XLXI_18 : label is "XLXI_18_16";
   attribute HU_SET of XLXI_19 : label is "XLXI_19_17";
   attribute HU_SET of XLXI_20 : label is "XLXI_20_18";
   attribute HU_SET of XLXI_21 : label is "XLXI_21_19";
   attribute HU_SET of XLXI_22 : label is "XLXI_22_20";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_21";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_22";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_23";
   attribute HU_SET of XLXI_28 : label is "XLXI_28_24";
begin
   XLXN_29(15 downto 0) <= x"8000";
   outt(15 downto 0) <= outt_DUMMY(15 downto 0);
   XLXI_2 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXN_69,
                CE=>XLXN_69,
                CLR=>XLXN_61,
                D(15 downto 0)=>inn(15 downto 0),
                L=>load,
                SLI=>XLXI_2_SLI_openSignal,
                Q(15 downto 0)=>outt_DUMMY(15 downto 0));
   
   XLXI_3 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_3_C_openSignal,
                CE=>XLXI_3_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXI_3_D_openSignal(15 downto 0),
                L=>load,
                SLI=>XLXI_3_SLI_openSignal,
                Q(15 downto 0)=>XLXN_38(15 downto 0));
   
   XLXI_4 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_4_C_openSignal,
                CE=>XLXI_4_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_38(15 downto 0),
                L=>load,
                SLI=>XLXI_4_SLI_openSignal,
                Q(15 downto 0)=>XLXN_4(15 downto 0));
   
   XLXI_5 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_5_C_openSignal,
                CE=>XLXI_5_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_4(15 downto 0),
                L=>load,
                SLI=>XLXI_5_SLI_openSignal,
                Q(15 downto 0)=>XLXN_5(15 downto 0));
   
   XLXI_6 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_6_C_openSignal,
                CE=>XLXI_6_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_5(15 downto 0),
                L=>load,
                SLI=>XLXI_6_SLI_openSignal,
                Q(15 downto 0)=>XLXN_6(15 downto 0));
   
   XLXI_7 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_7_C_openSignal,
                CE=>XLXI_7_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_6(15 downto 0),
                L=>load,
                SLI=>XLXI_7_SLI_openSignal,
                Q(15 downto 0)=>XLXN_7(15 downto 0));
   
   XLXI_8 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_8_C_openSignal,
                CE=>XLXI_8_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_7(15 downto 0),
                L=>load,
                SLI=>XLXI_8_SLI_openSignal,
                Q(15 downto 0)=>XLXN_8(15 downto 0));
   
   XLXI_9 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_9_C_openSignal,
                CE=>XLXI_9_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_8(15 downto 0),
                L=>load,
                SLI=>XLXI_9_SLI_openSignal,
                Q(15 downto 0)=>XLXN_9(15 downto 0));
   
   XLXI_10 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_10_C_openSignal,
                CE=>XLXI_10_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_9(15 downto 0),
                L=>load,
                SLI=>XLXI_10_SLI_openSignal,
                Q(15 downto 0)=>XLXN_10(15 downto 0));
   
   XLXI_11 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_11_C_openSignal,
                CE=>XLXI_11_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_10(15 downto 0),
                L=>load,
                SLI=>XLXI_11_SLI_openSignal,
                Q(15 downto 0)=>XLXN_11(15 downto 0));
   
   XLXI_12 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_12_C_openSignal,
                CE=>XLXI_12_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_11(15 downto 0),
                L=>load,
                SLI=>XLXI_12_SLI_openSignal,
                Q(15 downto 0)=>XLXN_12(15 downto 0));
   
   XLXI_13 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_13_C_openSignal,
                CE=>XLXI_13_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_12(15 downto 0),
                L=>load,
                SLI=>XLXI_13_SLI_openSignal,
                Q(15 downto 0)=>XLXN_13(15 downto 0));
   
   XLXI_14 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_14_C_openSignal,
                CE=>XLXI_14_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_13(15 downto 0),
                L=>load,
                SLI=>XLXI_14_SLI_openSignal,
                Q(15 downto 0)=>XLXN_14(15 downto 0));
   
   XLXI_15 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_15_C_openSignal,
                CE=>XLXI_15_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_14(15 downto 0),
                L=>load,
                SLI=>XLXI_15_SLI_openSignal,
                Q(15 downto 0)=>XLXN_15(15 downto 0));
   
   XLXI_16 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_16_C_openSignal,
                CE=>XLXI_16_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_15(15 downto 0),
                L=>load,
                SLI=>XLXI_16_SLI_openSignal,
                Q(15 downto 0)=>XLXN_16(15 downto 0));
   
   XLXI_17 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_17_C_openSignal,
                CE=>XLXI_17_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_16(15 downto 0),
                L=>load,
                SLI=>XLXI_17_SLI_openSignal,
                Q(15 downto 0)=>XLXN_17(15 downto 0));
   
   XLXI_18 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_18_C_openSignal,
                CE=>XLXI_18_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_17(15 downto 0),
                L=>load,
                SLI=>XLXI_18_SLI_openSignal,
                Q(15 downto 0)=>XLXN_18(15 downto 0));
   
   XLXI_19 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_19_C_openSignal,
                CE=>XLXI_19_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_18(15 downto 0),
                L=>load,
                SLI=>XLXI_19_SLI_openSignal,
                Q(15 downto 0)=>XLXN_19(15 downto 0));
   
   XLXI_20 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_20_C_openSignal,
                CE=>XLXI_20_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_19(15 downto 0),
                L=>load,
                SLI=>XLXI_20_SLI_openSignal,
                Q(15 downto 0)=>XLXN_20(15 downto 0));
   
   XLXI_21 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_21_C_openSignal,
                CE=>XLXI_21_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_20(15 downto 0),
                L=>load,
                SLI=>XLXI_21_SLI_openSignal,
                Q(15 downto 0)=>XLXN_23(15 downto 0));
   
   XLXI_22 : ADSU16_HXILINX_digital_filter
      port map (A(15 downto 0)=>XLXI_22_A_openSignal(15 downto 0),
                ADD=>XLXN_40,
                B(15 downto 0)=>XLXN_29(15 downto 0),
                CI=>XLXN_61,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>XLXN_34(15 downto 0));
   
   XLXI_23 : SR16CLE_HXILINX_digital_filter
      port map (C=>XLXI_23_C_openSignal,
                CE=>XLXI_23_CE_openSignal,
                CLR=>XLXN_61,
                D(15 downto 0)=>XLXN_23(15 downto 0),
                L=>load,
                SLI=>XLXI_23_SLI_openSignal,
                Q(15 downto 0)=>outt_DUMMY(15 downto 0));
   
   XLXI_24 : ADSU16_HXILINX_digital_filter
      port map (A(15 downto 0)=>outt_DUMMY(15 downto 0),
                ADD=>XLXN_28,
                B(15 downto 0)=>XLXN_29(15 downto 0),
                CI=>XLXN_61,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>XLXN_33(15 downto 0));
   
   XLXI_26 : GND
      port map (G=>XLXN_28);
   
   XLXI_27 : ADD16_HXILINX_digital_filter
      port map (A(15 downto 0)=>XLXN_33(15 downto 0),
                B(15 downto 0)=>XLXN_34(15 downto 0),
                CI=>XLXN_61,
                CO=>open,
                OFL=>open,
                S(15 downto 0)=>XLXN_35(15 downto 0));
   
   XLXI_28 : ADD16_HXILINX_digital_filter
      port map (A(15 downto 0)=>XLXN_35(15 downto 0),
                B(15 downto 0)=>XLXN_29(15 downto 0),
                CI=>XLXN_61,
                CO=>open,
                OFL=>open,
                S=>open);
   
   XLXI_29 : GND
      port map (G=>XLXN_40);
   
   XLXI_30 : GND
      port map (G=>XLXN_61);
   
end BEHAVIORAL;


