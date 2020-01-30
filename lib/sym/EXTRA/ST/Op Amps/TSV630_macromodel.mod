****************************************************************************
*
* WARNING : please consider following remarks before usage
*
* 1) All models are a tradeoff between accuracy and complexity (ie. simulation
*    time).
*
* 2) Macromodels are not a substitute to breadboarding, they rather confirm the
*    validity of a design approach and help to select surrounding component values.
*
* 3) A macromodel emulates the NOMINAL performance of a TYPICAL device within
*    SPECIFIED OPERATING CONDITIONS (ie. temperature, supply voltage, etc.).
*    Thus the macromodel is often not as exhaustive as the datasheet, its goal
*    is to illustrate the main parameters of the product.
*
* 4) Data issued from macromodels used outside of its specified conditions
*    (Vcc, Temperature, etc) or even worse: outside of the device operating
*    conditions (Vcc, Vicm, etc) are not reliable in any way.
*
****************************************************************************
****
***  TSV630  (WITH STAND-BY)  Spice macromodel subckt 
***  Version 2.0  (February 2010) (last update: 05-10-2010)
****                      
************ CONNECTIONS: 
****             INVERTING INPUT
****              |  NON-INVERTING INPUT
****              |   |  OUTPUT 
****              |   |   |  POSITIVE POWER SUPPLY
****              |   |   |   |  NEGATIVE POWER SUPPLY 
****              |   |   |   |   |     STAND-BY 
****              |   |   |   |   |     |
.SUBCKT TSV630   VM  VP  VS  VCCP VCCN  STB
    FIOUT 0 VZOUT VREADIO 1.0
    LOUT VZOUT 0 {Lout}
    S_SW_OUT     VS_STB VS VSTB_CTRL 0     SW_OUT
    S_SW_LEAK    VS 0 VSTB_CTRL 0          SW_LEAK
    S_SW_VB2_VS  VB_2 NET0220 VSTB_CTRL 0  SW_VB2_VS
    S_SW_VB_VREF VB NET0224 VSTB_CTRL 0    SW_VB_VREF
    G_IEE_STB VEE_N VCCN_ENHANCED POLY(2) VSTB_CTRL 0 IEE_val 0 0 0 0 0 1
    G_ICC_STB VCCP VCCN POLY(2) VSTB_CTRL 0 Icc_val 0 0 0 0 0 1
    G_IOUT_SINKED VCCN 0 VALUE={IF(I(VreadIo)>0, 0, I(VreadIo))}
    G2_ICC_STB VCCP VCCN VALUE={ICC_STB*( 1-V(VSTB_ctrl) )}
    G_ICCSAT_OUTHIGH VCCP VCCN VALUE={IF(I(V_OUTVLIM_HIGH)>1u ,
+V(Icc_out_high)*V(VSTB_ctrl), 0)}
    
    *G_IIB_VP VREF VP TABLE {V(Vccp,Vccn)} = (+1.8 1p) (+3.3 1p) (+5.0 1p)
    G_IIB_VP VREF VP VALUE={1p}
        
    G_ICCSAT_OUTLOW VCCP VCCN VALUE={IF(I(V_OUTVLIM_LOW)>1u ,
+V(Icc_out_low)*V(VSTB_ctrl) , 0)}
    G_I_IO VB_2 VREF VALUE={V(VB_Vref)*GB*( 10*( 1 -
+exp(-abs(V(v_Io_val))/3m )) )  }
    G_ISTB 0 STB VALUE={ Iil_STB*(1-V(VSTB_one)) -Iih_STB*V(VSTB_one)}
    G_IOUT_SOURCED VCCP 0 VALUE={IF(I(VreadIo)>0, I(VreadIo),0)}
    GM1 VREF VB VOUT_DIFF__SR_VCC 0 {1/RD}
    G_I_VB VB_2 VREF VB_VREF 0 {GB}
    
    *G_IIB_VM VREF VM TABLE {V(Vccp,Vccn)} = (+1.8 1p) (+3.3 1p) (+5.0 1p)
    G_IIB_VM VREF VM VALUE={1p}
    
    RIN_DIFF VP VM 1T
    RD1 VCCP_ENHANCED VO_DIFF_PLUS {RD}
    RD2 VCCP_ENHANCED VO_DIFF_MINUS {RD}
    R1_REF NET287 NET247 1Meg
    R_ICCSAT_HIGH ICC_OUT_HIGH 0 1K
    RPROT_IN_M_VCCN VCCN NET243 15K
    R2_REF NET247 NET241 1Meg
    ROUT NET0584 VZOUT {Rout}
    RPROT_IN_P_VCCN NET406 VCCN 15K
    RSTB_CTRL VSTB_CTRL VSTB_ONE {RSTB_ctrl}
    RIN_CM_VP VREF VP {RIN_CM_VP}
    RIN_CM_VM VREF VM {RIN_CM_VM}
    RO2_2 VB_3 VB_2 {Ro2_2}
    R_ICCSAT_LOW ICC_OUT_LOW 0 1K
    RPROT_IN_M_VCCP VCCP NET253 100
    RPROT_IN_P_VCCP NET421 VCCP 100
    RZOUT_IOUT_COEFF VZOUT_IOUT_COEFF NET0363 50
    RO2_1 VB_2 VREF {Ro2_1}
    EZOUT VB_3 NET0242
+VALUE={V(VZout)*V(VZout_Iout_coeff)*V(VZout_Vcc_coeff)}
    
    *E3 VIL_STB_VAL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , {0.5/1.8} , 5.0 ,
*+{0.5/5.0} )}
    E3 VIL_STB_VAL 0 POLY(1) VCCP VCCN 0.37777777777777777
+-0.05555555555555556

    EVLIM_HIGH_VOUT NET408 0 VALUE={V(VCCP) - V(Ro1_Voh)*I(VreadIo)}
    EREAD_VS NET0220 0 VS 0 1.0
    
    *E_RO1_VOL RO1_VOL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 45 , 3.3 , 28 , 5.0 ,
*+23 )}
    E_RO1_VOL RO1_VOL 0 POLY(1) VCCP VCCN 80.97794117647057
+-24.708333333333343 2.6225490196078454

    ESTB VSTB_ONE 0 VALUE={IF( (V(STB,Vccn)/V(Vccp,Vccn)) >=
+V(VIH_STB_val) , 1 , V(VSTB_zero) )}
    EREAD_VREF NET0224 0 VREF 0 1.0
    
    *E2 VIH_STB_VAL 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , {1.3/1.8} , 5.0 ,
*+{4.5/5.0} )}
    E2 VIH_STB_VAL 0 POLY(1) VCCP VCCN 0.6222222222222219
+0.05555555555555557

    EZOUT_VCC_COEFF VZOUT_VCC_COEFF 0 POLY(1) VCCP VCCN 1.6599264705882346
+-0.0645833333333332 -0.01348039215686276
    E0 VSTB_ZERO 0 VALUE={IF(  (V(STB,Vccn)/V(Vccp,Vccn)) <=
+V(VIL_STB_val) , 0 , 0.5 )}
    E_VDEP_SINK_2 VAL_VDEP_SINK_FILTERED 0
+VALUE={IF(V(val_vdep_sink)<=0 , 0 , V(val_vdep_sink))}
    EMEAS_VOUT_DIFF VOUT_DIFF 0 VO_DIFF_PLUS VO_DIFF_MINUS 1.0
    E2_REF NET241 0 VCCN 0 1.0
    EILIM_SINK VB_3_SINK VDEP_SINK VB_3 0 1.0
    E_R1 NET311 VREF VALUE={I(VreadI_R1)*( R1_sink
++(R1_source-R1_sink)*1/(1+exp(-alpha_switch*(V(v_Io_val)-Io_val_switch) )
+)) }
    EZOUT_IOUT_COEFF NET0363 0 VALUE={IF( I(VreadIo)>=0 , (
+Zout_Iout_coeff_MIN + (1.0 -
+Zout_Iout_coeff_MIN)*exp(-abs(I(VreadIo)/Iout_dc_tau__source)) ) , (
+Zout_Iout_coeff_MIN + (1.0 -
+Zout_Iout_coeff_MIN)*exp(-abs(I(VreadIo)/Iout_dc_tau__sink)) ) )}
    EILIM_SOURCE VB_3_SOURCE VDEP_SOURCE VB_3 0 1.0
    EVLIM_LOW_VB NET425 0 VCCN 0 1.0
    E_VREF VREF 0 NET247 0 1.0
    EVLIM_LOW_VOUT NET411 0 VALUE={V(VCCN) - V(Ro1_Vol)*I(VreadIo)}
    E_SR_VCC_MODULATION VOUT_DIFF__SR_VCC 0 VALUE={V(Vout_diff)*(
+0.7286764705882351 + 0.1008333333333332*V(Vccp,Vccn)
+-0.00931372549019606*PWR(V(Vccp,Vccn),2) )}
    E_VDEP_SOURCE_2 VAL_VDEP_SOURCE_FILTERED 0
+VALUE={IF(V(val_vdep_source)>=0, 0, V(val_vdep_source))}
    E_ICCSAT_HIGH ICC_OUT_HIGH 0 POLY(1) VCCP VCCN 0
    E_READIO V_IO_VAL 0 VALUE={I(VreadIo)}
    E_VDEP_SOURCE_3 VDEP_SOURCE 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_source_filtered))}
    E_VDEP_SOURCE_1 VAL_VDEP_SOURCE 0 VALUE={ ( -95.20588235294117 +
+73.33333333333336*V(Vccp,Vccn) + 3.921568627450974*PWR(V(Vccp,Vccn),2) ) 
+-5000*I(VreadIo)}
    E_VDEP_SINK_3 VDEP_SINK 0 VALUE={IF( abs(I(VreadIo))<1m , 0 ,
+V(val_vdep_sink_filtered))}
    E_ICCSAT_LOW ICC_OUT_LOW 0 POLY(1) VCCP VCCN -6.574632352941173E-5
+4.014583333333334E-5 -1.5931372549019734E-7
    EVLIM_HIGH_VB NET416 0 VCCP 0 1.0
    E_VDEP_SINK_1 VAL_VDEP_SINK 0 VALUE={ ( 211.65808823529403
+-172.8125*V(Vccp,Vccn) + 12.316176470588244*PWR(V(Vccp,Vccn),2) )
+-5000*I(VreadIo)}
    
    *E_RO1_VOH RO1_VOH 0 VALUE={TABLE( V(VCCP,VCCN) , 1.8 , 54 , 3.3 , 42 , 5.0 ,
*+27 )}
    E_RO1_VOH RO1_VOH 0 POLY(1) VCCP VCCN 66.87132352941175 -6.6875
+-0.25735294117647034

    E1_REF NET287 0 VCCP 0 1.0
    E_ICC ICC_VAL 0 POLY(1) VCCP VCCN 4.027205882352942E-5
+3.958333333333329E-6 -1.2254901960784258E-7
    EMEAS_VB_VREF VB_VREF 0 VB VREF 1.0
    CSTB_CTRL VSTB_CTRL 0 1n
    COUT NET0584 0 {Cout}
    CDIFF_PARASITIC VO_DIFF_PLUS VO_DIFF_MINUS 30p
    CIN_CM_VM VM VREF {CIN_CM_VM}
    CIN_DIFF VM VP {CIN_DIFF}
    CZOUT_IOUT_COEFF VZOUT_IOUT_COEFF 0 1n
    CIN_CM_VP VP VREF {CIN_CM_VP}
    CCOMP VB VB_2 {Ccomp}
    COUT2 VZOUT 0 {Cout2}
    C_RO2_1 VB_2 VREF 700p
    DILIM_SOURCE VB_3 VB_3_SOURCE DIODE_ILIM
    DPROT_IN_P_VCCP NET423 NET388 DIODE_VLIM
    DVLIM_HIGH_VB VB NET400 DIODE_VLIM
    DPROT_IN_M_VCCP VM NET398 DIODE_VLIM
    DVLIM_LOW_VB NET426 VB DIODE_VLIM
    D_OUTVLIM_LOW NET412 VB_3 DIODE_NOVd
    D_OUTVLIM_HIGH VB_3 NET382 DIODE_NOVd
    DPROT_IN_M_VCCN NET409 VM DIODE_VLIM
    DPROT_IN_P_VCCN NET405 NET423 DIODE_VLIM
    DILIM_SINK VB_3_SINK VB_3 DIODE_ILIM
    V_IEE IEE_VAL 0 DC {IEE}
    VPROT_IN_M_VCCP NET253 NET398 DC {V_DPROT}
    VREADI_R1 VB NET311 DC 0
    VVLIM_LOW_VB NET425 NET426 DC -770m
    V_ENHANCE_VCCN VCCN_ENHANCED VCCN DC {VCCN_enhance}
    VPROT_IN_P_VCCP NET421 NET388 DC {V_DPROT}
    VOS NET423 VP DC 0
    VVLIM_HIGH_VB NET400 NET416 DC -770m
    V_OUTVLIM_LOW NET411 NET412 DC {Vd_compensazione}
    VPROT_IN_M_VCCN NET409 NET243 DC {V_DPROT}
    VREADIO NET0242 VS_STB DC 0
    VPROT_IN_P_VCCN NET405 NET406 DC {V_DPROT}
    V_OUTVLIM_HIGH NET382 NET408 DC {Vd_compensazione}
    V_ENHANCE_VCCP VCCP_ENHANCED VCCP DC {VCCP_enhance}
    M_NMOS2 VO_DIFF_MINUS VM VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
    M_NMOS1 VO_DIFF_PLUS NET423 VEE_N VCCN_ENHANCED MOS_N L={L} W={W}
.ENDS
*** End of subcircuit definition.


*******************************************************************************
*
* MODELS/SUBCKTS and PARAMS used by TSV63x subckt:
*
.PARAM RINCM=2.0828E+11
.PARAM CINCM=6.6478E-12
.PARAM RIN_CM_VM={2*RINCM}
.PARAM RIN_CM_VP={2*RINCM}
.PARAM CIN_CM_VM={CINCM/2}
.PARAM CIN_CM_VP={CINCM/2}
.PARAM CINDIFF=3.5657E-12
.PARAM CIN_DIFF={CINDIFF - CINCM/2}
.PARAM RD=1k 
.PARAM VCCP_enhance=150m
.PARAM VCCN_enhance=-1100m 
.PARAM GB=141m
.PARAM Ro = 223872
.PARAM A0_source = 5.959352977968012e+7  
.PARAM A0_sink = 0.6e+6
.PARAM alpha_switch = 1e6
.PARAM Io_val_switch = -7u
.PARAM Ccomp=8.8p 
.PARAM IEE=3u
.PARAM W=1.59u
.PARAM L=1u
.PARAM gm_mos=4.887806568937801e-05
.PARAM Lout  = 230u
.PARAM Rout  = 900
.PARAM Cout  = 2n
.PARAM Cout2 = 3.7p
.PARAM Zout_Iout_coeff_MIN= 0.04
.PARAM Iout_dc_tau__source = 0.9m 
.PARAM Iout_dc_tau__sink   = 0.03m 
.PARAM Ro2_2=1e-3 
.PARAM Ro2_1={ Ro - Ro2_2} 
.PARAM R1_sink={A0_sink/(gm_mos*GB*Ro2_1)}
.PARAM R1_source={A0_source/(gm_mos*GB*Ro2_1)}
.PARAM V_DPROT=150m
.PARAM Vd_compensazione=-788.4u
.PARAM ICC_STB = 5n
.PARAM Iout_leak_STB = 50p
.PARAM RSTB_ctrl = 51
.PARAM Iil_STB = 10p
.PARAM Iih_STB = 10p

.MODEL MOS_N  NMOS LEVEL=1 VTO=+0.65  KP=500E-6 
.MODEL DIODE_NOVd D LEVEL=1 IS=10E-15 N=0.001
.MODEL DIODE_VLIM D LEVEL=1 IS=0.8E-15   
.MODEL DIODE_ILIM D LEVEL=1 IS=0.8E-15  
.MODEL SW_OUT VSWITCH VON=0.9 VOFF=0.1 RON=1m ROFF=1T
.MODEL SW_LEAK VSWITCH VON=0.9 VOFF=0.1 RON=1T ROFF={2.5/Iout_leak_STB -2e3}
.MODEL SW_VB2_VS VSWITCH VON=0.9 VOFF=0.1 RON=1T ROFF=1m
.MODEL SW_VB_VREF VSWITCH VON=0.9 VOFF=0.1 RON=1T ROFF=1m
*
*******************************************************************************
