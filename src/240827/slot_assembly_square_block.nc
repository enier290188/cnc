%
O1001
(MILL HP 1)
(STOCK 6061AL DX 3.5IN DY 2.0IN DZ 1.0IN)
(T10 = 2.0" FACE MILL 01-0001)
G17 G20 G40 G49 G80
G28
M31



M00
(OP 1)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0" FACE MILL 01-0001)
(SQUARE BLOCK 1 and 4, FACE DZ 1.0IN TO DZ 0.6IN)
M01
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S5800 M03 (Spindle on CW)
G43 H10 Z0.1 (Activate tool offset T10)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.001 F25.0
X6.0
Y-1.0
X-2.5
Y-2.0
X6.0
Y-3.0
X-2.5
Y-4.0
X6.0
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)



M00
(OP 2)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0" FACE MILL 01-0001)
(SQUARE BLOCK 2 and 3, FACE DY 2.0IN TO DY 1.8IN)
M01
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S5800 M03 (Spindle on CW)
G43 H10 Z0.1 (Activate tool offset T10)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.001 F25.0
X6.0
Y-1.0
X-2.5
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)



M00
(OP 3)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0" FACE MILL 01-0001)
(SQUARE BLOCK 5 and 6, FACE DX 3.5IN TO DX 3.3IN)
M01
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S5800 M03 (Spindle on CW)
G43 H10 Z0.1 (Activate tool offset T10)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.001 F25.0
X6.0
Y-1.0
X-2.5
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)



M33
M30
%