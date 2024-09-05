%
O1001
(NIMS PRACTICE)
(Author: Enier Ramos)
(T01 = 1/2"  END MILL    03-0086)
(T02 = 1/4"  END MILL    03-0083)
(T03 = 1/4"  SPOT DRILL  03-2222)
(T04 = .201  #7 DRILL    03-0290, 135 Point Angle)
(T05 = .238" B DRILL     03-0259, 135 Point Angle)
(T06 = .257  F DRILL     03-0263, 135 Point Angle)
(T07 = 5/16  DRILL       03-0356, 135 Point Angle)
(T10 = 2.0"  FACE MILL)
G17 G20 G40 G49 G80
G28
M31



(PROFILE)
(G54 FRONT-LEFT-TOP)
(T01 = 1/2"  END MILL    03-0086)
(T02 = 1/4"  END MILL    03-0083)
(T03 = 1/4"  SPOT DRILL  03-2222)
(T04 = .201  #7 DRILL    03-0290, 135 Point Angle)
(T05 = .238" B DRILL     03-0259, 135 Point Angle)
(T06 = .257  F DRILL     03-0263, 135 Point Angle)
(T07 = 5/16  DRILL       03-0356, 135 Point Angle)
T01 M06
G00 G90 G17 G40 G49 G54
G00 G54 X-1.0 Y-1.0
S10000 M03
G43 H01 Z0.1
M08
G01 Z-0.275 F108.0
G41 D01 X0.3
Y2.1
X3.2
Y0.3
X0.3
Y1.836
G02 X0.564 Y2.1 R0.264
G01 X1.35
G03 X2.15 Y2.1 I0.4 J0.0
G01 X2.865
X3.2 Y1.865
Y0.588
G02 X2.912 Y0.3 R0.288
G01 X1.0
X0.3 Y0.672
X0.0 Y1.8
G40 X-1.0
G00 Z0.1 M09
G53 G49 Z0.0 M05
G53 Y0.0

(SPOT DRILLS)
T03 M06
G00 G90 G17 G40 G49 G54
G00 G54 X0.564 Y1.836 (A)
S5000 M03
G43 H03 Z0.1
M08
G81 G99 Z-0.05 R0.25 F20.
X0.936 Y0.83 (B)
X2.47 Y1.235 (F)
X2.912 Y0.588 (G)
G80
G00 Z0.1 M09
G53 G49 Z0.0 M05
G53 Y0.0

(DRILL A)
T04 M06
G00 G90 G17 G40 G49 G54
G00 G54 X0.564 Y1.836
S3000 M03
G43 H04 Z0.1
M08
G83 G99 Z-0.792 R0.25 Q0.15 F15.0 (Z=0.75+0.042)
G80
G00 Z0.1 M09
G53 G49 Z0.0 M05
G53 Y0.0

(DRILL B)
T05 M06
G00 G90 G17 G40 G49 G54
G00 G54 X0.936 Y0.83
S3000 M03
G43 H05 Z0.1
M08
G83 G99 Z-0.449 R0.25 Q0.15 F15.0 (Z=0.4+0.049)
G80
G00 Z0.1 M09
G53 G49 Z0.0 M05
G53 Y0.0

(DRILL F)
T07 M06
G00 G90 G17 G40 G49 G54
G00 G54 X2.47 Y1.235
S2000 M03
G43 H07 Z0.1
M08
G83 G99 Z-0.49 R0.25 Q0.15 F10.0 (Z=0.425+0.065)
G80
G00 Z0.1 M09
G53 G49 Z0.0 M05
G53 Y0.0

(DRILL G)
T06 M06
G00 G90 G17 G40 G49 G54
G00 G54 X2.912 Y0.588
S3000 M03
G43 H06 Z0.1
M08
G83 G99 Z-0.803 R0.25 Q0.15 F15.0 (Z=0.75+0.053)
G80
G00 Z0.1 M09
G53 G49 Z0.0 M05
G53 Y0.0


(POCKET MILLING)
T02 M06
G00 G90 G17 G40 G49 G54
G00 G54 X1.75 Y1.460
S10000 M03
G43 H02 Z0.1
M08

G01 X1.75 Y0.55 Z0.0 F50.0
X1.75 Y1.460
X1.75 Y0.55 Z-0.025
X1.75 Y1.460
X1.75 Y0.55 Z-0.05
X1.75 Y1.460
X1.75 Y0.55 Z-0.075
X1.75 Y1.460
X1.75 Y0.55 Z-0.1
X1.75 Y1.460

X1.75 Y0.55 Z-0.125
X1.75 Y1.460
X1.75 Y0.55 Z-0.15
X1.75 Y1.460
X1.75 Y0.55 Z-0.175
X1.75 Y1.460
X1.75 Y0.55 Z-0.2
X1.75 Y1.460

X1.75 Y0.55 Z-0.225
X1.75 Y1.460
X1.75 Y0.55 Z-0.25
X1.75 Y1.460
X1.75 Y0.55 Z-0.275
X1.75 Y1.460
X1.75 Y0.55 Z-0.3
X1.75 Y1.460

X1.75 Y0.55 Z-0.325
X1.75 Y1.460
X1.75 Y0.55 Z-0.35
X1.75 Y1.460
X1.75 Y0.55 Z-0.375
X1.75 Y1.460
X1.75 Y0.55 Z-0.4
X1.75 Y1.460

X1.75 Y0.55 Z-0.425
X1.75 Y1.460

G41 D02 X1.575 Y0.56
G01 Y0.55 (P1)
G03 X1.925 I0.175 J0.0 (P2)
G01 Y1.46 (P3)
G03 X1.575 I-0.175 J0.0 (P4)
G01 Y0.55 (P1)
G03 X1.925 I0.175 J0.0 (P2)

G40 G01 X1.75 Y1.460
G00 Z0.1 M09
G53 G49 Z0.0 M05
G53 Y0.0



M33
M30
%