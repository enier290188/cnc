%
O1030
(SLOT ASSEMBLY 1.1)
(Author: Enier Ramos)
(STOCK 6061AL DX 3.3IN DY 1.8IN DZ 0.6IN, AFTER SQUARING THE BLOCK)
(T01 = 1/2"  END MILL    03-0086)
(T02 = 1/4"  END MILL    03-0083)
(T05 = 1/4"  SPOT DRILL  03-2222)
(T10 = 2.0"  FACE MILL   01-0001)
(T16 = 1/4"  REAMER      03-0650)
(T22 = .238" B DRILL     03-0259, 135 Point Angle)
G17 G20 G40 G49 G80
G28
M31



M00
(OP 1)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0"  FACE MILL   01-0001)

(FACE TOP)
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S5800 M03 (Spindle on CW)
G43 H10 Z0.1 (Activate tool offset T10)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.0 F25.0
X6.0
Y-1.0
X-2.5
Y-2.0
X6.0
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(PROFILE)
T01 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-1.0 Y-1.0 (Rapid to 1st position)
S10000 M03 (Spindle on CW)
G43 H01 Z0.1 (Activate tool offset T01)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.600 F108.0
(1ST LAP)
G41 D01 Y-0.05 (Cutter comp on)
X3.35
Y-1.85
X0.05
Y1.0
G40 X-1.0 (Cutter comp off)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)



M00
(OP 2)
(WCS G54 BACK-LEFT-TOP)
(T01 = 1/2"  END MILL    03-0086)
(T02 = 1/4"  END MILL    03-0083)
(T05 = 1/4"  SPOT DRILL  03-2222)
(T16 = 1/4"  REAMER      03-0650)
(T22 = .238" B DRILL     03-0259, 135 Point Angle)

(SPOT DRILLS)
T05 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X1.65 Y-0.3 (Rapid to 1st position)
S3820 M03 (Spindle on CW)
G43 H05 Z0.1 (Activate tool offset T05)
M08 (Coolant on)
(BEGIN CUTTING)
G81 G99 Z-0.05 P0.5 R0.25 F11.46 (Spot drill at current X Y location)
X1.65 Y-1.5
G80 (Cancels all active canned cycles)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(DRILL HOLES)
T22 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X1.65 Y-0.3 (Rapid to 1st position)
S2000 M03 (Spindle on CW)
G43 H22 Z0.1 (Activate tool offset T22)
M08 (Coolant on)
(BEGIN CUTTING)
G83 G99 Z-0.6493 R0.25 Q0.15 F8.0 (Drill hole at current X Y location. Z=0.6+0.0493)
X1.65 Y-1.5
G80 (Cancels all active canned cycles)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off) 
G53 Y0.0 (Y home)

(REAM HOLES)
T16 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X1.65 Y-0.3 (Rapid to 1st position)
S3820 M03 (Spindle on CW)
G43 H16 Z0.1 (Activate tool offset T16)
M08 (Coolant on)
(BEGIN CUTTING)
G85 G99 Z-0.6 R0.25 F11.46 (Ream hole at current X Y location)
X1.65 Y-1.5
G80 (Cancels all active canned cycles)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(1ST POCKET MILLING)
T02 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X0.75 Y-0.451 (Rapid to 1st position)
S10000 M03 (Spindle on CW)
G43 H02 Z0.1 (Activate tool offset T02)
M08 (Coolant on)
(BEGIN CUTTING)
G01 X0.75 Y-1.349 Z0.0 F50.0
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.025
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.05
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.075
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.1
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.125
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.15
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.175
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.2
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.225
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.25
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.275
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.3
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.325
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.35
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.375
X0.75 Y-0.451
X0.75 Y-1.349 Z-0.4
X0.75 Y-0.451
G41 D02 X0.551 Y-1.334 (Cutter comp on)
G01 Y-1.349
G03 X0.949 I0.199 J0.0 (CW circular motion)
G01 Y-0.451
G03 X0.551 I-0.199 J0.0 (CW circular motion)
G01 Y-1.349
G03 X0.949 I0.199 J0.0 (CW circular motion)
G40 G01 X0.75 Y-0.451 (Cutter comp off)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(2ND POCKET MILLING)
T02 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X1.801 Y-0.9 (Rapid to 1st position)
S10000 M03 (Spindle on CW)
G43 H02 Z0.1 (Activate tool offset T02)
M08 (Coolant on)
(BEGIN CUTTING)
G01 X2.799 Y-0.9 Z0.0 F50.0
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.025
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.05
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.075
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.1
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.125
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.15
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.175
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.2
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.225
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.25
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.275
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.3
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.325
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.35
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.375
X1.801 Y-0.9
X2.799 Y-0.9 Z-0.4
X1.801 Y-0.9
G41 D02 X2.784 Y-1.149 (Cutter comp on)
G01 X2.799
G03 Y-0.651 I0.0 J0.249 (CW circular motion)
G01 X1.801
G03 Y-1.149 I0.0 J-0.249 (CW circular motion)
G01 X2.799
G03 Y-0.651 I0.0 J0.249 (CW circular motion)
G40 G01 X1.801 Y-0.9 (Cutter comp off)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)



M00
(OP 3)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0"  FACE MILL   01-0001)

(FACE BOTTOM)
T10 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-2.5 Y0.0 (Rapid to 1st position)
S5800 M03 (Spindle on CW)
G43 H10 Z0.1 (Activate tool offset T10)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.0 F25.0
X6.0
Y-1.0
X-2.5
Y-2.0
X6.0
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)



M33
M30
%