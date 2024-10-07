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