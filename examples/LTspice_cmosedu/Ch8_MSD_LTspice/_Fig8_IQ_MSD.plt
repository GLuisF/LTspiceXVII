[Transient Analysis]
{
   Npanes: 3
   Active Pane: 2
   {
      traces: 2 {524291,0,"V(quad_f)"} {524292,0,"V(v_iq)"}
      X: ('�',0,0,1e-006,1.24393000686621e-005)
      Y[0]: ('m',0,-0.15,0.03,0.18)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.15,0.03,0.18)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524290,0,"V(inphase_f)"} {524294,0,"V(vaq)"}
      X: ('�',0,0,1e-006,1.24393000686621e-005)
      Y[0]: ('m',0,-0.12,0.02,0.12)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.12,0.02,0.12)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 2 {524293,0,"V(vai)"} {524291,0,"V(quad_f)"}
      X: ('�',0,0,1e-006,1.24393000686621e-005)
      Y[0]: ('m',0,-0.24,0.04,0.24)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Volts: ('m',0,0,0,-0.24,0.04,0.24)
      Log: 0 0 0
      GridStyle: 1
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"V(v_in_phase)"}
      X: ('G',0,40000,0,1.31068e+009)
      Y[0]: (' ',0,1e-007,10,1)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      GridStyle: 1
      PltMag: 1
   }
}
