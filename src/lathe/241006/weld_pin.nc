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



M01
(ROUGHING)
T0101 (Select tool 01 and offset 01)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S900 (CSS on)
G71 P10 Q20 U0.01 W0.005 D0.05 F0.010
N10 G00 G42 X-0.062 Z0.1 (Cutter comp on)
G01 Z0.0 (K0)
X0.8 (K1)
X0.9414 Z-0.0707 (K2)
Z-1.0 (K3)
X1.2 (K4)
G03 X1.3 Z-1.05 R0.05 (K5)
G01 X1.6
N20 G00 G40 Z0.1 (Cutter comp off)
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M01
(FINISHING)
T0101 (Select tool 01 and offset 01)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S900 (CSS on)
G70 P30 Q40 F0.008
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M00
(CUT OFF)
T1212 (Select tool 12 and offset 12)
G50 S2500 (Limit spindle to 2500RPM)
G96 S490 M03 (CSS on, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position, P0)
Z-2.157
X1.455
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G01 X1.375 F0.005
G75 X0.0 I0.005
G01 X1.455
G00 X1.6
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)



M33
M30 (End program)
%