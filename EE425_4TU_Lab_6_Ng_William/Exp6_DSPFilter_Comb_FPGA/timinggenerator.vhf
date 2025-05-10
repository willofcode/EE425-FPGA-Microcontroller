--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : timinggenerator.vhf
-- /___/   /\     Timestamp : 07/16/2015 12:35:39
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family artix7 -flat -suppress -vhdl C:/Users/mconner/DSPexample1/timinggenerator.vhf -w C:/Users/mconner/example1/timinggenerator.sch
--Design Name: timinggenerator
--Device: artix7
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL SR16CE_HXILINX_timinggenerator -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR16CE_HXILINX_timinggenerator is
port (
    Q   : out STD_LOGIC_VECTOR(15 downto 0);
    C   : in STD_LOGIC;
    CE  : in STD_LOGIC;
    CLR : in STD_LOGIC;
    SLI : in STD_LOGIC
    );
end SR16CE_HXILINX_timinggenerator;

architecture Behavioral of SR16CE_HXILINX_timinggenerator is
signal q_tmp : std_logic_vector(15 downto 0);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= (others => '0');
  elsif (C'event and C = '1') then
    if (CE='1') then 
      q_tmp <= ( q_tmp(14 downto 0) & SLI );
    end if;
  end if;
end process;

Q <= q_tmp;


end Behavioral;

----- CELL IFD_HXILINX_timinggenerator -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IFD_HXILINX_timinggenerator is
generic(
    INIT : bit := '0'
    );

port (
    Q  : out STD_LOGIC;
    C  : in STD_LOGIC;
    D  : in STD_LOGIC
    );
attribute IOB         : string ;
attribute IOB of Q : signal is "True";	

end IFD_HXILINX_timinggenerator;

architecture Behavioral of IFD_HXILINX_timinggenerator is
signal q_tmp : std_logic := TO_X01(INIT);

begin
     Q <= q_tmp;

process(C)

begin

  if (C'event and C = '1') then
      q_tmp <= D;
  end if;
end process;


end Behavioral;

----- CELL SR16CLED_HXILINX_timinggenerator -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SR16CLED_HXILINX_timinggenerator is
port (
    Q    : out STD_LOGIC_VECTOR(15 downto 0);
    C    : in STD_LOGIC;
    CE   : in STD_LOGIC;
    CLR  : in STD_LOGIC;
    D    : in STD_LOGIC_VECTOR(15 downto 0);
    L    : in STD_LOGIC;
    LEFT : in STD_LOGIC;
    SLI  : in STD_LOGIC;
    SRI  : in STD_LOGIC
    );
end SR16CLED_HXILINX_timinggenerator;

architecture Behavioral of SR16CLED_HXILINX_timinggenerator is
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
      if (LEFT= '1') then
        q_tmp <= ( q_tmp(14 downto 0) & SLI );
      else
        q_tmp <= ( SRI & q_tmp(15 downto 1) );
      end if;
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

entity timinggenerator is
   port ( clk          : in    std_logic; 
          serialinput  : in    std_logic; 
          msb          : out   std_logic; 
          outclockp    : out   std_logic; 
          sclock       : out   std_logic; 
          serialoutput : out   std_logic; 
          sync1        : out   std_logic);
end timinggenerator;

architecture BEHAVIORAL of timinggenerator is
   attribute BANDWIDTH          : string ;
   attribute CLKFBOUT_MULT_F    : string ;
   attribute CLKFBOUT_PHASE     : string ;
   attribute CLKIN1_PERIOD      : string ;
   attribute CLKOUT0_DIVIDE_F   : string ;
   attribute CLKOUT0_DUTY_CYCLE : string ;
   attribute CLKOUT0_PHASE      : string ;
   attribute CLKOUT1_DIVIDE     : string ;
   attribute CLKOUT1_DUTY_CYCLE : string ;
   attribute CLKOUT1_PHASE      : string ;
   attribute CLKOUT2_DIVIDE     : string ;
   attribute CLKOUT2_DUTY_CYCLE : string ;
   attribute CLKOUT2_PHASE      : string ;
   attribute CLKOUT3_DIVIDE     : string ;
   attribute CLKOUT3_DUTY_CYCLE : string ;
   attribute CLKOUT3_PHASE      : string ;
   attribute CLKOUT4_CASCADE    : string ;
   attribute CLKOUT4_DIVIDE     : string ;
   attribute CLKOUT4_DUTY_CYCLE : string ;
   attribute CLKOUT4_PHASE      : string ;
   attribute CLKOUT5_DIVIDE     : string ;
   attribute CLKOUT5_DUTY_CYCLE : string ;
   attribute CLKOUT5_PHASE      : string ;
   attribute CLKOUT6_DIVIDE     : string ;
   attribute CLKOUT6_DUTY_CYCLE : string ;
   attribute CLKOUT6_PHASE      : string ;
   attribute DIVCLK_DIVIDE      : string ;
   attribute REF_JITTER1        : string ;
   attribute STARTUP_WAIT       : string ;
   attribute BOX_TYPE           : string ;
   attribute HU_SET             : string ;
   attribute INIT               : string ;
   signal outclock                  : std_logic;
   signal sync                      : std_logic;
   signal XLXN_15                   : std_logic;
   signal XLXN_18                   : std_logic;
   signal XLXN_19                   : std_logic;
   signal XLXN_22                   : std_logic;
   signal XLXN_23                   : std_logic;
   signal XLXN_24                   : std_logic;
   signal XLXN_25                   : std_logic;
   signal XLXN_33                   : std_logic;
   signal XLXN_36                   : std_logic;
   signal XLXN_44                   : std_logic;
   signal XLXN_48                   : std_logic;
   signal XLXN_51                   : std_logic;
   signal XLXN_52                   : std_logic;
   signal XLXN_54                   : std_logic;
   signal XLXN_62                   : std_logic;
   signal XLXN_69                   : std_logic_vector (15 downto 0);
   signal XLXN_77                   : std_logic_vector (15 downto 0);
   signal XLXN_78                   : std_logic;
   signal XLXN_79                   : std_logic_vector (15 downto 0);
   signal msb_DUMMY                 : std_logic;
   signal XLXI_20_PWRDWN_openSignal : std_logic;
   signal XLXI_35_CLR_openSignal    : std_logic;
   signal XLXI_35_SLI_openSignal    : std_logic;
   signal XLXI_35_SRI_openSignal    : std_logic;
   component MMCME2_BASE
      -- synopsys translate_off
      generic( BANDWIDTH : string :=  "OPTIMIZED";
               CLKFBOUT_MULT_F : real :=  5.000;
               CLKFBOUT_PHASE : real :=  0.000;
               CLKOUT0_DIVIDE_F : real :=  1.000;
               CLKOUT0_PHASE : real :=  0.000;
               CLKOUT1_DIVIDE : integer :=  1;
               CLKOUT1_PHASE : real :=  0.000;
               CLKOUT2_DIVIDE : integer :=  1;
               CLKOUT2_PHASE : real :=  0.000;
               CLKOUT3_DIVIDE : integer :=  1;
               CLKOUT3_PHASE : real :=  0.000;
               CLKOUT4_CASCADE : string :=  "FALSE";
               CLKOUT4_DIVIDE : integer :=  1;
               CLKOUT4_PHASE : real :=  0.000;
               CLKOUT5_DIVIDE : integer :=  1;
               CLKOUT5_PHASE : real :=  0.000;
               CLKOUT6_DIVIDE : integer :=  1;
               CLKOUT6_PHASE : real :=  0.000;
               DIVCLK_DIVIDE : integer :=  1;
               STARTUP_WAIT : string :=  "FALSE");
      -- synopsys translate_on
      port ( CLKFBIN   : in    std_logic; 
             CLKIN1    : in    std_logic; 
             PWRDWN    : in    std_logic; 
             RST       : in    std_logic; 
             CLKFBOUT  : out   std_logic; 
             CLKFBOUTB : out   std_logic; 
             CLKOUT0   : out   std_logic; 
             CLKOUT0B  : out   std_logic; 
             CLKOUT1   : out   std_logic; 
             CLKOUT1B  : out   std_logic; 
             CLKOUT2   : out   std_logic; 
             CLKOUT2B  : out   std_logic; 
             CLKOUT3   : out   std_logic; 
             CLKOUT3B  : out   std_logic; 
             CLKOUT4   : out   std_logic; 
             CLKOUT5   : out   std_logic; 
             CLKOUT6   : out   std_logic; 
             LOCKED    : out   std_logic);
   end component;
   attribute BANDWIDTH of MMCME2_BASE : component is "OPTIMIZED";
   attribute CLKFBOUT_MULT_F of MMCME2_BASE : component is "5.000";
   attribute CLKFBOUT_PHASE of MMCME2_BASE : component is "0.000";
   attribute CLKIN1_PERIOD of MMCME2_BASE : component is "0.000";
   attribute CLKOUT0_DIVIDE_F of MMCME2_BASE : component is "1.000";
   attribute CLKOUT0_DUTY_CYCLE of MMCME2_BASE : component is "0.500";
   attribute CLKOUT0_PHASE of MMCME2_BASE : component is "0.000";
   attribute CLKOUT1_DIVIDE of MMCME2_BASE : component is "1";
   attribute CLKOUT1_DUTY_CYCLE of MMCME2_BASE : component is "0.500";
   attribute CLKOUT1_PHASE of MMCME2_BASE : component is "0.000";
   attribute CLKOUT2_DIVIDE of MMCME2_BASE : component is "1";
   attribute CLKOUT2_DUTY_CYCLE of MMCME2_BASE : component is "0.500";
   attribute CLKOUT2_PHASE of MMCME2_BASE : component is "0.000";
   attribute CLKOUT3_DIVIDE of MMCME2_BASE : component is "1";
   attribute CLKOUT3_DUTY_CYCLE of MMCME2_BASE : component is "0.500";
   attribute CLKOUT3_PHASE of MMCME2_BASE : component is "0.000";
   attribute CLKOUT4_CASCADE of MMCME2_BASE : component is "FALSE";
   attribute CLKOUT4_DIVIDE of MMCME2_BASE : component is "1";
   attribute CLKOUT4_DUTY_CYCLE of MMCME2_BASE : component is "0.500";
   attribute CLKOUT4_PHASE of MMCME2_BASE : component is "0.000";
   attribute CLKOUT5_DIVIDE of MMCME2_BASE : component is "1";
   attribute CLKOUT5_DUTY_CYCLE of MMCME2_BASE : component is "0.500";
   attribute CLKOUT5_PHASE of MMCME2_BASE : component is "0.000";
   attribute CLKOUT6_DIVIDE of MMCME2_BASE : component is "1";
   attribute CLKOUT6_DUTY_CYCLE of MMCME2_BASE : component is "0.500";
   attribute CLKOUT6_PHASE of MMCME2_BASE : component is "0.000";
   attribute DIVCLK_DIVIDE of MMCME2_BASE : component is "1";
   attribute REF_JITTER1 of MMCME2_BASE : component is "0.010";
   attribute STARTUP_WAIT of MMCME2_BASE : component is "FALSE";
   attribute BOX_TYPE of MMCME2_BASE : component is "BLACK_BOX";
   
   component GND
      port ( G : out   std_logic);
   end component;
   attribute BOX_TYPE of GND : component is "BLACK_BOX";
   
   component BUFG
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUFG : component is "BLACK_BOX";
   
   component IFD_HXILINX_timinggenerator
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   
   component LUT5
      -- synopsys translate_off
      generic( INIT : bit_vector :=  x"00000000");
      -- synopsys translate_on
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic; 
             I4 : in    std_logic);
   end component;
   attribute INIT of LUT5 : component is "00000000";
   attribute BOX_TYPE of LUT5 : component is "BLACK_BOX";
   
   component SR16CE_HXILINX_timinggenerator
      port ( C   : in    std_logic; 
             CE  : in    std_logic; 
             CLR : in    std_logic; 
             SLI : in    std_logic; 
             Q   : out   std_logic_vector (15 downto 0));
   end component;
   
   component SR16CLED_HXILINX_timinggenerator
      port ( C    : in    std_logic; 
             CE   : in    std_logic; 
             CLR  : in    std_logic; 
             D    : in    std_logic_vector (15 downto 0); 
             L    : in    std_logic; 
             LEFT : in    std_logic; 
             SLI  : in    std_logic; 
             SRI  : in    std_logic; 
             Q    : out   std_logic_vector (15 downto 0));
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component VCC
      port ( P : out   std_logic);
   end component;
   attribute BOX_TYPE of VCC : component is "BLACK_BOX";
   
   component BUF
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of BUF : component is "BLACK_BOX";
   
   component digitalfilter
      port ( inn   : in    std_logic_vector (15 downto 0); 
             outt  : out   std_logic_vector (15 downto 0); 
             shift : in    std_logic);
   end component;
   
   attribute CLKOUT0_DIVIDE_F of XLXI_20 : label is "30.0";
   attribute CLKFBOUT_MULT_F of XLXI_20 : label is "6.000";
   attribute CLKOUT1_PHASE of XLXI_20 : label is "90.0";
   attribute CLKOUT1_DIVIDE of XLXI_20 : label is "30";
   attribute CLKOUT2_PHASE of XLXI_20 : label is "180.0";
   attribute CLKOUT2_DIVIDE of XLXI_20 : label is "30";
   attribute CLKOUT3_PHASE of XLXI_20 : label is "270.0";
   attribute CLKOUT3_DIVIDE of XLXI_20 : label is "30";
   attribute HU_SET of XLXI_23 : label is "XLXI_23_23";
   attribute HU_SET of XLXI_24 : label is "XLXI_24_24";
   attribute HU_SET of XLXI_25 : label is "XLXI_25_25";
   attribute HU_SET of XLXI_26 : label is "XLXI_26_26";
   attribute HU_SET of XLXI_27 : label is "XLXI_27_27";
   attribute INIT of XLXI_29 : label is "00007f80";
   attribute INIT of XLXI_30 : label is "00007878";
   attribute INIT of XLXI_31 : label is "00066666";
   attribute INIT of XLXI_32 : label is "00055555";
   attribute INIT of XLXI_33 : label is "00078000";
   attribute HU_SET of XLXI_34 : label is "XLXI_34_28";
   attribute HU_SET of XLXI_35 : label is "XLXI_35_29";
begin
   msb <= msb_DUMMY;
   XLXI_20 : MMCME2_BASE
   -- synopsys translate_off
   generic map( CLKOUT0_DIVIDE_F => 30.0,
            CLKFBOUT_MULT_F => 6.000,
            CLKOUT1_PHASE => 90.0,
            CLKOUT1_DIVIDE => 30,
            CLKOUT2_PHASE => 180.0,
            CLKOUT2_DIVIDE => 30,
            CLKOUT3_PHASE => 270.0,
            CLKOUT3_DIVIDE => 30)
   -- synopsys translate_on
      port map (CLKFBIN=>XLXN_15,
                CLKIN1=>clk,
                PWRDWN=>XLXI_20_PWRDWN_openSignal,
                RST=>XLXN_18,
                CLKFBOUT=>XLXN_15,
                CLKFBOUTB=>open,
                CLKOUT0=>XLXN_19,
                CLKOUT0B=>open,
                CLKOUT1=>outclockp,
                CLKOUT1B=>open,
                CLKOUT2=>XLXN_54,
                CLKOUT2B=>open,
                CLKOUT3=>sclock,
                CLKOUT3B=>open,
                CLKOUT4=>open,
                CLKOUT5=>open,
                CLKOUT6=>open,
                LOCKED=>open);
   
   XLXI_21 : GND
      port map (G=>XLXN_18);
   
   XLXI_22 : BUFG
      port map (I=>XLXN_19,
                O=>outclock);
   
   XLXI_23 : IFD_HXILINX_timinggenerator
      port map (C=>outclock,
                D=>XLXN_51,
                Q=>msb_DUMMY);
   
   XLXI_24 : IFD_HXILINX_timinggenerator
      port map (C=>outclock,
                D=>XLXN_25,
                Q=>XLXN_33);
   
   XLXI_25 : IFD_HXILINX_timinggenerator
      port map (C=>outclock,
                D=>XLXN_24,
                Q=>XLXN_36);
   
   XLXI_26 : IFD_HXILINX_timinggenerator
      port map (C=>outclock,
                D=>XLXN_23,
                Q=>XLXN_48);
   
   XLXI_27 : IFD_HXILINX_timinggenerator
      port map (C=>outclock,
                D=>XLXN_22,
                Q=>XLXN_44);
   
   XLXI_29 : LUT5
   -- synopsys translate_off
   generic map( INIT => x"00007f80")
   -- synopsys translate_on
      port map (I0=>XLXN_44,
                I1=>XLXN_48,
                I2=>XLXN_36,
                I3=>XLXN_33,
                I4=>msb_DUMMY,
                O=>XLXN_25);
   
   XLXI_30 : LUT5
   -- synopsys translate_off
   generic map( INIT => x"00007878")
   -- synopsys translate_on
      port map (I0=>XLXN_44,
                I1=>XLXN_48,
                I2=>XLXN_36,
                I3=>XLXN_33,
                I4=>msb_DUMMY,
                O=>XLXN_24);
   
   XLXI_31 : LUT5
   -- synopsys translate_off
   generic map( INIT => x"00066666")
   -- synopsys translate_on
      port map (I0=>XLXN_44,
                I1=>XLXN_48,
                I2=>XLXN_36,
                I3=>XLXN_33,
                I4=>msb_DUMMY,
                O=>XLXN_23);
   
   XLXI_32 : LUT5
   -- synopsys translate_off
   generic map( INIT => x"00055555")
   -- synopsys translate_on
      port map (I0=>XLXN_44,
                I1=>XLXN_48,
                I2=>XLXN_36,
                I3=>XLXN_33,
                I4=>msb_DUMMY,
                O=>XLXN_22);
   
   XLXI_33 : LUT5
   -- synopsys translate_off
   generic map( INIT => x"00078000")
   -- synopsys translate_on
      port map (I0=>XLXN_44,
                I1=>XLXN_48,
                I2=>XLXN_36,
                I3=>XLXN_33,
                I4=>msb_DUMMY,
                O=>XLXN_51);
   
   XLXI_34 : SR16CE_HXILINX_timinggenerator
      port map (C=>XLXN_54,
                CE=>sync,
                CLR=>XLXN_52,
                SLI=>serialinput,
                Q(15 downto 0)=>XLXN_77(15 downto 0));
   
   XLXI_35 : SR16CLED_HXILINX_timinggenerator
      port map (C=>XLXN_54,
                CE=>sync,
                CLR=>XLXI_35_CLR_openSignal,
                D(15 downto 0)=>XLXN_79(15 downto 0),
                L=>msb_DUMMY,
                LEFT=>XLXN_62,
                SLI=>XLXI_35_SLI_openSignal,
                SRI=>XLXI_35_SRI_openSignal,
                Q(15 downto 0)=>XLXN_69(15 downto 0));
   
   XLXI_36 : GND
      port map (G=>XLXN_52);
   
   XLXI_37 : INV
      port map (I=>msb_DUMMY,
                O=>sync);
   
   XLXI_38 : GND
      port map (G=>XLXN_78);
   
   XLXI_39 : VCC
      port map (P=>XLXN_62);
   
   XLXI_41 : BUF
      port map (I=>XLXN_69(15),
                O=>serialoutput);
   
   XLXI_42 : INV
      port map (I=>sync,
                O=>sync1);
   
   XLXI_43 : digitalfilter
      port map (inn(15 downto 0)=>XLXN_77(15 downto 0),
                shift=>msb_DUMMY,
                outt(15 downto 0)=>XLXN_79(15 downto 0));
   
end BEHAVIORAL;


