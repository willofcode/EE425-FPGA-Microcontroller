<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1(15:0)" />
        <signal name="XLXN_2(15:0)" />
        <signal name="XLXN_3(15:0)" />
        <signal name="XLXN_4(15:0)" />
        <signal name="XLXN_6(15:0)" />
        <signal name="XLXN_7(15:0)" />
        <signal name="XLXN_8(15:0)" />
        <signal name="XLXN_9(15:0)" />
        <signal name="XLXN_11(15:0)" />
        <signal name="XLXN_12(15:0)" />
        <signal name="XLXN_13(15:0)" />
        <signal name="XLXN_14(15:0)" />
        <signal name="XLXN_15(15:0)" />
        <signal name="XLXN_16(15:0)" />
        <signal name="XLXN_17(15:0)" />
        <signal name="XLXN_18(15:0)" />
        <signal name="XLXN_19(15:0)" />
        <signal name="XLXN_20(15:0)" />
        <signal name="XLXN_21(15:0)" />
        <signal name="XLXN_22(15:0)" />
        <signal name="shift" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40(15:0)" />
        <signal name="inn(15:0)" />
        <signal name="XLXN_44(15:0)" />
        <signal name="XLXN_46" />
        <signal name="outt(15:0)" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60(15:0)" />
        <signal name="XLXN_61(15:0)" />
        <signal name="XLXN_62(15:0)" />
        <port polarity="Input" name="shift" />
        <port polarity="Input" name="inn(15:0)" />
        <port polarity="Output" name="outt(15:0)" />
        <blockdef name="fd16ce">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <rect width="64" x="320" y="-268" height="24" />
            <rect width="64" x="0" y="-268" height="24" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <blockdef name="adsu16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="48" y1="-64" y2="-64" x1="128" />
            <line x2="128" y1="-96" y2="-64" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <blockdef name="constant">
            <timestamp>2006-1-1T10:10:10</timestamp>
            <rect width="112" x="0" y="0" height="64" />
            <line x2="112" y1="32" y2="32" x1="144" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="add16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="384" y1="-128" y2="-128" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="448" />
            <line x2="384" y1="-64" y2="-64" x1="240" />
            <line x2="240" y1="-124" y2="-64" x1="240" />
            <rect width="64" x="0" y="-204" height="24" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="384" y1="-256" y2="-256" x1="448" />
            <rect width="64" x="384" y="-268" height="24" />
            <line x2="64" y1="-448" y2="-448" x1="0" />
            <line x2="64" y1="-448" y2="-448" x1="128" />
            <line x2="128" y1="-416" y2="-448" x1="128" />
            <line x2="64" y1="-288" y2="-432" x1="64" />
            <line x2="64" y1="-256" y2="-288" x1="128" />
            <line x2="128" y1="-224" y2="-256" x1="64" />
            <line x2="64" y1="-80" y2="-224" x1="64" />
            <line x2="64" y1="-160" y2="-80" x1="384" />
            <line x2="384" y1="-336" y2="-160" x1="384" />
            <line x2="384" y1="-352" y2="-336" x1="384" />
            <line x2="384" y1="-432" y2="-352" x1="64" />
            <line x2="336" y1="-128" y2="-148" x1="336" />
            <line x2="336" y1="-128" y2="-128" x1="384" />
        </blockdef>
        <block symbolname="fd16ce" name="XLXI_3">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin signalname="XLXN_38" name="CLR" />
            <blockpin signalname="XLXN_1(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_4">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_2(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_3(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_5">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_3(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_4(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_6">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_4(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_11(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_7">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_11(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_12(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_8">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_12(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_19(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_9">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_19(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_21(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_10">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_21(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_6(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_11">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_6(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_7(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_12">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_7(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_8(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_13">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_8(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_9(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_14">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_9(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_15">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_13(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_20(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_16">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_20(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_22(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_17">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_22(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_14(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_18">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_14(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_15(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_19">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_15(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_16(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_20">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_16(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_17(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_21">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_17(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_18(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="fd16ce" name="XLXI_22">
            <blockpin signalname="shift" name="C" />
            <blockpin signalname="XLXN_59" name="CE" />
            <blockpin name="CLR" />
            <blockpin signalname="XLXN_18(15:0)" name="D(15:0)" />
            <blockpin signalname="XLXN_61(15:0)" name="Q(15:0)" />
        </block>
        <block symbolname="adsu16" name="XLXI_23">
            <blockpin signalname="inn(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_39" name="ADD" />
            <blockpin signalname="XLXN_40(15:0)" name="B(15:0)" />
            <blockpin name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_1(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="adsu16" name="XLXI_24">
            <blockpin signalname="XLXN_62(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_46" name="ADD" />
            <blockpin signalname="XLXN_44(15:0)" name="B(15:0)" />
            <blockpin name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="outt(15:0)" name="S(15:0)" />
        </block>
        <block symbolname="gnd" name="XLXI_25">
            <blockpin signalname="XLXN_39" name="G" />
        </block>
        <block symbolname="constant" name="XLXI_26">
            <attr value="8000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_40(15:0)" name="O" />
        </block>
        <block symbolname="constant" name="XLXI_27">
            <attr value="8000" name="CValue">
                <trait delete="all:1 sym:0" />
                <trait editname="all:1 sch:0" />
                <trait valuetype="BitVector 32 Hexadecimal" />
            </attr>
            <blockpin signalname="XLXN_44(15:0)" name="O" />
        </block>
        <block symbolname="vcc" name="XLXI_28">
            <blockpin signalname="XLXN_46" name="P" />
        </block>
        <block symbolname="vcc" name="XLXI_29">
            <blockpin signalname="XLXN_59" name="P" />
        </block>
        <block symbolname="add16" name="XLXI_30">
            <blockpin signalname="XLXN_61(15:0)" name="A(15:0)" />
            <blockpin signalname="XLXN_2(15:0)" name="B(15:0)" />
            <blockpin name="CI" />
            <blockpin name="CO" />
            <blockpin name="OFL" />
            <blockpin signalname="XLXN_62(15:0)" name="S(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="7040">
        <instance x="928" y="1280" name="XLXI_3" orien="R0" />
        <instance x="1584" y="1296" name="XLXI_4" orien="R0" />
        <instance x="2288" y="1312" name="XLXI_5" orien="R0" />
        <instance x="2944" y="1312" name="XLXI_6" orien="R0" />
        <instance x="3552" y="1312" name="XLXI_7" orien="R0" />
        <instance x="4208" y="1296" name="XLXI_8" orien="R0" />
        <instance x="4848" y="1296" name="XLXI_9" orien="R0" />
        <instance x="944" y="1840" name="XLXI_10" orien="R0" />
        <instance x="1600" y="1824" name="XLXI_11" orien="R0" />
        <instance x="2256" y="1824" name="XLXI_12" orien="R0" />
        <instance x="2960" y="1824" name="XLXI_13" orien="R0" />
        <instance x="3552" y="1808" name="XLXI_14" orien="R0" />
        <instance x="4192" y="1824" name="XLXI_15" orien="R0" />
        <instance x="4880" y="1792" name="XLXI_16" orien="R0" />
        <instance x="912" y="2432" name="XLXI_17" orien="R0" />
        <instance x="1632" y="2352" name="XLXI_18" orien="R0" />
        <instance x="2224" y="2352" name="XLXI_19" orien="R0" />
        <instance x="2960" y="2352" name="XLXI_20" orien="R0" />
        <instance x="3552" y="2368" name="XLXI_21" orien="R0" />
        <instance x="4144" y="2352" name="XLXI_22" orien="R0" />
        <branch name="XLXN_1(15:0)">
            <wire x2="720" y1="944" y2="1024" x1="720" />
            <wire x2="928" y1="1024" y2="1024" x1="720" />
            <wire x2="720" y1="1024" y2="1040" x1="720" />
            <wire x2="1488" y1="944" y2="944" x1="720" />
            <wire x2="1488" y1="352" y2="352" x1="1408" />
            <wire x2="1488" y1="352" y2="944" x1="1488" />
        </branch>
        <branch name="XLXN_2(15:0)">
            <wire x2="1376" y1="1024" y2="1024" x1="1312" />
            <wire x2="1440" y1="1024" y2="1024" x1="1376" />
            <wire x2="1440" y1="1024" y2="1040" x1="1440" />
            <wire x2="1584" y1="1040" y2="1040" x1="1440" />
            <wire x2="1376" y1="1024" y2="4032" x1="1376" />
            <wire x2="3408" y1="4032" y2="4032" x1="1376" />
        </branch>
        <branch name="XLXN_3(15:0)">
            <wire x2="2128" y1="1040" y2="1040" x1="1968" />
            <wire x2="2128" y1="1040" y2="1056" x1="2128" />
            <wire x2="2288" y1="1056" y2="1056" x1="2128" />
        </branch>
        <branch name="XLXN_4(15:0)">
            <wire x2="2944" y1="1056" y2="1056" x1="2672" />
        </branch>
        <branch name="XLXN_6(15:0)">
            <wire x2="1456" y1="1584" y2="1584" x1="1328" />
            <wire x2="1456" y1="1568" y2="1584" x1="1456" />
            <wire x2="1600" y1="1568" y2="1568" x1="1456" />
        </branch>
        <branch name="XLXN_7(15:0)">
            <wire x2="2256" y1="1568" y2="1568" x1="1984" />
        </branch>
        <branch name="XLXN_8(15:0)">
            <wire x2="2960" y1="1568" y2="1568" x1="2640" />
        </branch>
        <branch name="XLXN_9(15:0)">
            <wire x2="3440" y1="1568" y2="1568" x1="3344" />
            <wire x2="3440" y1="1552" y2="1568" x1="3440" />
            <wire x2="3552" y1="1552" y2="1552" x1="3440" />
        </branch>
        <branch name="XLXN_11(15:0)">
            <wire x2="3552" y1="1056" y2="1056" x1="3328" />
        </branch>
        <branch name="XLXN_12(15:0)">
            <wire x2="4064" y1="1056" y2="1056" x1="3936" />
            <wire x2="4064" y1="1040" y2="1056" x1="4064" />
            <wire x2="4208" y1="1040" y2="1040" x1="4064" />
        </branch>
        <branch name="XLXN_13(15:0)">
            <wire x2="4064" y1="1552" y2="1552" x1="3936" />
            <wire x2="4064" y1="1552" y2="1568" x1="4064" />
            <wire x2="4192" y1="1568" y2="1568" x1="4064" />
        </branch>
        <branch name="XLXN_14(15:0)">
            <wire x2="1456" y1="2176" y2="2176" x1="1296" />
            <wire x2="1456" y1="2096" y2="2176" x1="1456" />
            <wire x2="1632" y1="2096" y2="2096" x1="1456" />
        </branch>
        <branch name="XLXN_15(15:0)">
            <wire x2="2224" y1="2096" y2="2096" x1="2016" />
        </branch>
        <branch name="XLXN_16(15:0)">
            <wire x2="2960" y1="2096" y2="2096" x1="2608" />
        </branch>
        <branch name="XLXN_17(15:0)">
            <wire x2="3440" y1="2096" y2="2096" x1="3344" />
            <wire x2="3440" y1="2096" y2="2112" x1="3440" />
            <wire x2="3552" y1="2112" y2="2112" x1="3440" />
        </branch>
        <branch name="XLXN_18(15:0)">
            <wire x2="4032" y1="2112" y2="2112" x1="3936" />
            <wire x2="4032" y1="2096" y2="2112" x1="4032" />
            <wire x2="4144" y1="2096" y2="2096" x1="4032" />
        </branch>
        <branch name="XLXN_19(15:0)">
            <wire x2="4848" y1="1040" y2="1040" x1="4592" />
        </branch>
        <branch name="XLXN_20(15:0)">
            <wire x2="4720" y1="1568" y2="1568" x1="4576" />
            <wire x2="4720" y1="1536" y2="1568" x1="4720" />
            <wire x2="4880" y1="1536" y2="1536" x1="4720" />
        </branch>
        <branch name="XLXN_21(15:0)">
            <wire x2="944" y1="1584" y2="1584" x1="880" />
            <wire x2="880" y1="1584" y2="1888" x1="880" />
            <wire x2="5328" y1="1888" y2="1888" x1="880" />
            <wire x2="5328" y1="1040" y2="1040" x1="5232" />
            <wire x2="5328" y1="1040" y2="1888" x1="5328" />
        </branch>
        <branch name="XLXN_22(15:0)">
            <wire x2="912" y1="2176" y2="2176" x1="848" />
            <wire x2="848" y1="2176" y2="2464" x1="848" />
            <wire x2="5312" y1="2464" y2="2464" x1="848" />
            <wire x2="5312" y1="1536" y2="1536" x1="5264" />
            <wire x2="5312" y1="1536" y2="2464" x1="5312" />
        </branch>
        <branch name="shift">
            <wire x2="864" y1="1152" y2="1152" x1="528" />
            <wire x2="928" y1="1152" y2="1152" x1="864" />
            <wire x2="864" y1="896" y2="1152" x1="864" />
            <wire x2="1328" y1="896" y2="896" x1="864" />
            <wire x2="1328" y1="896" y2="1168" x1="1328" />
            <wire x2="1520" y1="1168" y2="1168" x1="1328" />
            <wire x2="1584" y1="1168" y2="1168" x1="1520" />
            <wire x2="1520" y1="1168" y2="1696" x1="1520" />
            <wire x2="1600" y1="1696" y2="1696" x1="1520" />
            <wire x2="1520" y1="1696" y2="2224" x1="1520" />
            <wire x2="1632" y1="2224" y2="2224" x1="1520" />
            <wire x2="1520" y1="2224" y2="2448" x1="1520" />
            <wire x2="912" y1="2304" y2="2304" x1="864" />
            <wire x2="864" y1="2304" y2="2448" x1="864" />
            <wire x2="1520" y1="2448" y2="2448" x1="864" />
            <wire x2="944" y1="1712" y2="1712" x1="896" />
            <wire x2="896" y1="1712" y2="1872" x1="896" />
            <wire x2="1344" y1="1872" y2="1872" x1="896" />
            <wire x2="1344" y1="1696" y2="1872" x1="1344" />
            <wire x2="1520" y1="1696" y2="1696" x1="1344" />
            <wire x2="1520" y1="912" y2="1168" x1="1520" />
            <wire x2="2032" y1="912" y2="912" x1="1520" />
            <wire x2="2032" y1="912" y2="1184" x1="2032" />
            <wire x2="2192" y1="1184" y2="1184" x1="2032" />
            <wire x2="2288" y1="1184" y2="1184" x1="2192" />
            <wire x2="2192" y1="1184" y2="1344" x1="2192" />
            <wire x2="2240" y1="1344" y2="1344" x1="2192" />
            <wire x2="2736" y1="1344" y2="1344" x1="2240" />
            <wire x2="2864" y1="1344" y2="1344" x1="2736" />
            <wire x2="3408" y1="1344" y2="1344" x1="2864" />
            <wire x2="3504" y1="1344" y2="1344" x1="3408" />
            <wire x2="4000" y1="1344" y2="1344" x1="3504" />
            <wire x2="4112" y1="1344" y2="1344" x1="4000" />
            <wire x2="4656" y1="1344" y2="1344" x1="4112" />
            <wire x2="4656" y1="1344" y2="1664" x1="4656" />
            <wire x2="4880" y1="1664" y2="1664" x1="4656" />
            <wire x2="4112" y1="1344" y2="1696" x1="4112" />
            <wire x2="4192" y1="1696" y2="1696" x1="4112" />
            <wire x2="4112" y1="1696" y2="2224" x1="4112" />
            <wire x2="4144" y1="2224" y2="2224" x1="4112" />
            <wire x2="3504" y1="1344" y2="1680" x1="3504" />
            <wire x2="3552" y1="1680" y2="1680" x1="3504" />
            <wire x2="3504" y1="1680" y2="2240" x1="3504" />
            <wire x2="3552" y1="2240" y2="2240" x1="3504" />
            <wire x2="2864" y1="1344" y2="1696" x1="2864" />
            <wire x2="2960" y1="1696" y2="1696" x1="2864" />
            <wire x2="2864" y1="1696" y2="2224" x1="2864" />
            <wire x2="2960" y1="2224" y2="2224" x1="2864" />
            <wire x2="2240" y1="1344" y2="1696" x1="2240" />
            <wire x2="2256" y1="1696" y2="1696" x1="2240" />
            <wire x2="2240" y1="1696" y2="1968" x1="2240" />
            <wire x2="2160" y1="1968" y2="2224" x1="2160" />
            <wire x2="2224" y1="2224" y2="2224" x1="2160" />
            <wire x2="2240" y1="1968" y2="1968" x1="2160" />
            <wire x2="2736" y1="1184" y2="1344" x1="2736" />
            <wire x2="2944" y1="1184" y2="1184" x1="2736" />
            <wire x2="3408" y1="1184" y2="1344" x1="3408" />
            <wire x2="3552" y1="1184" y2="1184" x1="3408" />
            <wire x2="4000" y1="1168" y2="1344" x1="4000" />
            <wire x2="4208" y1="1168" y2="1168" x1="4000" />
            <wire x2="4656" y1="1168" y2="1344" x1="4656" />
            <wire x2="4848" y1="1168" y2="1168" x1="4656" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="928" y1="1248" y2="1248" x1="720" />
        </branch>
        <instance x="960" y="608" name="XLXI_23" orien="R0" />
        <instance x="4736" y="4256" name="XLXI_24" orien="R0" />
        <branch name="XLXN_39">
            <wire x2="960" y1="544" y2="576" x1="960" />
        </branch>
        <instance x="896" y="704" name="XLXI_25" orien="R0" />
        <branch name="XLXN_40(15:0)">
            <wire x2="944" y1="416" y2="416" x1="928" />
            <wire x2="960" y1="416" y2="416" x1="944" />
        </branch>
        <instance x="784" y="384" name="XLXI_26" orien="R0">
        </instance>
        <branch name="inn(15:0)">
            <wire x2="960" y1="288" y2="288" x1="800" />
        </branch>
        <iomarker fontsize="28" x="800" y="288" name="inn(15:0)" orien="R180" />
        <iomarker fontsize="28" x="528" y="1152" name="shift" orien="R180" />
        <branch name="XLXN_44(15:0)">
            <wire x2="4736" y1="4064" y2="4064" x1="4704" />
        </branch>
        <instance x="4560" y="4032" name="XLXI_27" orien="R0">
        </instance>
        <instance x="4432" y="4192" name="XLXI_28" orien="R0" />
        <branch name="XLXN_46">
            <wire x2="4496" y1="4192" y2="4208" x1="4496" />
            <wire x2="4736" y1="4208" y2="4208" x1="4496" />
            <wire x2="4736" y1="4192" y2="4208" x1="4736" />
        </branch>
        <branch name="outt(15:0)">
            <wire x2="5216" y1="4000" y2="4000" x1="5184" />
        </branch>
        <iomarker fontsize="28" x="5216" y="4000" name="outt(15:0)" orien="R0" />
        <instance x="448" y="1088" name="XLXI_29" orien="R0" />
        <branch name="XLXN_59">
            <wire x2="512" y1="1088" y2="1104" x1="512" />
            <wire x2="608" y1="1104" y2="1104" x1="512" />
            <wire x2="608" y1="1088" y2="1104" x1="608" />
            <wire x2="656" y1="1088" y2="1088" x1="608" />
            <wire x2="928" y1="1088" y2="1088" x1="656" />
            <wire x2="656" y1="864" y2="1088" x1="656" />
            <wire x2="1408" y1="864" y2="864" x1="656" />
            <wire x2="1408" y1="864" y2="1104" x1="1408" />
            <wire x2="1584" y1="1104" y2="1104" x1="1408" />
            <wire x2="2016" y1="864" y2="864" x1="1408" />
            <wire x2="2016" y1="864" y2="1120" x1="2016" />
            <wire x2="2288" y1="1120" y2="1120" x1="2016" />
            <wire x2="2736" y1="864" y2="864" x1="2016" />
            <wire x2="2736" y1="864" y2="1120" x1="2736" />
            <wire x2="2832" y1="1120" y2="1120" x1="2736" />
            <wire x2="2944" y1="1120" y2="1120" x1="2832" />
            <wire x2="2832" y1="1120" y2="1632" x1="2832" />
            <wire x2="2960" y1="1632" y2="1632" x1="2832" />
            <wire x2="2832" y1="1632" y2="2160" x1="2832" />
            <wire x2="2960" y1="2160" y2="2160" x1="2832" />
            <wire x2="2832" y1="2160" y2="3248" x1="2832" />
            <wire x2="3392" y1="864" y2="864" x1="2736" />
            <wire x2="3392" y1="864" y2="1120" x1="3392" />
            <wire x2="3552" y1="1120" y2="1120" x1="3392" />
            <wire x2="3392" y1="1120" y2="1616" x1="3392" />
            <wire x2="3552" y1="1616" y2="1616" x1="3392" />
            <wire x2="4000" y1="864" y2="864" x1="3392" />
            <wire x2="4000" y1="864" y2="1104" x1="4000" />
            <wire x2="4112" y1="1104" y2="1104" x1="4000" />
            <wire x2="4208" y1="1104" y2="1104" x1="4112" />
            <wire x2="4656" y1="864" y2="864" x1="4000" />
            <wire x2="4656" y1="864" y2="1104" x1="4656" />
            <wire x2="4784" y1="1104" y2="1104" x1="4656" />
            <wire x2="4848" y1="1104" y2="1104" x1="4784" />
            <wire x2="4784" y1="1104" y2="1600" x1="4784" />
            <wire x2="4880" y1="1600" y2="1600" x1="4784" />
            <wire x2="912" y1="2240" y2="2240" x1="832" />
            <wire x2="832" y1="2240" y2="2416" x1="832" />
            <wire x2="1568" y1="2416" y2="2416" x1="832" />
            <wire x2="928" y1="1264" y2="1648" x1="928" />
            <wire x2="944" y1="1648" y2="1648" x1="928" />
            <wire x2="1536" y1="1264" y2="1264" x1="928" />
            <wire x2="1536" y1="1264" y2="1632" x1="1536" />
            <wire x2="1600" y1="1632" y2="1632" x1="1536" />
            <wire x2="1536" y1="1632" y2="2400" x1="1536" />
            <wire x2="2208" y1="2400" y2="2400" x1="1536" />
            <wire x2="1568" y1="2000" y2="2160" x1="1568" />
            <wire x2="1632" y1="2160" y2="2160" x1="1568" />
            <wire x2="1568" y1="2160" y2="2416" x1="1568" />
            <wire x2="2128" y1="2000" y2="2000" x1="1568" />
            <wire x2="2128" y1="2000" y2="2160" x1="2128" />
            <wire x2="2224" y1="2160" y2="2160" x1="2128" />
            <wire x2="2128" y1="2160" y2="3248" x1="2128" />
            <wire x2="2832" y1="3248" y2="3248" x1="2128" />
            <wire x2="2208" y1="1424" y2="1632" x1="2208" />
            <wire x2="2256" y1="1632" y2="1632" x1="2208" />
            <wire x2="2208" y1="1632" y2="2400" x1="2208" />
            <wire x2="2656" y1="1424" y2="1424" x1="2208" />
            <wire x2="2656" y1="1424" y2="1632" x1="2656" />
            <wire x2="2832" y1="1632" y2="1632" x1="2656" />
            <wire x2="3552" y1="2176" y2="2176" x1="3472" />
            <wire x2="3472" y1="2176" y2="2400" x1="3472" />
            <wire x2="3968" y1="2400" y2="2400" x1="3472" />
            <wire x2="3968" y1="2160" y2="2400" x1="3968" />
            <wire x2="4128" y1="2160" y2="2160" x1="3968" />
            <wire x2="4144" y1="2160" y2="2160" x1="4128" />
            <wire x2="4112" y1="1088" y2="1104" x1="4112" />
            <wire x2="4176" y1="1088" y2="1088" x1="4112" />
            <wire x2="4176" y1="1088" y2="1632" x1="4176" />
            <wire x2="4192" y1="1632" y2="1632" x1="4176" />
            <wire x2="4128" y1="1632" y2="2160" x1="4128" />
            <wire x2="4176" y1="1632" y2="1632" x1="4128" />
        </branch>
        <instance x="3408" y="4224" name="XLXI_30" orien="R0" />
        <branch name="XLXN_61(15:0)">
            <wire x2="3328" y1="3712" y2="3904" x1="3328" />
            <wire x2="3408" y1="3904" y2="3904" x1="3328" />
            <wire x2="4608" y1="3712" y2="3712" x1="3328" />
            <wire x2="4608" y1="2096" y2="2096" x1="4528" />
            <wire x2="4608" y1="2096" y2="3712" x1="4608" />
        </branch>
        <branch name="XLXN_62(15:0)">
            <wire x2="4288" y1="3968" y2="3968" x1="3856" />
            <wire x2="4288" y1="3936" y2="3968" x1="4288" />
            <wire x2="4736" y1="3936" y2="3936" x1="4288" />
        </branch>
    </sheet>
</drawing>