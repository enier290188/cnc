%
O2007
(1/2-13 WELD PIN)
(T03 = 60* Threading Tool, Insert: 02-0475, Tool Holder: 01-0118)
(G54 X0.0 is at the center of rotation)
(Z0.0 is on face of the part)
G00 G18 G20 G40 G80 G99 (Safe startup)
G28
M31

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
M23
G76 X0.4069 Z-1.5 K0.043075 D0.01076875 F0.07692308
(END CUTTING BLOCKS)
G97 S1000 (CSS off)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

M33
M30 (End program)
%