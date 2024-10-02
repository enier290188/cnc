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
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S900 (CSS on)
G71 P10 Q20 U0.02 W0.01 D0.05 F0.008
N10 G00 G42 X-0.062 Z0.1 (Cutter comp on)
G01 Z0.0 (P0)
X0.8218 (P1)
X0.85 Z-0.0141 (P2)
Z-0.95 (P3)
G02 X0.95 Z-1.0 R0.05 (P4)
G01 X1.2 (P5)
G03 X1.3 Z-1.05 R0.05 (P6)
G01 Z-2.05 (P7)
X1.6
N20 G00 G40 Z0.1 (Cutter comp off)
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M01
(FINISHING)
T0202 (Select tool 02 and offset 02)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S1295 (CSS on)
G70 P10 Q20 F0.001
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)



M00
(OP 2: RIGHT PART)

M01
(ROUGHING)
T0101 (Select tool 01 and offset 01)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S900 (CSS on)
G71 P30 Q40 U0.02 W0.01 D0.05 F0.008
N30 G00 G42 X-0.062 Z0.1 (Cutter comp on)
G01 Z0.0 (K0)
X0.8 (K1)
X0.9414 Z-0.0707 (K2)
Z-1.0 (K3)
X1.2 (K4)
G03 X1.3 Z-1.05 R0.05 (K5)
G01 X1.6
N40 G00 G40 Z0.1 (Cutter comp off)
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M01
(FINISHING)
T0202 (Select tool 02 and offset 02)
G50 S2500 (Limit spindle to 2500RPM)
G97 S2000 M03 (CSS off, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G96 S1295 (CSS on)
(Finish 1)
G70 P30 Q40 F0.001
(Finish 2)
G00 X1.6 Z-0.745
X1.3
G71 P50 Q60 U0.02 W0.01 D0.02 F0.001
N50 G00 G42 X1.1 Z-0.745 (Cutter comp on)
G01 Z-0.755 (Q0)
G01 X0.9414 (Q1)
X0.8 Z-0.8257 (Q2)
Z-0.95 (Q3)
G02 X0.9 Z-1.0 R0.05 (Q4)
G01 X1.3
N60 G00 G40 Z-0.745 (Cutter comp off)
(Finish 3)
G70 P50 Q60 F0.001
(END CUTTING BLOCKS)
G97 S2000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M01
(THREADING)
T0303 (Select tool 03 and offset 03)
G50 S1000 (Limit spindle to 1000RPM)
G97 S1000 M03 (CSS off, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G00 X0.9414
M24
G76 X0.8492 Z-0.9257 K0.07065 D0.0176625 F0.125
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)



M33
M30 (End program)
%