%
O1001
(MILL HP 1)
(STOCK 6061AL DX 3.50IN DY 2.50IN DZ 0.75IN, AFTER SQUARING THE BLOCK)
(WCS G54 FRONT-LEFT-TOP)
(T01 = 1/2"  END MILL  03-0086)
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
G01 Z-0.32 F108.0
G41 D01 X0.8 (Cutter comp on)
Y0.25
X0.25
Y2.25
X3.5 (Mandatory, because the circular motion will not cut a part in the top-right)
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



M33
M30
%