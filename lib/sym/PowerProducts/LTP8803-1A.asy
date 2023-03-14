Version 4
SymbolType CELL
RECTANGLE Normal 160 144 -160 -336
TEXT 0 -157 Center 2 LT
TEXT 0 -103 Center 2 LTP8803-1A
WINDOW 0 0 -214 Center 2
WINDOW 39 2 112 Center 1
SYMATTR SpiceLine VIN_ON=40 VIN_OFF=30 TON_RISE=100u TON_DELAY=10u VOUT_SCALE_LOOP=(1/2.3) VOUT_COMMAND=1.15
SYMATTR SpiceModel LTP8803-1A
SYMATTR Prefix X
SYMATTR Description 54V to Core Voltage 160A DC/DC Module Regulator with PMBus Interface
SYMATTR ModelFile LTP8803-1A.sub
SYMATTR SpiceLine2 NM_DIGFILT_POLE_SETTING=68 NM_DIGFILT_ZERO_SETTING=226 NM_DIGFILT_HF_GAIN_SETTING=109 NM_DIGFILT_LF_GAIN_SETTING = 12, FREQUENCY_SWITCH=600k
PIN -160 64 LEFT 8
PINATTR PinName ISHARE
PINATTR SpiceOrder 2
PIN 160 -160 RIGHT 8
PINATTR PinName Vs+
PINATTR SpiceOrder 5
PIN 160 -48 RIGHT 8
PINATTR PinName Vs-
PINATTR SpiceOrder 6
PIN 160 64 RIGHT 8
PINATTR PinName SYNC
PINATTR SpiceOrder 7
PIN -160 -48 LEFT 8
PINATTR PinName 3V3
PINATTR SpiceOrder 8
PIN -160 -160 LEFT 8
PINATTR PinName 7V0
PINATTR SpiceOrder 10
PIN 160 -272 RIGHT 8
PINATTR PinName Vout
PINATTR SpiceOrder 11
PIN 0 144 BOTTOM 8
PINATTR PinName GND
PINATTR SpiceOrder 19
PIN -160 -272 LEFT 8
PINATTR PinName Vin
PINATTR SpiceOrder 22
