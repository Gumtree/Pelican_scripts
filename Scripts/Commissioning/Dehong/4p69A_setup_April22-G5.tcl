


#4.69 A

set_chopper_config_with_bm_tof 100 2 1000 

#drive moma -44.44 momb -44.56 momc -44.93
drive moma -44.50 momb -44.60 momc -44.70
drive mra 0.43 mrb 0.43 mrc 0.43

#run moma -44.56 momb -44.56 momc -44.56
#drive tc1_temp0_setpoint 300 tc3_driveable 350

#Chopper speed:
#drive schs 6000
run mchs 6000

#Chopper phase: G5
#lamda
drive schp 4117056.0
#drive schp 4080000
#lamda/2
#drive schp 4558528
#lambda/3
#drive schp 4715050


#mscor debug 1
#mscor absenc
# xxxx
#mscor absenchome xxxx
#mscor unit2count give the known value 
