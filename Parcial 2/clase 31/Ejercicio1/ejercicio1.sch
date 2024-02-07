<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
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
            <blockpin name="I0" />
            <blockpin name="I1" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_2">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin name="O" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1840" y="1104" name="XLXI_2" orien="R0" />
        <instance x="1472" y="1088" name="XLXI_3" orien="R0" />
        <instance x="1440" y="1008" name="XLXI_1" orien="R0" />
        <branch name="XLXN_4">
            <wire x2="1712" y1="912" y2="912" x1="1696" />
            <wire x2="1712" y1="912" y2="976" x1="1712" />
            <wire x2="1712" y1="976" y2="976" x1="1696" />
            <wire x2="1696" y1="976" y2="992" x1="1696" />
            <wire x2="1776" y1="992" y2="992" x1="1696" />
            <wire x2="1776" y1="976" y2="992" x1="1776" />
            <wire x2="1840" y1="976" y2="976" x1="1776" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1712" y1="1056" y2="1056" x1="1696" />
            <wire x2="1840" y1="1040" y2="1040" x1="1712" />
            <wire x2="1712" y1="1040" y2="1056" x1="1712" />
        </branch>
    </sheet>
</drawing>