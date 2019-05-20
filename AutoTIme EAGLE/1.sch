<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="6" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="relay" urn="urn:adsk.eagle:library:339">
<description>&lt;b&gt;Relays&lt;/b&gt;&lt;p&gt;
&lt;ul&gt;
&lt;li&gt;Eichhoff
&lt;li&gt;Finder
&lt;li&gt;Fujitsu
&lt;li&gt;HAMLIN
&lt;li&gt;OMRON
&lt;li&gt;Matsushita
&lt;li&gt;NAiS
&lt;li&gt;Siemens
&lt;li&gt;Schrack
&lt;/ul&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="AQE" urn="urn:adsk.eagle:footprint:24070/1" library_version="4">
<description>&lt;b&gt;SOLID STATE RELAY&lt;/b&gt; NAiS&lt;p&gt;
Source: http://www.mew-europe.com/..  en_ds_61610_0000.pdf</description>
<wire x1="-13.3" y1="2.37" x2="-11.43" y2="2.37" width="0.2032" layer="51"/>
<wire x1="-10.16" y1="2.37" x2="-7.62" y2="2.37" width="0.2032" layer="51"/>
<wire x1="-7.62" y1="2.37" x2="6.35" y2="2.37" width="0.2032" layer="21"/>
<wire x1="6.35" y1="2.37" x2="8.89" y2="2.37" width="0.2032" layer="51"/>
<wire x1="8.89" y1="2.37" x2="11.43" y2="2.37" width="0.2032" layer="21"/>
<wire x1="13.97" y1="2.37" x2="14.5" y2="2.37" width="0.2032" layer="21"/>
<wire x1="14.5" y1="2.37" x2="14.5" y2="-2.43" width="0.2032" layer="21"/>
<wire x1="14.5" y1="-2.43" x2="-13.3" y2="-2.43" width="0.2032" layer="21"/>
<wire x1="-13.3" y1="-2.43" x2="-13.3" y2="0.22" width="0.2032" layer="21"/>
<wire x1="-13.3" y1="0.22" x2="-13.3" y2="2.37" width="0.2032" layer="51"/>
<wire x1="-11.43" y1="2.37" x2="-10.16" y2="2.37" width="0.2032" layer="21"/>
<wire x1="11.43" y1="2.37" x2="13.97" y2="2.37" width="0.2032" layer="51"/>
<pad name="4-" x="12.7" y="1.27" drill="1.6" shape="octagon"/>
<pad name="3+" x="7.66" y="1.27" drill="1.6" shape="octagon"/>
<pad name="I+" x="-8.72" y="1.27" drill="1.2" shape="octagon"/>
<pad name="I-" x="-12.5" y="1.27" drill="1.2" shape="octagon"/>
<text x="-13.3423" y="-4.4475" size="1.397" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.715" y="-4.4465" size="1.397" layer="27" ratio="10">&gt;VALUE</text>
</package>
</packages>
<packages3d>
<package3d name="AQE" urn="urn:adsk.eagle:package:24381/1" type="box" library_version="4">
<description>SOLID STATE RELAY NAiS
Source: http://www.mew-europe.com/..  en_ds_61610_0000.pdf</description>
<packageinstances>
<packageinstance name="AQE"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="PHOTOTRIAC" urn="urn:adsk.eagle:symbol:24062/1" library_version="4">
<wire x1="-5.08" y1="2.54" x2="-5.08" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-7.62" y1="5.08" x2="-7.62" y2="2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="2.54" x2="-7.62" y2="-2.54" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-2.54" x2="-7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-5.08" x2="7.62" y2="-5.08" width="0.254" layer="94"/>
<wire x1="5.334" y1="2.54" x2="7.874" y2="2.54" width="0.1524" layer="94"/>
<wire x1="5.334" y1="-2.54" x2="7.62" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-5.08" x2="7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="7.62" y1="5.08" x2="-7.62" y2="5.08" width="0.254" layer="94"/>
<wire x1="5.334" y1="2.54" x2="5.334" y2="0.762" width="0.1524" layer="94"/>
<wire x1="5.334" y1="-1.016" x2="5.334" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="2.54" x2="-7.62" y2="2.54" width="0.1524" layer="94"/>
<wire x1="-5.08" y1="-2.54" x2="-7.62" y2="-2.54" width="0.1524" layer="94"/>
<wire x1="-2.54" y1="0.762" x2="-0.254" y2="-0.508" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="-0.508" x2="-0.254" y2="1.27" width="0.2032" layer="94"/>
<wire x1="-0.254" y1="1.27" x2="1.651" y2="0" width="0.2032" layer="94"/>
<text x="-7.62" y="6.35" size="1.778" layer="95" font="vector">&gt;NAME</text>
<text x="-7.62" y="-7.62" size="1.778" layer="96" font="vector">&gt;VALUE</text>
<rectangle x1="-6.35" y1="-1.016" x2="-3.81" y2="-0.762" layer="94"/>
<rectangle x1="3.556" y1="0.508" x2="7.112" y2="0.762" layer="94"/>
<rectangle x1="3.556" y1="-1.016" x2="7.112" y2="-0.762" layer="94"/>
<pin name="A" x="-10.16" y="2.54" visible="pad" length="short" direction="pas"/>
<pin name="K" x="-10.16" y="-2.54" visible="pad" length="short" direction="pas"/>
<pin name="DS1" x="10.16" y="2.54" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<pin name="DS2" x="10.16" y="-2.54" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
<polygon width="0.1524" layer="94">
<vertex x="-6.35" y="1.016"/>
<vertex x="-3.81" y="1.016"/>
<vertex x="-5.08" y="-0.762"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="6.096" y="0.508"/>
<vertex x="5.334" y="-0.762"/>
<vertex x="6.858" y="-0.762"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="1.778" y="0.508"/>
<vertex x="1.27" y="-0.254"/>
<vertex x="2.794" y="-0.762"/>
</polygon>
<polygon width="0.1524" layer="94">
<vertex x="4.572" y="-0.762"/>
<vertex x="5.334" y="0.508"/>
<vertex x="3.81" y="0.508"/>
</polygon>
</symbol>
</symbols>
<devicesets>
<deviceset name="AQE*" urn="urn:adsk.eagle:component:24654/1" prefix="K" library_version="4">
<description>&lt;b&gt;SOLID STATE RELAY&lt;/b&gt; NAiS&lt;p&gt;
Source: http://www.mew-europe.com/..  en_ds_61610_0000.pdf</description>
<gates>
<gate name="A" symbol="PHOTOTRIAC" x="0" y="0"/>
</gates>
<devices>
<device name="" package="AQE">
<connects>
<connect gate="A" pin="A" pad="I+"/>
<connect gate="A" pin="DS1" pad="3+"/>
<connect gate="A" pin="DS2" pad="4-"/>
<connect gate="A" pin="K" pad="I-"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:24381/1"/>
</package3dinstances>
<technologies>
<technology name="12105">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="12112">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="12124">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="34205">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="34212">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
<technology name="34224">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="K1" library="relay" library_urn="urn:adsk.eagle:library:339" deviceset="AQE*" device="" package3d_urn="urn:adsk.eagle:package:24381/1" technology="12105"/>
<part name="K2" library="relay" library_urn="urn:adsk.eagle:library:339" deviceset="AQE*" device="" package3d_urn="urn:adsk.eagle:package:24381/1" technology="12105"/>
<part name="K3" library="relay" library_urn="urn:adsk.eagle:library:339" deviceset="AQE*" device="" package3d_urn="urn:adsk.eagle:package:24381/1" technology="12105"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="K1" gate="A" x="60.96" y="55.88" smashed="yes" rot="R180">
<attribute name="NAME" x="68.58" y="49.53" size="1.778" layer="95" font="vector" rot="R180"/>
<attribute name="VALUE" x="68.58" y="63.5" size="1.778" layer="96" font="vector" rot="R180"/>
</instance>
<instance part="K2" gate="A" x="96.52" y="60.96" smashed="yes" rot="R180">
<attribute name="NAME" x="104.14" y="54.61" size="1.778" layer="95" font="vector" rot="R180"/>
<attribute name="VALUE" x="104.14" y="68.58" size="1.778" layer="96" font="vector" rot="R180"/>
</instance>
<instance part="K3" gate="A" x="114.3" y="20.32" smashed="yes" rot="R180">
<attribute name="NAME" x="121.92" y="13.97" size="1.778" layer="95" font="vector" rot="R180"/>
<attribute name="VALUE" x="121.92" y="27.94" size="1.778" layer="96" font="vector" rot="R180"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="N$1" class="0">
<segment>
<pinref part="K1" gate="A" pin="A"/>
<pinref part="K3" gate="A" pin="DS2"/>
<wire x1="71.12" y1="53.34" x2="104.14" y2="53.34" width="0.1524" layer="91"/>
<wire x1="104.14" y1="53.34" x2="104.14" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="K1" gate="A" pin="K"/>
<pinref part="K3" gate="A" pin="DS1"/>
<wire x1="71.12" y1="58.42" x2="86.36" y2="58.42" width="0.1524" layer="91"/>
<wire x1="86.36" y1="58.42" x2="104.14" y2="58.42" width="0.1524" layer="91"/>
<wire x1="104.14" y1="58.42" x2="104.14" y2="17.78" width="0.1524" layer="91"/>
<pinref part="K2" gate="A" pin="DS1"/>
<junction x="86.36" y="58.42"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="K2" gate="A" pin="A"/>
<pinref part="K2" gate="A" pin="K"/>
<wire x1="106.68" y1="58.42" x2="106.68" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="K2" gate="A" pin="DS2"/>
<pinref part="K3" gate="A" pin="K"/>
<wire x1="86.36" y1="63.5" x2="124.46" y2="63.5" width="0.1524" layer="91"/>
<wire x1="124.46" y1="63.5" x2="124.46" y2="22.86" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
