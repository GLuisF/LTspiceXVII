Version 4
SymbolType CELL
LINE Normal -64 32 64 32
LINE Normal -64 32 -64 192
LINE Normal -64 192 64 192
LINE Normal 64 192 64 32
LINE Normal -64 88 -48 96
LINE Normal -64 104 -48 96
LINE Normal -64 128 -96 128
LINE Normal -64 96 -96 96
LINE Normal 64 80 96 80
LINE Normal 64 144 96 144
LINE Normal -64 64 -96 64
LINE Normal -64 160 -96 160
LINE Normal 64 135 64 144
LINE Normal 80 144 64 135
TEXT -40 96 Left 0 C1
WINDOW 0 -16 16 Left 0
WINDOW 3 -43 208 Left 0
SYMATTR Value CD4013B
SYMATTR Prefix X
SYMATTR SpiceModel VDD 0
SYMATTR Description D-type filp-flop wit set and reset; positive edge triggered
SYMATTR SpiceLine VDD=5  SPEED=1.0  TRIPDT=5e-9
SYMATTR ModelFile ../sym/EXTRA/CD4000/CD4000.lib
PIN -96 64 LEFT 40
PINATTR PinName S
PINATTR SpiceOrder 1
PIN -96 96 NONE 46
PINATTR PinName C1
PINATTR SpiceOrder 2
PIN -96 128 LEFT 40
PINATTR PinName 1D
PINATTR SpiceOrder 3
PIN -96 160 LEFT 40
PINATTR PinName R
PINATTR SpiceOrder 4
PIN 96 80 RIGHT 38
PINATTR PinName Q
PINATTR SpiceOrder 5
PIN 96 144 RIGHT 38
PINATTR PinName _Q
PINATTR SpiceOrder 6
