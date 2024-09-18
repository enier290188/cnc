%
O20012
(STEP SHAFT HAND PROGRAM)
(TO1 = 80* Rough Turning Tool,  Insert Number: 02-0546, Tool Holder: 01-0263, Tool Nose Radius: .0315, Tool Tip: 3)
(T02 = 35* Finish Turning Tool, Insert Number: 02-0350, Tool Holder: 01-0112, Tool Nose Radius: .0157, Tool Tip: 3)
G00 G18 G20 G40 G80 G99 (Safe startup)
G28
M31



(G54 X0.0 is at the center of rotation)
(Z0.0 is on face of the part)

(ROUGHING)
T0101 (Select tool 01 and offset 01)
G50 S3000 (Limit spindle to 3000RPM)
G96 S800 M03 (CSS on, Spindle on CW)
G00 G54 X2.1 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G71 P10 Q20 U0.02 W0.01 D.05 F0.01
N10 G01 G42 X-0.062 Z0.1 (Cutter comp on)
Z0.0
X0.45 
X0.5 Z-0.025
Z-0.45
G02 X0.6 Z-0.5 R0.05
G01 X0.9
G03 X1.0 Z-0.55 R0.05
G01 Z-0.95
G02 X1.1 Z-1.0 R0.05
G01 X1.4
G03 X1.5 Z-1.05 R0.05
G01 Z-1.45
G02 X1.6 Z-1.5 R0.05
G01 X1.84
G03 X1.94 Z-1.55 R0.05
G01 Z-1.6 
N20 G01 G40 X2.1 (Cutter comp off)
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)

(FINISHING)
T0202 (Select tool 02 and offset 02)
G50 S3000 (Limit spindle to 3000RPM)
G96 S800 M03 (CSS on, Spindle on CW)
G00 G54 X2.1 Z0.1 (Rapid to 1st position)
M08 (Coolant on)
(BEGIN CUTTING BLOCKS)
G70 P10 Q20 F0.005
(END CUTTING BLOCKS)
G00 Z0.1 M09 (Rapid retract, coolant off)
G53 G00 X0.0 (X home)
G53 G00 Z0.0 M05 (Z home, spindle off)



M33
M30 (End program)
%