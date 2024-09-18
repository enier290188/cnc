%
O20012
(STEP SHAFT HAND PROGRAM)
(CREATED BY NICK HARRISON 09/17/2024 01:57)

G00 G18 G20 G40 G80 G99 (SOP SAFETY LINE)

(6061 AL DX2. DZ3.1)
(T0101: 80* ROUGH TURNING TOOL F.01)
(T0202: 35* FINISH TURNING TOOL F.005)
(OP1: TURNING REAR | OP2: TURNING FRONT)
G28
M31




(T0101: 80* ROUGH TURNING TOOL F.01)
(OP2: ROUGHING)
T0101
G50 S3000
G96 S800 M03
G00 G54 X2.3 Z0.1
M08
G01 G42 X2.2 Z0.1 F0.01
Z-1.5
X2.3
Z.1
X2.1
Z-1.5
X2.2
Z.1
X2.
Z-1.5
X2.2
Z.1
X1.98
Z-1.5
X2.2
Z.1
X1.9
Z-1.5
X2.2
Z.1
X1.8
Z-1.5
X2.2
Z.1
X1.7
Z-1.5
X2.2
Z.1
X1.6
Z-1.5
X2.2
Z.1
X1.5
Z-1.45
X2.2
Z.1
X1.4
Z-1.
X2.2
Z.1
X1.3
Z-1.
X2.2
Z.1
X1.2
Z-1.
X2.2
Z.1
X1.1
Z-1.
X2.2
Z.1
X1.
Z-.95
X2.2
Z.1
X.9
Z-.5
X2.2
Z.1
X.8
Z-.5
X2.2
Z.1
X.7
Z-.5
X2.2
Z.1
X.6
Z-.5
X2.2
Z.1
X.5
Z-.45
X2.2 
G01 G40 X2.5
M09
M05
G28


(SOP END OF PROGRAM)
M09
M05
G28
M33
M30
%
