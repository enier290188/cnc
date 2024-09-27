%
O2004
(1-8 ROUND HEAD PLUG)
(TO1 = 80* Rough Turning Tool, Insert: 02-0083, Tool Holder: 01-0263, Tool Nose Radius: .0315, Tool Tip: 3)
(T02 = 35* Finish Turning Tool, Insert: 02-0108, Tool Holder: 01-0271, Tool Nose Radius: .0157, Tool Tip: 3)
(T03 = 60* Threading Tool, Insert: 02-0475, Tool Holder: 01-0118)
(G54 X0.0 is at the center of rotation)
(Z0.0 is on face of the part)
G00 G18 G20 G40 G80 G99 (Safe startup)
G28
M31



M00
(OP 1: LEFT PART)

M01
(ROUGHING)
T0101 (Select tool 01 and offset 01)
G50 S1018 (Limit spindle to 1018RPM)
G96 S400 M03 (CSS on, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G71 P10 Q20 U0.02 W0.01 D.05 F0.008
N10 G00 G42 X-0.062 Z0.1 (Cutter comp on)
G01 Z0.0 (P0)
X0.81 (P1)
X0.85 Z-0.02 (P2)
Z-0.95 (P3)
G02 X0.95 Z-1.0 R0.05 (P4)
G01 X1.2 (P5)
G03 X1.3 Z-1.05 R0.05 (P6)
G01 Z-2.05 (P7)
X1.6
N20 G00 G40 Z0.1 (Cutter comp off)
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M01
(FINISHING)
T0202 (Select tool 02 and offset 02)
G50 S890 (Limit spindle to 890RPM)
G96 S350 M03 (CSS on, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G70 P10 Q20 F0.002
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)



M00
(OP 2: RIGHT PART)

M01




M33
M30 (End program)
%