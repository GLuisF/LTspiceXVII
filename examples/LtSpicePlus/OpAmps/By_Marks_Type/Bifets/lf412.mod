*//////////////////////////////////////////////////////////////////////
* (C) National Semiconductor, Inc.
* Models developed and under copyright by:
* National Semiconductor, Inc.  

*/////////////////////////////////////////////////////////////////////
* Legal Notice: This material is intended for free software support.
* The file may be copied, and distributed; however, reselling the 
*  material is illegal

*////////////////////////////////////////////////////////////////////
* For ordering or technical information on these models, contact:
* National Semiconductor's Customer Response Center
*                 7:00 A.M.--7:00 P.M.  U.S. Central Time
*                                (800) 272-9959
* For Applications support, contact the Internet address:
*  amps-apps@galaxy.nsc.com
* ///////////////////////////////////////////////////////////////////
* User Notes:
*
* 1. Input resistance (Rin) for these JFET op amps is 1TOhm.  Rin is
*    modeled by assuming the option GMIN=1TOhm.  If a different (non-
*    default) GMIN value is needed, users may recalculate as follows:
*    Rin=(R1||GMIN+R2||GMIN), where R1=R2,
*    to maintain a consistent Rin model.

*//////////////////////////////////////////////////////////
*LF412 LOW OFFSET, LOW DRIFT DUAL JFET INPUT OP-AMP MODEL
*//////////////////////////////////////////////////////////
*
* connections:    non-inverting input
*                 |   inverting input
*                 |   |   positive power supply
*                 |   |   |   negative power supply
*                 |   |   |   |   output
*                 |   |   |   |   |
*                 |   |   |   |   |
.SUBCKT LF412/NS  1   2  99  50  28
*
*Features:
*Fast settling time (.01%) =           2uS
*High bandwidth =                     3MHz
*High slew rate =                   10V/uS
*Low offset voltage =                  1mV
*Low supply current =                1.8mA
*NOTE: Model is for single device only and simulated
*      supply current is 1/2 of total device current.
*
****************INPUT STAGE************** 
*
IOS 2 1 25.0P
*^Input offset current
CI1 1 0 3P
CI2 2 0 3P
R1 1 3 1E12
R2 3 2 1E12
I1 99 4 1.0M
J1 5 2 4 JX
J2 6 7 4 JX
R3 5 50 650
R4 6 50 650
*Fp2=28 MHZ
C4 5 6 4.372P 
*
***********COMMON MODE EFFECT***********
*
I2 99 50 800UA
*^Quiescent supply current
EOS 7 1 POLY(1) 16 49 1E-3 1
*Input offset voltage.^
R8 99 49 80K
R9 49 50 80K
*
*********OUTPUT VOLTAGE LIMITING********
V2 99 8 2.13
D1 9 8 DX
D2 10 9 DX
V3 10 50 2.13
*
**************SECOND STAGE**************
*
EH 99 98 99 49 1
G1 98 9 5 6 20E-3
R5 98 9 10MEG
VA3 9 11 0
*Fp1=18 HZ
C3 98 11 857.516P
*
***************POLE STAGE***************
*
*Fp=30 MHz
G3 98 15 9 49 1E-6
R12 98 15 1MEG
C5 98 15 5.305E-15
*
*********COMMON-MODE ZERO STAGE*********
*
G4 98 16 3 49 1E-8
L2 98 17 144.7M
R13 17 16 1K
*
**************OUTPUT STAGE**************
*
F6  99 50 VA7 1
F5  99 23 VA8 1
D5  21 23 DX
VA7 99 21 0
D6  23 99 DX
E1  99 26 99 15 1
VA8 26 27 0
R16 27 28 50
V5  28 25 0.646V
D4  25 15 DX
V4  24 28 0.646V
D3  15 24 DX
*
***************MODELS USED**************
*
.MODEL DX D(IS=1E-15)
.MODEL JX PJF(BETA=1.183E-3 VTO=-.65 IS=50E-12)
*
.ENDS
*$
