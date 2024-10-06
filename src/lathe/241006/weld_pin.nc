%
O2007
(1/2-13 WELD PIN)
(TO1 = 80* Rough Turning Tool, Insert: 02-0083, Tool Holder: 01-0263, Tool Nose Radius: .0315, Tool Tip: 3)
(T03 = 60* Threading Tool, Insert: 02-0475, Tool Holder: 01-0118)
(T12 = Cutoff Tool, Insert: 02-0494, Tool Holder: 01-0151 01-0155)
(G54 X0.0 is at the center of rotation)
(Z0.0 is on face of the part)
G00 G18 G20 G40 G80 G99 (Safe startup)
G28
M31

M00
(OP 1)
(ROUGHING)
T0101 (Select tool 01 and offset 01)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.5 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S900 (CSS on)
G71 P10 Q20 U0.01 W0.005 D0.05 F0.010
N10 G00 G42 X-0.062 Z0.1 (Cutter comp on)
G01 Z0.0 (P0)
X0.42928932 (P1)
X0.5 Z-0.03535534 (P2)
Z-2.097 (P3)
X1.5
N20 G00 G40 Z0.1 (Cutter comp off)
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M00
(OP 2)
(FINISHING)
T0101 (Select tool 01 and offset 01)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.5 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S900 (CSS on)
G70 P10 Q20 F0.008
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M00
(OP 3)
(THREADING)
T0303 (Select tool 03 and offset 03)
G50 S1000 (Limit spindle to 1000RPM)
G97 S1000 M03 (CSS off, Spindle on CW)
G00 G54 X1.5 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G00 X0.6
M24
G76 X0.4069 Z-1.5 K0.043075 D0.01076875 F0.07692308
(END CUTTING BLOCKS)
G97 S1000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M00
(OP 4)
(CUT OFF)
T1212 (Select tool 12 and offset 12)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.5 Z0.1 (Rapid to 1st position)
Z-2.097
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S490 M03 (CSS on, Spindle on CW)
G01 X1.4 F0.005
M01
G75 X0.0 I0.005
G01 X1.4
G00 X1.5
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M33
M30 (End program)
%