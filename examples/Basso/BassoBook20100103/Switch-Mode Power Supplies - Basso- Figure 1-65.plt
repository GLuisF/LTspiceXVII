[Transient Analysis]
{
   Npanes: 2
   {
      traces: 1 {34603012,0,"I(L1)"}
      X: ('m',1,0,0.0005,0.005)
      Y[0]: (' ',1,-0.2,0.2,2)
      Y[1]: (' ',1,1e+308,0.2,-1e+308)
      Amps: (' ',0,0,1,-0.2,0.2,2)
      Log: 0 0 0
      GridStyle: 1
   },
   {
      traces: 1 {34668546,0,"I(L2)"}
      X: ('m',1,0,0.0005,0.005)
      Y[0]: (' ',1,-0.3,0.3,2.4)
      Y[1]: (' ',1,1e+308,0.2,-1e+308)
      Amps: (' ',0,0,1,-0.2,0.2,2.2)
      Log: 0 0 0
      GridStyle: 1
   }
}
[FFT of time domain data]
{
   Npanes: 1
   {
      traces: 1 {34603010,0,"I(L2)"}
      X: ('M',0,100,0,3.2767e+006)
      Y[0]: (' ',0,3.16227766016838e-007,10,1)
      Y[1]: (' ',0,-200,40,200)
      Log: 1 2 0
      PltMag: 1
   }
}
