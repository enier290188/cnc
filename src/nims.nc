%
O1002
G28
M31


M00
(OP 1, ROUGHING)
T0101
G00 G18 G20 G40 G80 G99
G50 S2500
G97 S2000 M03
G00 G54 X3.0 Z0.1 (Pi)
M08
(...)
G96 S700
G71 P10 Q20 U0.01 W0.005 D0.05 F0.010
N10 G00 G42 X-0.063 Z0.1
G01 Z0.0 (P0)
X0.86728 (P1)
X0.938 Z-0.03536 (P2)
Z-0.589 (P3)
X1.108 Z-1.009 (P4)
Z-1.977 (P5)
X1.24 (P6)
G03 X1.6 Z-2.648 R0.18 (P7)
G01 X1.6 Z-2.842 (P8)
X2.112 (P9)
X3.0 (Pe)
N20 G00 G40 Z0.1
(...)
G97 S2000
G00 Z0.1 M09
G53 G00 X0.0
G53 G00 Z0.0 M05


M00
(OP 2, FINISHING)
T0202
G00 G18 G20 G40 G80 G99
G50 S2500
G97 S2000 M03
G00 G54 X3.0 Z0.1 (Pi)
M08
(...)
G96 S1400
G70 P10 Q20 F0.005
(...)
G97 S2000
G00 Z0.1 M09
G53 G00 X0.0
G53 G00 Z0.0 M05


M33
M30
%