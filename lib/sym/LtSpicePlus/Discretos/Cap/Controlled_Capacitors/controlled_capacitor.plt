[Transient Analysis]
{
   Npanes: 2
   Active Pane: 1
   {
      traces: 3 {524290,0,"V(1)"} {524291,0,"V(cv)"} {34603012,1,"I(C1)"}
      X: (' ',1,0,0.2,2)
      Y[0]: (' ',1,1,0.1,2)
      Y[1]: (' ',1,-0.2,0.2,1.8)
      Volts: (' ',0,0,1,1,0.1,2)
      Amps: (' ',0,0,1,-0.2,0.2,1.8)
      Log: 0 0 0
      GridStyle: 1
      Text: "W" 3 (0.267605633802817,1.78172588832487) ;current due to
      Text: "W" 3 (0.253521126760563,1.69035532994924) ;increasing C
   },
   {
      traces: 1 {524293,0,"I(C1)*V(1)"}
      X: (' ',1,0,0.2,2)
      Y[0]: (' ',1,0,0.3,3)
      Y[1]: (' ',1,1e+308,0.2,-1e+308)
      Units: "W" (' ',0,0,1,0,0.3,3)
      Log: 0 0 0
      GridStyle: 1
      Text: "W" 3 (0.267605633802817,1.27461139896373) ;increasing C
      Text: "W" 3 (0.323943661971831,1.55440414507772) ;mech.Power due to
   }
}