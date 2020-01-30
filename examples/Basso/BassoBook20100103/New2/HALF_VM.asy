Version 4
SymbolType BLOCK
RECTANGLE Normal 96 80 -96 -80
WINDOW 3 2 96 Center 0
WINDOW 0 3 -97 Center 0
SYMATTR Value HALF_VM
SYMATTR Prefix X
SYMATTR SpiceLine REF=2.5 PERIOD=5U DUTYMAX=0.8  IMAX=2.5V VOUTHI=15V ROUT=10 VHIGH=3
SYMATTR SpiceLine2 ISINK=15M ISOURCE=500U VLOW=100M POLE=30 GAIN=31622 DUTYMIN=0.1 VOUTLO=100M
PIN 96 -48 RIGHT 8
PINATTR PinName OUT1
PINATTR SpiceOrder 1
PIN 96 -16 RIGHT 8
PINATTR PinName GNF
PINATTR SpiceOrder 2
PIN 96 16 RIGHT 8
PINATTR PinName OUT2
PINATTR SpiceOrder 3
PIN 96 48 RIGHT 8
PINATTR PinName GND
PINATTR SpiceOrder 4
PIN -96 -48 LEFT 8
PINATTR PinName COMP
PINATTR SpiceOrder 5
PIN -96 -16 LEFT 8
PINATTR PinName FB
PINATTR SpiceOrder 6
PIN -96 16 LEFT 8
PINATTR PinName IMAX
PINATTR SpiceOrder 7
