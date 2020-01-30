* BEGIN MODEL LMH6703T
* NOTE  THIS MODEL FOR LMH6703 IN SOT  PACKAGE
* SEE LMH6703C.MOD FOR LMH6703 IN SOIC PACKAGE
*//////////////////////////////////////////////////////////////////////
* (C) National Semiconductor, Corporation.
* Models developed and under copyright by:
* National Semiconductor, Corporation.  
*/////////////////////////////////////////////////////////////////////
* Legal Notice:  
* The model may be copied, and distributed without any modifications;
* however, reselling or licensing the material is illegal.
* We reserve the right to make changes to the model without prior notice. 
* Pspice Models are provided "AS IS, WITH NO WARRANTY OF ANY KIND" 
*////////////////////////////////////////////////////////////////////
* LMH6703T SPICE MODEL PERFORMANCE
*/////////////////////////////////
* MODEL FEATURES INCLUDE OUTPUT SWING, OUTPUT CURRENT THRU
* THE SUPPLY RAILS, GAIN AND PHASE, SLEW RATE, SENSITIVITY
* TO R FEEDBACK VALUE, COMMON MODE REJECTION, POWER SUPPLY
* REJECTION ON BOTH RAILS, INPUT VOLTAGE NOISE WITH 1/F,
* POSITIVE INPUT CURRENT NOISE WITH 1/F, NEGATIVE INPUT
* CURRENT NOISE WITH 1/F, INPUT CAPACITANCE, INPUT BIAS
* CURRENT, INPUT COMMON MODE RANGE, INPUT	OFFSET, HIGH
* CLOAD DRIVE CAPABILITY, OUTPUT CLAMPS TO THE RAIL,
* SHUTDOWN, SHUTDOWN THRESHOLD, SHUTDOWN INPUT PIN
* CURRENTS, SHUTDOWN AND ENABLE DELAYS, QUIESCENT SUPPLY
* CURRENT, AND QUIESCENT SUPPLY CURRENT AT SHUTDOWN,
* MODEL TEMP RANGE IS -40 TO +85 DEG C.
*///////////////////////////////////////////////////////////////
* NOTE THAT MODEL IS FUNCTIONAL OVER THIS TEMP RANGE BUT NOT ALL
* PARAMETERS TRACK THOSE OF THE REAL PART.
*////////////////////////////////////////////////////////////////
* PINOUT ORDER +IN -IN +V -V OUT NSD
* PINOUT ORDER  3   4   6  2  1   5
.SUBCKT LMH6703T 3 4 6 2 1 5
Q17 2 7 8 QOP
Q21 6 9 8 QON
D5 10 6 DD
D6 2 10 DD
D7 11 0 DIP
D8 12 0 DIP
I8 0 11 0.1E-3
I9 0 12 0.1E-3
E2 13 0 2 0 1
E3 14 0 6 0 1
D9 15 0 DVN
D10 16 0 DVN
I10 0 15 0.1E-3
I11 0 16 0.1E-3
E4 17 4 15 16 1.05
G2 18 0 11 12 1.5E-3
R22 2 6 100E3
E5 19 0 14 0 1
E6 20 0 13 0 1
E7 21 0 22 0 1
R30 19 23 1E3
R31 20 24 1E3
R32 21 25 1E4
R33 0 23 1
R34 0 24 1
R35 0 25 1
E10 26 18 25 0 1E-6
R36 27 22 1E3
R37 22 28 1E3
C6 19 23 30E-12
C7 20 24 30E-12
C8 21 25 1E-12
E11 29 26 24 0 1.2
E12 30 29 23 0 0.9
Q22 13 31 9 QDP
Q23 14 31 7 QDN
R38 0 32 10
R39 0 31 10
C9 32 0 8E-12
C10 31 0 2.67E-12
E15 33 34 35 0 1
E16 34 36 35 0 1
E17 37 0 34 0 1
D11 38 14 DD
D12 13 39 DD
V11 36 39 2.2
V12 38 33 2.2
I15 0 40 1E-3
D13 40 0 DD
V13 35 40 -0.71465
C11 34 0 1.4E-12
D14 41 42 DD
D15 42 43 DD
R40 42 34 112
R41 0 42 150E3
F1 42 0 V14 -2.09
E18 44 0 30 0 0.998
R42 44 45 30
V14 45 46 0.4E-3
R43 8 47 0.25
G3 32 0 34 0 0.1
G4 31 0 32 0 0.1
C14 8 0 0.2E-12
L1 47 10 4E-9
R45 47 10 400
E20 41 37 35 0 1
E21 43 37 35 0 -1
L2 48 46 1E-9
R46 48 46 50
G5 14 9 49 0 2E-3
G6 7 13 49 0 2E-3
E47 50 34 49 0 30
E48 51 0 49 0 -30
V48 52 51 15
V49 53 50 -15
R126 50 0 1E12
R127 51 0 1E12
M40 0 53 34 54 PSW L=1.5U W=150U
M41 34 52 0 55 NSW L=1.5U
R128 54 0 1E12
R129 55 0 1E12
E49 28 0 18 0 1
E50 27 0 17 0 1
C15 17 0 0.7E-12
C16 30 0 0.7E-12
C17 17 30 0.15E-12
E51 56 48 57 0 30
E52 58 17 57 0 -30
V50 59 58 15
V51 60 56 -15
R130 56 0 1E12
R131 58 0 1E12
M42 17 60 48 61 PSW L=1.5U W=150U
M43 48 59 17 62 NSW L=1.5U
R132 61 0 1E12
R133 62 0 1E12
E53 63 0 49 0 -1
V52 57 63 1
E54 64 10 57 0 30
E55 65 1 57 0 -30
V54 66 65 15
V55 67 64 -15
R136 64 0 1E12
R137 65 0 1E12
M44 1 67 10 68 PSW L=1.5U W=1500U
M45 10 66 1 69 NSW L=1.5U
R138 68 0 1E12
R139 69 0 1E12
D16 70 0 DIN
D17 71 0 DIN
I17 0 70 0.1E-3
I18 0 71 0.1E-3
G7 17 0 70 71 9E-3
I19 18 0 7E-6
I20 4 0 2E-6
E56 72 18 57 0 30
E57 73 3 57 0 -30
V56 74 73 15
V57 75 72 -15
R141 72 0 1E12
R142 73 0 1E12
M46 3 75 18 76 PSW L=1.5U W=150U
M47 18 74 3 77 NSW L=1.5U
R143 76 0 1E12
R144 77 0 1E12
R145 30 22 1E6
C18 48 0 0.3E-12
C19 3 0 0.1E-12
R146 29 30 1E9
R147 26 29 1E9
R148 18 26 1E9
R149 4 17 1E9
R150 34 33 1E9
R151 36 34 1E9
R152 37 0 1E12
R153 0 41 1E12
R154 0 43 1E12
Q24 78 79 80 QSW
R155 78 6 50E3
I21 6 81 90E-6
Q25 82 83 80 QSW
Q26 80 81 2 QSW
Q27 81 81 2 QSW
R156 82 6 50E3
R157 83 6 200E3
Q28 83 83 84 QSW
Q29 84 84 85 QSW
Q30 85 85 86 QSW
Q31 86 86 87 QSW
R158 2 87 200E3
E58 88 0 78 82 1
R159 0 88 200E3
R160 79 6 29E3
M48 49 88 0 0 NEN L=1.5U W=1500U
R161 49 89 50E3
V59 89 0 1
C20 78 82 100E-15
R164 5 79 200
C21 79 0 2E-12
C22 5 0 1E-12
C23 49 0 50E-15
C24 1 0 0.1E-12
R165 0 1 26E6
G8 6 2 49 0 8.8E-3
R166 0 57 1E9
R167 0 35 1E12
J1 17 90 17 JC
J2 18 90 18 JC
J3 91 17 91 JC
J4 91 18 91 JC
V61 14 91 3.6
V62 90 13 3.6
C25 4 1 0.02E-12
I23 6 2 -100E-6
I24 79 0 -67E-6
.MODEL QON NPN VAF=150 BF=110 IKF=0.45 RE=0.5 RC=0.5
.MODEL QOP PNP VAF=150 BF=110 IKF=0.45 RE=0.5 RC=0.5
.MODEL QDP PNP
.MODEL QDN NPN
.MODEL JC NJF RS=1000 IS=1E-18
.MODEL DD D
.MODEL DC D IS=5.002E-16
.MODEL DVN D KF=6.5E-16
.MODEL DIN D KF=3.8E-15
.MODEL DIP D KF=4.3E-15
.MODEL PSW PMOS KP=200U VTO=-7.5 IS=1E-18
.MODEL NSW NMOS KP=200U VTO=7.5 IS=1E-18
.MODEL QSW NPN
.MODEL NEN NMOS KP=200U VTO=0.5 IS=1E-18
.ENDS
* END MODEL LMH6703T
