Version 4
SymbolType BLOCK
LINE Normal -80 16 -64 -16
LINE Normal 64 -32 64 -16
LINE Normal 64 32 64 16
LINE Normal -64 32 -64 16
LINE Normal -64 -32 -64 -16
LINE Normal 80 16 64 16
LINE Normal 73 20 64 -16
LINE Normal 68 0 -72 0 2
WINDOW 39 0 -55 Center 0
WINDOW 40 2 54 Center 0
WINDOW 0 -27 -2 Left 0
SYMATTR SpiceLine TURN_ON=1
SYMATTR SpiceLine2 TURN_OFF=2
SYMATTR Prefix X
SYMATTR SpiceModel TCS
SYMATTR Description TIME CONTROLLED SWITCH
SYMATTR ModelFile time_switch.LIB
PIN -64 -32 LEFT 8
PINATTR PinName 1
PINATTR SpiceOrder 1
PIN -64 32 LEFT 8
PINATTR PinName 2
PINATTR SpiceOrder 2
PIN 64 -32 RIGHT 8
PINATTR PinName 3
PINATTR SpiceOrder 3
PIN 64 32 RIGHT 8
PINATTR PinName 4
PINATTR SpiceOrder 4
