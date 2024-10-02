%
O2004
(1-8 ROUND HEAD PLUG: 03 RIGHT PART)
(T03 = 60* Threading Tool, Insert: 02-0475, Tool Holder: 01-0118)
(G54 X0.0 is at the center of rotation)
(Z0.0 is on face of the part)
G00 G18 G20 G40 G80 G99 (Safe startup)
G28
M31



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