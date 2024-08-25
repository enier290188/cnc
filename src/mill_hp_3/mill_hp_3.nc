%
O1001
(MILL HP 3)
(STOCK 6061AL DX 3.625IN DY 3.000IN DZ 1.000IN)
(T01 = 1/2"  END MILL  03-0086)
(T07 = 1/4"  DRILL     03-0094)
(T08 = 5/16" DRILL     03-0018)
(T10 = 2.0"  FACE MILL 01-0001)
G17 G20 G40 G49 G80
G28
M31



M00
(OP 1)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0"  FACE MILL 01-0001)
(SQUARE BLOCK, FACE DX 3.625IN TO DX 3.500IN)
M01
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S6000 M03 (Spindle on CW)
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
(T10 = 2.0"  FACE MILL 01-0001)
(SQUARE BLOCK, FACE DY 3.000IN TO DY 2.500IN)
M01
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S6000 M03 (Spindle on CW)
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
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off) 
G53 Y0.0 (Y home)



M00
(OP 3)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0"  FACE MILL 01-0001)
(SQUARE BLOCK, FACE DZ 1.000IN TO DY 0.750IN)
M01
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S6000 M03 (Spindle on CW)
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
(OP 4)
(WCS G54 FRONT-LEFT-TOP)
(T01 = 1/2"  END MILL  03-0086)
(T07 = 1/4"  DRILL     03-0094)
(T08 = 5/16" DRILL     03-0018)

(PROFILE)
M01
T01 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-1.0 Y-1.0 (Rapid to 1st position)
S10000 M03 (Spindle on CW)
G43 H01 Z0.1 (Activate tool offset T01)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.325 F108.0
G41 D01 X0.8 (Cutter comp on)
Y0.25
X0.25
Y2.25
X3.5 (Mandatory, because the circular motion will not cut a space in the top-right)
X2.75 (Going back)
G02 X3.25 Y1.75 R0.5 (CW circular motion)
G01 Y0.25
X0.8
X0.0 Y0.7695
G40 X-1.0 (Cutter comp off)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off) 
G53 Y0.0 (Y home)

(DRILL HOLD 'A')
M01
T07 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X0.8 Y1.75 (Rapid to 1st position)
S9550 M03 (Spindle on CW)
G43 H07 Z0.1 (Activate tool offset T07)
M08 (Coolant on)
(BEGIN CUTTING)
G81 G98 Z-0.45 F85.95 (Drill hole at current X Y location, Z Axis returns to the starting position)
G80 (Cancel drilling cycle)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off) 
G53 Y0.0 (Y home)

(DRILL HOLD 'B')
M01
T08 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X2.775 Y0.65 (Rapid to 1st position)
S4015 M03 (Spindle on CW)
G43 H08 Z0.1 (Activate tool offset T08)
M08 (Coolant on)
(BEGIN CUTTING)
G81 G98 Z-0.35 F28.506 (Drill hole at current X Y location, Z Axis returns to the starting position)
G80 (Cancel drilling cycle)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off) 
G53 Y0.0 (Y home)



M33
M30
%