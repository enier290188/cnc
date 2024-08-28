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



M00
(OP 2)
(WCS G54 BACK-LEFT-TOP)
(T10 = 2.0"  FACE MILL   01-0001)

(FACE BOTTOM)
M01



M33
M30
%