<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="B" />
        <signal name="A" />
        <signal name="Z" />
        <signal name="C" />
        <signal name="X" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="A" />
        <port polarity="Output" name="Z" />
        <port polarity="Input" name="C" />
        <port polarity="Output" name="X" />
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
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="Z" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="A" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="X" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="624" y="448" name="XLXI_1" orien="R0" />
        <instance x="624" y="720" name="XLXI_2" orien="R0" />
        <instance x="192" y="624" name="XLXI_3" orien="R0" />
        <branch name="B">
            <wire x2="608" y1="320" y2="320" x1="336" />
            <wire x2="624" y1="320" y2="320" x1="608" />
        </branch>
        <branch name="A">
            <wire x2="480" y1="384" y2="384" x1="336" />
            <wire x2="608" y1="384" y2="384" x1="480" />
            <wire x2="624" y1="384" y2="384" x1="608" />
            <wire x2="480" y1="384" y2="656" x1="480" />
            <wire x2="624" y1="656" y2="656" x1="480" />
        </branch>
        <branch name="Z">
            <wire x2="912" y1="352" y2="352" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="352" name="Z" orien="R0" />
        <iomarker fontsize="28" x="336" y="320" name="B" orien="R180" />
        <iomarker fontsize="28" x="336" y="384" name="A" orien="R180" />
        <branch name="C">
            <wire x2="192" y1="592" y2="592" x1="160" />
        </branch>
        <iomarker fontsize="28" x="160" y="592" name="C" orien="R180" />
        <branch name="X">
            <wire x2="912" y1="624" y2="624" x1="880" />
        </branch>
        <iomarker fontsize="28" x="912" y="624" name="X" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="624" y1="592" y2="592" x1="416" />
        </branch>
    </sheet>
</drawing>