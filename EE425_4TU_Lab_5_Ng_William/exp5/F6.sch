<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_10" />
        <signal name="B" />
        <signal name="C" />
        <signal name="D" />
        <signal name="XLXN_36" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_50" />
        <signal name="XLXN_53" />
        <signal name="XLXN_16" />
        <signal name="XLXN_58" />
        <signal name="XLXN_17" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="F6" />
        <signal name="XLXN_66" />
        <signal name="XLXN_67" />
        <signal name="XLXN_68" />
        <signal name="XLXN_69" />
        <signal name="XLXN_70" />
        <signal name="XLXN_71" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_74" />
        <signal name="XLXN_75" />
        <signal name="XLXN_76" />
        <signal name="A" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_14" />
        <signal name="XLXN_15" />
        <signal name="XLXN_82" />
        <signal name="XLXN_83" />
        <signal name="XLXN_84" />
        <signal name="XLXN_1" />
        <signal name="XLXN_3" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_89" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_92" />
        <signal name="XLXN_11" />
        <signal name="XLXN_94" />
        <signal name="XLXN_95" />
        <signal name="XLXN_96" />
        <signal name="XLXN_97" />
        <signal name="XLXN_98" />
        <signal name="XLXN_99" />
        <signal name="XLXN_100" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="F6" />
        <port polarity="Input" name="A" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
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
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_12">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_16" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_13">
            <blockpin signalname="XLXN_26" name="I0" />
            <blockpin signalname="XLXN_25" name="I1" />
            <blockpin signalname="F6" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_25" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="XLXN_23" name="I0" />
            <blockpin signalname="XLXN_22" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_15">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_17">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_14">
            <blockpin signalname="XLXN_15" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_16" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_16">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_14" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="XLXN_14" name="I0" />
            <blockpin signalname="D" name="I1" />
            <blockpin signalname="XLXN_15" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_11">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <branch name="B">
            <wire x2="320" y1="1040" y2="1040" x1="176" />
            <wire x2="320" y1="1040" y2="1984" x1="320" />
            <wire x2="800" y1="1984" y2="1984" x1="320" />
            <wire x2="1840" y1="976" y2="976" x1="320" />
            <wire x2="320" y1="976" y2="1040" x1="320" />
        </branch>
        <branch name="D">
            <wire x2="384" y1="720" y2="720" x1="160" />
            <wire x2="592" y1="720" y2="720" x1="384" />
            <wire x2="1264" y1="720" y2="720" x1="592" />
            <wire x2="1296" y1="720" y2="720" x1="1264" />
            <wire x2="1296" y1="720" y2="832" x1="1296" />
            <wire x2="1344" y1="832" y2="832" x1="1296" />
            <wire x2="1264" y1="720" y2="1136" x1="1264" />
            <wire x2="1472" y1="1136" y2="1136" x1="1264" />
            <wire x2="592" y1="720" y2="1616" x1="592" />
            <wire x2="1104" y1="1616" y2="1616" x1="592" />
            <wire x2="384" y1="720" y2="2256" x1="384" />
            <wire x2="768" y1="2256" y2="2256" x1="384" />
        </branch>
        <branch name="C">
            <wire x2="256" y1="608" y2="608" x1="160" />
            <wire x2="496" y1="608" y2="608" x1="256" />
            <wire x2="912" y1="608" y2="608" x1="496" />
            <wire x2="1328" y1="608" y2="608" x1="912" />
            <wire x2="1328" y1="608" y2="720" x1="1328" />
            <wire x2="1344" y1="720" y2="720" x1="1328" />
            <wire x2="912" y1="608" y2="1200" x1="912" />
            <wire x2="960" y1="1200" y2="1200" x1="912" />
            <wire x2="496" y1="608" y2="1552" x1="496" />
            <wire x2="1104" y1="1552" y2="1552" x1="496" />
            <wire x2="256" y1="608" y2="1520" x1="256" />
            <wire x2="1072" y1="1520" y2="1520" x1="256" />
            <wire x2="1072" y1="1520" y2="2192" x1="1072" />
            <wire x2="1120" y1="2192" y2="2192" x1="1072" />
        </branch>
        <branch name="F6">
            <wire x2="3136" y1="896" y2="896" x1="2976" />
        </branch>
        <iomarker fontsize="28" x="3136" y="896" name="F6" orien="R0" />
        <branch name="A">
            <wire x2="752" y1="352" y2="352" x1="160" />
            <wire x2="752" y1="352" y2="1408" x1="752" />
            <wire x2="896" y1="1408" y2="1408" x1="752" />
            <wire x2="1472" y1="352" y2="352" x1="752" />
            <wire x2="1472" y1="352" y2="464" x1="1472" />
            <wire x2="2192" y1="464" y2="464" x1="1472" />
        </branch>
        <iomarker fontsize="28" x="160" y="352" name="A" orien="R180" />
        <iomarker fontsize="28" x="160" y="608" name="C" orien="R180" />
        <iomarker fontsize="28" x="160" y="720" name="D" orien="R180" />
        <iomarker fontsize="28" x="176" y="1040" name="B" orien="R180" />
        <instance x="1728" y="864" name="XLXI_6" orien="R0" />
        <instance x="1344" y="864" name="XLXI_15" orien="R0" />
        <instance x="1344" y="752" name="XLXI_17" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="1648" y1="720" y2="720" x1="1568" />
            <wire x2="1648" y1="720" y2="736" x1="1648" />
            <wire x2="1728" y1="736" y2="736" x1="1648" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="1648" y1="832" y2="832" x1="1568" />
            <wire x2="1648" y1="800" y2="832" x1="1648" />
            <wire x2="1728" y1="800" y2="800" x1="1648" />
        </branch>
        <instance x="1840" y="1104" name="XLXI_14" orien="R0" />
        <instance x="960" y="1232" name="XLXI_16" orien="R0" />
        <instance x="1472" y="1264" name="XLXI_5" orien="R0" />
        <branch name="XLXN_14">
            <wire x2="1472" y1="1200" y2="1200" x1="1184" />
        </branch>
        <branch name="XLXN_15">
            <wire x2="1776" y1="1168" y2="1168" x1="1728" />
            <wire x2="1776" y1="1040" y2="1168" x1="1776" />
            <wire x2="1840" y1="1040" y2="1040" x1="1776" />
        </branch>
        <instance x="1120" y="2320" name="XLXI_1" orien="R0" />
        <instance x="1504" y="2112" name="XLXI_2" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1120" y1="2256" y2="2256" x1="992" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1440" y1="2224" y2="2224" x1="1376" />
            <wire x2="1440" y1="2048" y2="2224" x1="1440" />
            <wire x2="1504" y1="2048" y2="2048" x1="1440" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1504" y1="1984" y2="1984" x1="1024" />
        </branch>
        <instance x="1488" y="1536" name="XLXI_4" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1488" y1="1408" y2="1408" x1="1120" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1472" y1="1584" y2="1584" x1="1360" />
            <wire x2="1488" y1="1472" y2="1472" x1="1472" />
            <wire x2="1472" y1="1472" y2="1584" x1="1472" />
        </branch>
        <instance x="1984" y="1808" name="XLXI_11" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1760" y1="1440" y2="1440" x1="1744" />
            <wire x2="1760" y1="1440" y2="1680" x1="1760" />
            <wire x2="1984" y1="1680" y2="1680" x1="1760" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1776" y1="2016" y2="2016" x1="1760" />
            <wire x2="1984" y1="1744" y2="1744" x1="1776" />
            <wire x2="1776" y1="1744" y2="2016" x1="1776" />
        </branch>
        <instance x="896" y="1440" name="XLXI_9" orien="R0" />
        <instance x="800" y="2016" name="XLXI_10" orien="R0" />
        <instance x="768" y="2288" name="XLXI_8" orien="R0" />
        <instance x="1104" y="1680" name="XLXI_3" orien="R0" />
        <instance x="2400" y="1520" name="XLXI_12" orien="R0" />
        <branch name="XLXN_16">
            <wire x2="2112" y1="1008" y2="1008" x1="2096" />
            <wire x2="2112" y1="1008" y2="1392" x1="2112" />
            <wire x2="2400" y1="1392" y2="1392" x1="2112" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="2256" y1="1712" y2="1712" x1="2240" />
            <wire x2="2400" y1="1456" y2="1456" x1="2256" />
            <wire x2="2256" y1="1456" y2="1712" x1="2256" />
        </branch>
        <instance x="2192" y="592" name="XLXI_7" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="2000" y1="768" y2="768" x1="1984" />
            <wire x2="2192" y1="528" y2="528" x1="2000" />
            <wire x2="2000" y1="528" y2="768" x1="2000" />
        </branch>
        <instance x="2720" y="992" name="XLXI_13" orien="R0" />
        <branch name="XLXN_25">
            <wire x2="2464" y1="496" y2="496" x1="2448" />
            <wire x2="2464" y1="496" y2="864" x1="2464" />
            <wire x2="2720" y1="864" y2="864" x1="2464" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2672" y1="1424" y2="1424" x1="2656" />
            <wire x2="2720" y1="928" y2="928" x1="2672" />
            <wire x2="2672" y1="928" y2="1424" x1="2672" />
        </branch>
    </sheet>
</drawing>