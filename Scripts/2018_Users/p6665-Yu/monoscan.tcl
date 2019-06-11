

mscan moma -62.5 -0.1 momb -62.5 -0.1 momc -62.5 -0.1 15 time 10 datatype histogram_T


# 6 A; schs 3000 mchs 6000
set_chopper_config_with_bm_tof 100 1 1000 

# 4.69 A
set_chopper_config_with_bm_tof 100 2 1000 
#schs 6000 mchs 6000
#scan of Chopper phase

publish set user
set ::scan::check_thread0 false
runscan schp 0 10000000 50 time 20

# start stop mum of points (50) 20s/step
#6 A
run moma -63.06 momb -63.06 momc -63.06
run mra 0.36 mrb 0.36 mrc 0.36
#lamda
schp 8557140.0


#4.69 A
run moma -44.56 momb -44.56 momc -44.56
run mra 0.43 mrb 0.43 mrc 0.43
#Chopper phase:4.69 A
#lamda
#drive schp 4080000
#lamda/2
#drive schp 4516830


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#HT-stick:
#drive tc3_driveable 550
#VTI:
#drive tc3_driveable2 1  
drive tc2_driveable 1
# LT-stick:
drive tc1_temp6_setpoint 1

#needle valve setting:
#hset /sample/tc1/pres3/setpoint 10

#Chopper phase:4.69 A
#lamda
#drive schp 4080000
#lamda/2
#drive schp 4516830

#hsetprop /sample/tc3/temp0/setpoint upperlimit 500