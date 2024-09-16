%
O1001
(MILL HP 3)
(Author: Enier Ramos)
(STOCK 6061AL DX 3.50IN DY 2.50IN DZ 0.75IN, AFTER SQUARING THE BLOCK)
(WCS G54 FRONT-LEFT-TOP)
(T01 = 1/2"  END MILL    03-0086)
(T02 = 3/8"  END MILL    03-0085)
(T05 = 1/4"  SPOT DRILL  03-2222)
(T07 = 1/4"  DRILL       03-0094, 140 Point Angle)
(T08 = 5/16" DRILL       03-0018, 140 Point Angle)
G17 G20 G40 G49 G80
G28
M31



(PROFILE)
T01 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X-1.0 Y-1.0 (Rapid to 1st position)
S10000 M03 (Spindle on CW)
G43 H01 Z0.1 (Activate tool offset T01)
M08 (Coolant on)
(BEGIN CUTTING)
G01 Z-0.325 F108.0
(1ST LAP)
G41 D01 X0.25 (Cutter comp on)
Y2.25
X3.25
Y0.25
X0.25
(2ND LAP)
Y2.25
X2.75
G02 X3.25 Y1.75 R0.5 (CW circular motion)
G01 Y0.25
X0.8
X0.25 Y0.6072
X0.0 Y0.7695
G40 X-1.0 (Cutter comp off)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(SPOT DRILL)
T05 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X0.8 Y1.75 (Rapid to 1st position)
S3820 M03 (Spindle on CW)
G43 H05 Z0.1 (Activate tool offset T05)
M08 (Coolant on)
(BEGIN CUTTING)
G81 G99 Z-0.05 P0.5 R0.25 F11.46 (Spot drill at current X Y location)
X2.775 Y0.65
G80 (Cancels all active canned cycles)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(DRILL HOLD 'A')
T07 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X0.8 Y1.75 (Rapid to 1st position)
S3820 M03 (Spindle on CW)
G43 H07 Z0.1 (Activate tool offset T07)
M08 (Coolant on)
(BEGIN CUTTING)
G83 G99 Z-0.5222 R0.25 Q0.15 F7.64 (Drill hole at current X Y location. Z=0.45+0.0722)
G80 (Cancels all active canned cycles)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(DRILL HOLD 'B')
T08 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X2.775 Y0.65 (Rapid to 1st position)
S3050 M03 (Spindle on CW)
G43 H08 Z0.1 (Activate tool offset T08)
M08 (Coolant on)
(BEGIN CUTTING)
G83 G99 Z-0.4402 R0.25 Q0.15 F6.1 (Drill hole at current X Y location. Z=0.35+0.0902)
G80 (Cancels all active canned cycles)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off)
G53 Y0.0 (Y home)

(POCKET MILLING. POINT 'C' TO POINT 'D')
T02 M06
G00 G90 G17 G40 G49 G54 (Safe startup)
G00 G54 X1.7 Y1.6 (Rapid to 1st position)
S10000 M03 (Spindle on CW)
G43 H02 Z0.1 (Activate tool offset T02)
M08 (Coolant on)
(BEGIN CUTTING)
G01 X1.7 Y0.9 Z0.0 F40.0
X1.7 Y1.6
X1.7 Y0.9 Z-0.025
X1.7 Y1.6
X1.7 Y0.9 Z-0.05
X1.7 Y1.6
X1.7 Y0.9 Z-0.075
X1.7 Y1.6
X1.7 Y0.9 Z-0.1
X1.7 Y1.6
X1.7 Y0.9 Z-0.125
X1.7 Y1.6
X1.7 Y0.9 Z-0.15
X1.7 Y1.6
X1.7 Y0.9 Z-0.175
X1.7 Y1.6
X1.7 Y0.9 Z-0.2
X1.7 Y1.6
X1.7 Y0.9 Z-0.225
X1.7 Y1.6
X1.7 Y0.9 Z-0.25
X1.7 Y1.6
X1.7 Y0.9 Z-0.275
X1.7 Y1.6
X1.7 Y0.9 Z-0.3
X1.7 Y1.6
G41 D02 X1.5 Y0.915 (Cutter comp on)
G01 Y0.9
G03 X1.7 Y0.7 R0.2 (CW circular motion)
G03 X1.9 Y0.9 R0.2 (CW circular motion)
G01 Y1.6
G03 X1.7 Y1.8 R0.2 (CW circular motion)
G03 X1.5 Y1.6 R0.2 (CW circular motion)
G01 Y0.9
G03 X1.7 Y0.7 R0.2 (CW circular motion)
G03 X1.9 Y0.9 R0.2 (CW circular motion)
G40 G01 X1.7 Y1.6 (Cutter comp off)
(END CUTTING)
G00 Z0.1 M09 (Rapid retract, Coolant off)
G53 G49 Z0.0 M05 (Z home, Spindle off) 
G53 Y0.0 (Y home)



M33
M30
%