<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_15" />
        <signal name="clk" />
        <signal name="XLXN_18" />
        <signal name="outclockp" />
        <signal name="XLXN_19" />
        <signal name="outclock" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_33" />
        <signal name="XLXN_36" />
        <signal name="XLXN_44" />
        <signal name="msb" />
        <signal name="XLXN_48" />
        <signal name="XLXN_51" />
        <signal name="XLXN_52" />
        <signal name="XLXN_54" />
        <signal name="sync" />
        <signal name="serialinput" />
        <signal name="XLXN_62" />
        <signal name="XLXN_69(15:0)" />
        <signal name="XLXN_69(15)" />
        <signal name="serialoutput" />
        <signal name="sclock" />
        <signal name="sync1" />
        <signal name="XLXN_77(15:0)" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79(15:0)" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="outclockp" />
        <port polarity="Output" name="msb" />
        <port polarity="Input" name="serialinput" />
        <port polarity="Output" name="serialoutput" />
        <port polarity="Output" name="sclock" />
        <port polarity="Output" name="sync1" />
        <blockdef name="mmcme2_base">
            <timestamp>2010-10-29T18:40:40</timestamp>
            <rect width="768" x="64" y="-480" height="480" />
            <line x2="0" y1="-448" y2="-448" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-64" y2="-64" x1="64" />
            <line x2="896" y1="-448" y2="-448" x1="832" />
            <line x2="896" y1="-416" y2="-416" x1="832" />
            <line x2="896" y1="-384" y2="-384" x1="832" />
            <line x2="896" y1="-352" y2="-352" x1="832" />
            <line x2="896" y1="-320" y2="-320" x1="832" />
            <line x2="896" y1="-288" y2="-288" x1="832" />
            <line x2="896" y1="-256" y2="-256" x1="832" />
            <line x2="896" y1="-224" y2="-224" x1="832" />
            <line x2="896" y1="-192" y2="-192" x1="832" />
            <line x2="896" y1="-160" y2="-160" x1="832" />
            <line x2="896" y1="-128" y2="-128" x1="832" />
            <line x2="896" y1="-96" y2="-96" x1="832" />
            <line x2="896" y1="-64" y2="-64" x1="832" />
            <line x2="896" y1="-32" y2="-32" x1="832" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="ifd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <rect width="256" x="64" y="-320" height="256" />
            <line x2="64" y1="-128" y2="-140" x1="84" />
            <line x2="84" y1="-116" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <blockdef name="lut5">
            <timestamp>2005-6-1T10:10:10</timestamp>
            <line x2="320" y1="-192" y2="-192" x1="384" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
            <line x2="64" y1="-368" y2="-368" x1="0" />
        </blockdef>
        <blockdef name="sr16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <rect width="256" x="64" y="-384" height="320" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
        </blockdef>
        <blockdef name="sr16cled">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-384" y2="-384" x1="384" />
            <line x2="64" y1="-576" y2="-576" x1="0" />
            <rect width="64" x="0" y="-524" height="24" />
            <rect width="64" x="320" y="-396" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-640" height="576" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="digitalfilter">
            <timestamp>2015-7-16T16:11:35</timestamp>
            <rect width="256" x="64" y="-128" height="128" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
        </blockdef>
        <block symbolname="mmcme2_base" name="XLXI_20">
            <attr value="30" name="CLKOUT0_DIVIDE_F">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Float 1 128" />
            </attr>
            <attr value="6.000" name="CLKFBOUT_MULT_F">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Float 2 64" />
            </attr>
            <attr value="90" name="CLKOUT1_PHASE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Float -360 360" />
            </attr>
            <attr value="30" name="CLKOUT1_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="IntegerList 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128" />
            </attr>
            <attr value="180" name="CLKOUT2_PHASE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Float -360 360" />
            </attr>
            <attr value="30" name="CLKOUT2_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="IntegerList 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128" />
            </attr>
            <attr value="270" name="CLKOUT3_PHASE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="Float -360 360" />
            </attr>
            <attr value="30" name="CLKOUT3_DIVIDE">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="IntegerList 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79 80 81 82 83 84 85 86 87 88 89 90 91 92 93 94 95 96 97 98 99 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128" />
            </attr>
            <blockpin signalname="XLXN_15" name="CLKFBIN" />
            <blockpin signalname="clk" name="CLKIN1" />
            <blockpin name="PWRDWN" />
            <blockpin signalname="XLXN_18" name="RST" />
            <blockpin signalname="XLXN_15" name="CLKFBOUT" />
            <blockpin name="CLKFBOUTB" />
            <blockpin signalname="XLXN_19" name="CLKOUT0" />
            <blockpin name="CLKOUT0B" />
            <blockpin signalname="outclockp" name="CLKOUT1" />
            <blockpin name="CLKOUT1B" />
            <blockpin signalname="XLXN_54" name="CLKOUT2" />
            <blockpin name="CLKOUT2B" />
            <blockpin signalname="sclock" name="CLKOUT3" />
            <blockpin name="CLKOUT3B" />
            <blockpin name="CLKOUT4" />
            <blockpin name="CLKOUT5" />
            <blockpin name="CLKOUT6" />
            <blockpin name="LOCKED" />
        </block>
        <block symbolname="gnd" name="XLXI_21">
            <blockpin signalname="XLXN_18" name="G" />
        </block>
        <block symbolname="bufg" name="XLXI_22">
            <blockpin signalname="XLXN_19" name="I" />
            <blockpin signalname="outclock" name="O" />
        </block>
        <block symbolname="ifd" name="XLXI_23">
            <blockpin signalname="outclock" name="C" />
            <blockpin signalname="XLXN_51" name="D" />
            <blockpin signalname="msb" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_24">
            <blockpin signalname="outclock" name="C" />
            <blockpin signalname="XLXN_25" name="D" />
            <blockpin signalname="XLXN_33" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_25">
            <blockpin signalname="outclock" name="C" />
            <blockpin signalname="XLXN_24" name="D" />
            <blockpin signalname="XLXN_36" name="Q" />
        </block>
        <block symbolname="ifd" name="XLXI_26">
            <blockpin signalname="outclock" name="C" />
            <blockpin signalname="XLXN_23" name="D" />
            <blockpin signalname="XLXN_48" name="Q" />
        </block>
        <block symbolname="lut5" name="XLXI_29">
            <attr value="00007f80" name="INIT">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 32 h" />
            </attr>
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_36" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_25" name="O" />
            <blockpin signalname="msb" name="I4" />
        </block>
        <block symbolname="lut5" name="XLXI_30">
            <attr value="00007878" name="INIT">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 32 h" />
            </attr>
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_36" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_24" name="O" />
            <blockpin signalname="msb" name="I4" />
        </block>
        <block symbolname="lut5" name="XLXI_31">
            <attr value="00066666" name="INIT">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 32 h" />
            </attr>
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_36" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_23" name="O" />
            <blockpin signalname="msb" name="I4" />
        </block>
        <block symbolname="lut5" name="XLXI_32">
            <attr value="00055555" name="INIT">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 32 h" />
            </attr>
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_36" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_22" name="O" />
            <blockpin signalname="msb" name="I4" />
        </block>
        <block symbolname="ifd" name="XLXI_27">
            <blockpin signalname="outclock" name="C" />
            <blockpin signalname="XLXN_22" name="D" />
            <blockpin signalname="XLXN_44" name="Q" />
        </block>
        <block symbolname="lut5" name="XLXI_33">
            <attr value="00078000" name="INIT">
                <trait editname="all:1 sch:0" />
                <trait edittrait="all:1 sch:0" />
                <trait verilog="all:0 dp:1nosynth wsynop:1 wsynth:1" />
                <trait vhdl="all:0 gm:1nosynth wa:1 wd:1" />
                <trait valuetype="BitVector 32 h" />
            </attr>
            <blockpin signalname="XLXN_44" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_36" name="I2" />
            <blockpin signalname="XLXN_33" name="I3" />
            <blockpin signalname="XLXN_51" name="O" />
            <blockpin signalname="msb" name="I4" />
        </block>
        <block symbolname="sr16ce" name="XLXI_34">
            <blockpin signalname="XLXN_54" name="C" />
            <blockpin signalname="sync" name="CE" />
            <blockpin signalname="XLXN_52" name="CLR" />
            <blockpin signalname="serialinput" name="SLI" />
            <blockpin signalname="XLXN_77(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="sr16cled" name="XLXI_35">
            <blockpin signalname="XLXN_54" name="C" />
            <blockpin signalname="sync" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_79(15:0)" name="D(15:0)" />
            <blockpin signalname="msb" name="L" />
            <blockpin signalname="XLXN_62" name="LEFT" />
            <blockpin name="SLI" />
            <blockpin name="SRI" />
            <blockpin signalname="XLXN_69(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_36">
            <blockpin signalname="XLXN_52" name="G" />
        </block>
        <block symbolname="inv" name="XLXI_37">
            <blockpin signalname="msb" name="I" />
            <blockpin signalname="sync" name="O" />
        </block>
        <block symbolname="gnd" name="XLXI_38">
            <blockpin signalname="XLXN_78" name="G" />
        </block>
        <block symbolname="vcc" name="XLXI_39">
            <blockpin signalname="XLXN_62" name="P" />
        </block>
        <block symbolname="buf" name="XLXI_41">
            <blockpin signalname="XLXN_69(15)" name="I" />
            <blockpin signalname="serialoutput" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_42">
            <blockpin signalname="sync" name="I" />
            <blockpin signalname="sync1" name="O" />
        </block>
        <block symbolname="digitalfilter" name="XLXI_43">
            <blockpin signalname="XLXN_77(15:0)" name="inn(15:0)" />
            <blockpin signalname="XLXN_79(15:0)" name="outt(15:0)" />
            <blockpin signalname="msb" name="shift" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="7040">
        <instance x="592" y="896" name="XLXI_20" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKOUT0_DIVIDE_F" x="448" y="-268" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKFBOUT_MULT_F" x="448" y="-268" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKOUT1_PHASE" x="448" y="-268" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKOUT1_DIVIDE" x="448" y="-268" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKOUT2_PHASE" x="448" y="-268" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKOUT2_DIVIDE" x="448" y="-268" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKOUT3_PHASE" x="448" y="-268" type="instance" />
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="CLKOUT3_DIVIDE" x="448" y="-268" type="instance" />
        </instance>
        <branch name="XLXN_15">
            <wire x2="512" y1="448" y2="960" x1="512" />
            <wire x2="1568" y1="960" y2="960" x1="512" />
            <wire x2="592" y1="448" y2="448" x1="512" />
            <wire x2="1568" y1="448" y2="448" x1="1488" />
            <wire x2="1568" y1="448" y2="960" x1="1568" />
        </branch>
        <branch name="clk">
            <wire x2="592" y1="576" y2="576" x1="384" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="592" y1="832" y2="832" x1="352" />
        </branch>
        <instance x="288" y="960" name="XLXI_21" orien="R0" />
        <branch name="outclockp">
            <wire x2="1984" y1="576" y2="576" x1="1488" />
        </branch>
        <instance x="1632" y="544" name="XLXI_22" orien="R0" />
        <branch name="XLXN_19">
            <wire x2="1632" y1="512" y2="512" x1="1488" />
        </branch>
        <branch name="outclock">
            <wire x2="1984" y1="512" y2="512" x1="1856" />
            <wire x2="3248" y1="464" y2="464" x1="1904" />
            <wire x2="3248" y1="464" y2="528" x1="3248" />
            <wire x2="3360" y1="528" y2="528" x1="3248" />
            <wire x2="3360" y1="528" y2="2304" x1="3360" />
            <wire x2="3376" y1="2304" y2="2304" x1="3360" />
            <wire x2="3360" y1="2304" y2="2336" x1="3360" />
            <wire x2="3360" y1="2336" y2="3008" x1="3360" />
            <wire x2="3488" y1="3008" y2="3008" x1="3360" />
            <wire x2="3360" y1="3008" y2="3680" x1="3360" />
            <wire x2="3360" y1="3680" y2="4368" x1="3360" />
            <wire x2="3552" y1="4368" y2="4368" x1="3360" />
            <wire x2="3360" y1="4368" y2="5040" x1="3360" />
            <wire x2="3536" y1="5040" y2="5040" x1="3360" />
            <wire x2="3520" y1="3680" y2="3680" x1="3360" />
            <wire x2="3424" y1="2336" y2="2336" x1="3360" />
            <wire x2="1904" y1="464" y2="480" x1="1904" />
            <wire x2="1984" y1="480" y2="480" x1="1904" />
            <wire x2="1984" y1="480" y2="512" x1="1984" />
        </branch>
        <iomarker fontsize="28" x="384" y="576" name="clk" orien="R180" />
        <instance x="3488" y="3136" name="XLXI_24" orien="R0" />
        <instance x="3520" y="3808" name="XLXI_25" orien="R0" />
        <instance x="3552" y="4496" name="XLXI_26" orien="R0" />
        <instance x="2848" y="3744" name="XLXI_30" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-476" type="instance" />
        </instance>
        <instance x="2896" y="4432" name="XLXI_31" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-476" type="instance" />
        </instance>
        <instance x="2928" y="5072" name="XLXI_32" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-476" type="instance" />
        </instance>
        <branch name="XLXN_23">
            <wire x2="3552" y1="4240" y2="4240" x1="3280" />
        </branch>
        <branch name="XLXN_24">
            <wire x2="3520" y1="3552" y2="3552" x1="3232" />
        </branch>
        <branch name="XLXN_25">
            <wire x2="3472" y1="2864" y2="2864" x1="3232" />
            <wire x2="3472" y1="2864" y2="2880" x1="3472" />
            <wire x2="3488" y1="2880" y2="2880" x1="3472" />
        </branch>
        <instance x="3424" y="2464" name="XLXI_23" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="3328" y1="4880" y2="4880" x1="3312" />
            <wire x2="3328" y1="4880" y2="4912" x1="3328" />
            <wire x2="3536" y1="4912" y2="4912" x1="3328" />
        </branch>
        <instance x="3536" y="5168" name="XLXI_27" orien="R0" />
        <instance x="2848" y="3056" name="XLXI_29" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-476" type="instance" />
        </instance>
        <branch name="XLXN_44">
            <wire x2="4496" y1="1200" y2="1200" x1="2176" />
            <wire x2="4496" y1="1200" y2="4976" x1="4496" />
            <wire x2="4512" y1="4976" y2="4976" x1="4496" />
            <wire x2="2176" y1="1200" y2="1232" x1="2176" />
            <wire x2="2208" y1="1232" y2="1232" x1="2176" />
            <wire x2="2208" y1="1232" y2="2288" x1="2208" />
            <wire x2="2208" y1="2288" y2="2928" x1="2208" />
            <wire x2="2208" y1="2928" y2="3616" x1="2208" />
            <wire x2="2848" y1="3616" y2="3616" x1="2208" />
            <wire x2="2208" y1="3616" y2="4304" x1="2208" />
            <wire x2="2896" y1="4304" y2="4304" x1="2208" />
            <wire x2="2208" y1="4304" y2="4944" x1="2208" />
            <wire x2="2928" y1="4944" y2="4944" x1="2208" />
            <wire x2="2848" y1="2928" y2="2928" x1="2208" />
            <wire x2="2864" y1="2288" y2="2288" x1="2208" />
            <wire x2="4512" y1="4912" y2="4912" x1="3920" />
            <wire x2="4512" y1="4912" y2="4976" x1="4512" />
            <wire x2="4512" y1="4896" y2="4912" x1="4512" />
        </branch>
        <branch name="XLXN_48">
            <wire x2="4288" y1="1360" y2="1360" x1="2272" />
            <wire x2="4288" y1="1360" y2="1376" x1="4288" />
            <wire x2="4304" y1="1376" y2="1376" x1="4288" />
            <wire x2="4304" y1="1376" y2="4256" x1="4304" />
            <wire x2="2272" y1="1360" y2="2224" x1="2272" />
            <wire x2="2272" y1="2224" y2="2832" x1="2272" />
            <wire x2="2272" y1="2832" y2="3552" x1="2272" />
            <wire x2="2848" y1="3552" y2="3552" x1="2272" />
            <wire x2="2272" y1="3552" y2="4240" x1="2272" />
            <wire x2="2272" y1="4240" y2="4864" x1="2272" />
            <wire x2="2336" y1="4864" y2="4864" x1="2272" />
            <wire x2="2336" y1="4864" y2="4880" x1="2336" />
            <wire x2="2928" y1="4880" y2="4880" x1="2336" />
            <wire x2="2896" y1="4240" y2="4240" x1="2272" />
            <wire x2="2560" y1="2832" y2="2832" x1="2272" />
            <wire x2="2560" y1="2832" y2="2864" x1="2560" />
            <wire x2="2848" y1="2864" y2="2864" x1="2560" />
            <wire x2="2864" y1="2224" y2="2224" x1="2272" />
            <wire x2="4288" y1="4240" y2="4240" x1="3936" />
            <wire x2="4288" y1="4240" y2="4256" x1="4288" />
            <wire x2="4304" y1="4256" y2="4256" x1="4288" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="4144" y1="1536" y2="1536" x1="2416" />
            <wire x2="4144" y1="1536" y2="3552" x1="4144" />
            <wire x2="2416" y1="1536" y2="2160" x1="2416" />
            <wire x2="2416" y1="2160" y2="2800" x1="2416" />
            <wire x2="2416" y1="2800" y2="3488" x1="2416" />
            <wire x2="2848" y1="3488" y2="3488" x1="2416" />
            <wire x2="2416" y1="3488" y2="4176" x1="2416" />
            <wire x2="2416" y1="4176" y2="4800" x1="2416" />
            <wire x2="2448" y1="4800" y2="4800" x1="2416" />
            <wire x2="2448" y1="4800" y2="4816" x1="2448" />
            <wire x2="2928" y1="4816" y2="4816" x1="2448" />
            <wire x2="2896" y1="4176" y2="4176" x1="2416" />
            <wire x2="2848" y1="2800" y2="2800" x1="2416" />
            <wire x2="2864" y1="2160" y2="2160" x1="2416" />
            <wire x2="4144" y1="3552" y2="3552" x1="3904" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="4016" y1="1664" y2="1664" x1="2544" />
            <wire x2="4016" y1="1664" y2="2880" x1="4016" />
            <wire x2="2544" y1="1664" y2="2096" x1="2544" />
            <wire x2="2544" y1="2096" y2="2736" x1="2544" />
            <wire x2="2544" y1="2736" y2="3424" x1="2544" />
            <wire x2="2848" y1="3424" y2="3424" x1="2544" />
            <wire x2="2544" y1="3424" y2="4112" x1="2544" />
            <wire x2="2544" y1="4112" y2="4752" x1="2544" />
            <wire x2="2928" y1="4752" y2="4752" x1="2544" />
            <wire x2="2896" y1="4112" y2="4112" x1="2544" />
            <wire x2="2848" y1="2736" y2="2736" x1="2544" />
            <wire x2="2864" y1="2096" y2="2096" x1="2544" />
            <wire x2="4016" y1="2880" y2="2880" x1="3872" />
        </branch>
        <branch name="XLXN_51">
            <wire x2="3408" y1="2224" y2="2224" x1="3248" />
            <wire x2="3424" y1="2208" y2="2208" x1="3408" />
            <wire x2="3408" y1="2208" y2="2224" x1="3408" />
        </branch>
        <instance x="2864" y="2416" name="XLXI_33" orien="R0">
            <attrtext style="fontsize:28;fontname:Arial;displayformat:NAMEEQUALSVALUE" attrname="INIT" x="0" y="-476" type="instance" />
        </instance>
        <iomarker fontsize="28" x="4784" y="2048" name="msb" orien="R0" />
        <iomarker fontsize="28" x="1984" y="576" name="outclockp" orien="R0" />
        <instance x="1040" y="6064" name="XLXI_34" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1040" y1="6032" y2="6064" x1="1040" />
        </branch>
        <instance x="976" y="6192" name="XLXI_36" orien="R0" />
        <branch name="XLXN_54">
            <wire x2="1040" y1="5936" y2="5936" x1="896" />
            <wire x2="896" y1="5936" y2="6048" x1="896" />
            <wire x2="1776" y1="6048" y2="6048" x1="896" />
            <wire x2="1776" y1="6048" y2="6096" x1="1776" />
            <wire x2="3456" y1="6096" y2="6096" x1="1776" />
            <wire x2="3456" y1="6096" y2="6256" x1="3456" />
            <wire x2="3504" y1="6256" y2="6256" x1="3456" />
            <wire x2="1776" y1="640" y2="640" x1="1488" />
            <wire x2="1776" y1="640" y2="6048" x1="1776" />
        </branch>
        <instance x="496" y="5920" name="XLXI_37" orien="R0" />
        <branch name="serialinput">
            <wire x2="1040" y1="5744" y2="5744" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1008" y="5744" name="serialinput" orien="R180" />
        <instance x="2192" y="6448" name="XLXI_38" orien="R0" />
        <instance x="2000" y="6064" name="XLXI_39" orien="R0" />
        <branch name="XLXN_69(15:0)">
            <wire x2="2736" y1="5664" y2="5936" x1="2736" />
            <wire x2="2752" y1="5936" y2="5936" x1="2736" />
            <wire x2="2784" y1="5936" y2="5936" x1="2752" />
            <wire x2="3952" y1="5664" y2="5664" x1="2736" />
            <wire x2="3952" y1="5664" y2="6000" x1="3952" />
            <wire x2="3952" y1="6000" y2="6000" x1="3888" />
        </branch>
        <bustap x2="2752" y1="5936" y2="6032" x1="2752" />
        <branch name="XLXN_69(15)">
            <wire x2="2752" y1="6032" y2="6160" x1="2752" />
            <wire x2="2880" y1="6160" y2="6160" x1="2752" />
            <wire x2="2896" y1="6160" y2="6160" x1="2880" />
        </branch>
        <instance x="2880" y="6192" name="XLXI_41" orien="R0" />
        <branch name="serialoutput">
            <wire x2="3136" y1="6160" y2="6160" x1="3104" />
        </branch>
        <iomarker fontsize="28" x="3136" y="6160" name="serialoutput" orien="R0" />
        <branch name="sclock">
            <wire x2="2016" y1="704" y2="704" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="2016" y="704" name="sclock" orien="R0" />
        <branch name="sync">
            <wire x2="736" y1="5888" y2="5888" x1="720" />
            <wire x2="752" y1="5888" y2="5888" x1="736" />
            <wire x2="1024" y1="5888" y2="5888" x1="752" />
            <wire x2="752" y1="5888" y2="6464" x1="752" />
            <wire x2="848" y1="6464" y2="6464" x1="752" />
            <wire x2="736" y1="5888" y2="6256" x1="736" />
            <wire x2="3392" y1="6256" y2="6256" x1="736" />
            <wire x2="1040" y1="5872" y2="5872" x1="1024" />
            <wire x2="1024" y1="5872" y2="5888" x1="1024" />
            <wire x2="3392" y1="6192" y2="6256" x1="3392" />
            <wire x2="3504" y1="6192" y2="6192" x1="3392" />
        </branch>
        <instance x="848" y="6496" name="XLXI_42" orien="R0" />
        <branch name="sync1">
            <wire x2="1248" y1="6464" y2="6464" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1248" y="6464" name="sync1" orien="R0" />
        <branch name="XLXN_62">
            <wire x2="2080" y1="6064" y2="6064" x1="2064" />
            <wire x2="2080" y1="6064" y2="6080" x1="2080" />
            <wire x2="3392" y1="6080" y2="6080" x1="2080" />
            <wire x2="3392" y1="6080" y2="6128" x1="3392" />
            <wire x2="3504" y1="6128" y2="6128" x1="3392" />
        </branch>
        <instance x="3504" y="6384" name="XLXI_35" orien="R0" />
        <branch name="XLXN_78">
            <wire x2="2256" y1="6272" y2="6320" x1="2256" />
            <wire x2="2352" y1="6272" y2="6272" x1="2256" />
            <wire x2="2352" y1="6272" y2="6432" x1="2352" />
            <wire x2="3520" y1="6432" y2="6432" x1="2352" />
            <wire x2="3520" y1="6352" y2="6432" x1="3520" />
        </branch>
        <branch name="msb">
            <wire x2="432" y1="5616" y2="5888" x1="432" />
            <wire x2="496" y1="5888" y2="5888" x1="432" />
            <wire x2="2032" y1="5616" y2="5616" x1="432" />
            <wire x2="4736" y1="5616" y2="5616" x1="2032" />
            <wire x2="2032" y1="5600" y2="5616" x1="2032" />
            <wire x2="2176" y1="5600" y2="5600" x1="2032" />
            <wire x2="2176" y1="5600" y2="5856" x1="2176" />
            <wire x2="2176" y1="5856" y2="5872" x1="2176" />
            <wire x2="2176" y1="5872" y2="6064" x1="2176" />
            <wire x2="3504" y1="6064" y2="6064" x1="2176" />
            <wire x2="2256" y1="5872" y2="5872" x1="2176" />
            <wire x2="2672" y1="1760" y2="2048" x1="2672" />
            <wire x2="2672" y1="2048" y2="2688" x1="2672" />
            <wire x2="2672" y1="2688" y2="3376" x1="2672" />
            <wire x2="2672" y1="3376" y2="4064" x1="2672" />
            <wire x2="2672" y1="4064" y2="4720" x1="2672" />
            <wire x2="2720" y1="4720" y2="4720" x1="2672" />
            <wire x2="2896" y1="4064" y2="4064" x1="2672" />
            <wire x2="2848" y1="3376" y2="3376" x1="2672" />
            <wire x2="2848" y1="2688" y2="2688" x1="2672" />
            <wire x2="2864" y1="2048" y2="2048" x1="2672" />
            <wire x2="3824" y1="1760" y2="1760" x1="2672" />
            <wire x2="3824" y1="1760" y2="2048" x1="3824" />
            <wire x2="3824" y1="2048" y2="2208" x1="3824" />
            <wire x2="4736" y1="2048" y2="2048" x1="3824" />
            <wire x2="4784" y1="2048" y2="2048" x1="4736" />
            <wire x2="4736" y1="2048" y2="5616" x1="4736" />
            <wire x2="2928" y1="4704" y2="4704" x1="2720" />
            <wire x2="2720" y1="4704" y2="4720" x1="2720" />
            <wire x2="3824" y1="2208" y2="2208" x1="3808" />
        </branch>
        <branch name="XLXN_77(15:0)">
            <wire x2="1824" y1="5808" y2="5808" x1="1424" />
            <wire x2="1824" y1="5792" y2="5808" x1="1824" />
            <wire x2="2032" y1="5792" y2="5792" x1="1824" />
            <wire x2="2032" y1="5792" y2="5808" x1="2032" />
            <wire x2="2256" y1="5808" y2="5808" x1="2032" />
        </branch>
        <branch name="XLXN_79(15:0)">
            <wire x2="2848" y1="5808" y2="5808" x1="2640" />
            <wire x2="2848" y1="5792" y2="5808" x1="2848" />
            <wire x2="3056" y1="5792" y2="5792" x1="2848" />
            <wire x2="3056" y1="5792" y2="5872" x1="3056" />
            <wire x2="3504" y1="5872" y2="5872" x1="3056" />
        </branch>
        <instance x="2256" y="5904" name="XLXI_43" orien="R0">
        </instance>
    </sheet>
</drawing>