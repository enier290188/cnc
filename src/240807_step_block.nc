%
O4002
(STEP BLOCK [CUTTER COMP])
G17 G20 G40 G49 G80 (CANCEL ANY PREVIOUS OPERATIONS)
(STOCK 6061AL DX 3.8IN DY 1.8N DZ 0.9IN)
(WCS G54 FRONT LEFT/TOP)
(1/2" END MILL W/3 FLUTES; T01)
(PROFILING STEP BLOCK)
G28
M31

(START PROFILE)
T01 M06
G90 G54 G00 X-1.0 Y-1.0 S10000 M03
G43 H01 Z0.1 M08
G01 Z-0.4 F108.0
G41 D01 X0.2
Y1.6
X3.6
Y0.2
X-1.0
G40 Y-1.0
G00 Z1.0 M09
(END PROFILE)

M05
M33
M30
%