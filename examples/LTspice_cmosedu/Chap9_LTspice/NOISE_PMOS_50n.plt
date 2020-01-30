[Noise Spectral Density - (V/Hz� or A/Hz�)]
{
   Npanes: 1
   {
      traces: 1 {524290,0,"log10(V(onoise)*V(onoise))"}
      X: ('G',0,1,0,1e+009)
      Y[0]: ('n',1,0,1e-010,1e-009)
      Y[1]: ('_',0,1e+308,0,-1e+308)
      Units: "" ('n',0,0,1,0,1e-010,1e-009)
      Log: 1 0 0
      GridStyle: 1
      Arrow: "" 1 0 (3.21297647092976,-21.577380952381) (1.06829914279387,-20.0277777777778)
      Arrow: "" 1 0 (1183930.60856862,-21.7519841269841) (207848.587551971,-23.4325396825397)
      Text: "" 1 (19.9868286622903,-21.6865079365079) ;Corresponds to 10e-20 A*A/Hz PSD or,
      Text: "" 1 (23.837364419941,-22.0575396825397) ;since the load is 1 ohm, 10e-20 V*V/Hz PSD
      Text: "" 1 (1443460.44820527,-21.4900793650794) ;1/f noise corner at 200 kHz
   }
}
