%
O2003
(VALVE)
(TO1 = 80* Rough Turning Tool, Insert: 02-0546, Tool Holder: 01-0263, Tool Nose Radius: .0315, Tool Tip: 3)
(T02 = 35* Finish Turning Tool, Insert: 02-0350, Tool Holder: 01-0112, Tool Nose Radius: .0157, Tool Tip: 3)
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
G50 S3500 (Limit spindle to 3500RPM)
G96 S900 M03 (CSS on, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position, P0)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G71 P10 Q20 U0.02 W0.01 D.05 F0.008
N10 G00 G42 X-0.062 Z0.1 (Cutter comp on)
G01 Z0.0
X0.238 (P1)
X0.36 Z-0.061 (P2)
Z-1.194 (P8)
G02 X1.114 Z-1.7261 R0.564 (P9)
G01 X1.415 Z-1.825 (P10)
Z-2.157 (P13)
G00 X1.6
N20 G00 G40 Z0.1 (Cutter comp off)
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)



M00
(OP 2)
(FINISHING)
T0202 (Select tool 02 and offset 02)
G50 S3500 (Limit spindle to 3500RPM)
G96 S1300 M03 (CSS on, Spindle on CW)
G00 G54 X1.6 Z0.1 (Rapid to 1st position, P0)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
(Finish 1)
G70 P10 Q20 F0.004
(Finish 2)
G00 Z-0.239
G00 G42 X0.4 Z-0.239 (Cutter comp on)
G01 X0.36 F0.001 (P3)
X0.32 Z-0.259 (P3-1)
Z-0.468 (P6)
G03 X0.36 Z-0.488 I0.0 K-0.02 (P7)
G01 X0.4
G00 X1.6
Z-0.239
X0.4
G01 X0.36 (P3)
X0.28 Z-0.279 (P3-2)
X0.28 Z-0.468
X0.32 (P6)
G03 X0.36 Z-0.488 I0.0 K-0.02 (P7)
G01 X0.4
G00 X1.6
Z-0.239
X0.4
G01 X0.36 (P3)
X0.238 Z-0.3 (P4)
Z-0.468 (P5)
X0.32 (P6)
G03 X0.36 Z-0.488 I0.0 K-0.02 (P7)
G01 X0.4
G00 G40 X1.6 (Cutter comp off)
(Finish 3)
G00 Z-1.98
G00 G42 X1.455 Z-1.98 (Cutter comp on)
G01 X1.415 F0.001 (P11)
X1.375 Z-2.0 (P12)
Z-2.157 (P13)
X1.455
G00 G40 X1.6 (Cutter comp off)
G00 Z0.1
(Finish All)
G00 G42 X-0.062 Z0.1 (Cutter comp on)
G01 Z0.0 F0.005
X0.238 (P1)
X0.36 Z-0.061 (P2)
Z-0.239 (P3)
X0.238 Z-0.3 (P4)
Z-0.468 (P5)
X0.32 (P6)
G03 X0.36 Z-0.488 I0.0 K-0.02 (P7)
G01 Z-1.194 (P8)
G02 X1.114 Z-1.7261 R0.564 (P9)
G01 X1.415 Z-1.825 (P10)
Z-1.98 (P11)
X1.375 Z-2.0 (P12)
Z-2.157 (P13)
X1.455
G00 X1.6
G00 G40 Z0.1 (Cutter comp off)
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)



M00
(OP 3)
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