*
.SUBCKT PBSS5220T 1 2 3
*
* housing parasitics
LBlead 11 111 3.5E-10
LE 2 22 1.12E-09
LC 3 33 2.3E-10
LBbond 1 11 9E-10
CBCG 33 111 6.2E-14
CBEG 22 111 4.5E-14
CCEG 22 33 6.2E-14
*
Q1 33 111 22 PBSS5220T
*
.MODEL PBSS5220T PNP
+ IS = 9.07E-13
+ NF = 0.9965
+ ISE = 1.41E-14
+ NE = 1.329
+ BF = 412
+ IKF = 2.8
+ VAF = 20
+ NR = 0.9963
+ ISC = 2.47E-14
+ NC = 1.168
+ BR = 250
+ IKR = 0.53
+ VAR = 11
+ RB = 12
+ IRB = 0.001
+ RBM = 4.6
+ RE = 0.035
+ RC = 0.026
+ XTB = 0
+ EG = 1.11
+ XTI = 3
+ CJE = 2.793E-10
+ VJE = 0.9448
+ MJE = 0.4405
+ TF = 1.15E-09
+ XTF = 30
+ VTF = 0.6
+ ITF = 1.7
+ PTF = 0
+ CJC = 1.258E-10
+ VJC = 0.5079
+ MJC = 0.349
+ XCJC = 1
+ TR = 1.3E-08
+ CJS = 0
+ VJS = 0.75
+ MJS = 0.333
+ FC = 0.78
.ENDS
