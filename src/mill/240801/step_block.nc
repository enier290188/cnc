﻿%
O4001
(STEP BLOCK)
G17 G20 G40 G49 G80 (CANCEL ANY PREVIOUS OPERATIONS)
(STOCK 6061AL DX 4.125IN DY 2.0IN DZ 1.0IN)
(WCS G54 FRONT LEFT/TOP)
(1/2" ENDMILL W/3 FLUTES; T01)
(FACING AND PROFILING STEP BLOCK)
G28
M31
M06 T01
M03 S10000
G90 G54 G00 X-1.0 Y0.0
G43 H01 Z1.0
G00 Z0.0
(START FACE)
M08
G01 F108.0
X4.26
Y0.25
X-0.26
Y0.5
X4.26
Y0.75
X-0.26
Y1.0
X4.26
Y1.25
X-.26
Y1.5
X4.26
Y1.75
X-0.26
Y2.0
X4.26
M09
(END FACE)
G00 Z1.0
X4.05 Y3.0
Z-0.4
(START PROFILE)
M08
G01 F108.0
Y-0.05
X-0.05
Y2.05
X5.0
M09
(END PROFILE)
G00 Z1.0
M05
M33
M30
%
