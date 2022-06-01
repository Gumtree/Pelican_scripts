6t 

0.rmscan moma -62.5 -0.1 momb -62.5 -0.1 momc -62.5 -0.1 15 time 10 datatype histogram_T


# 6 A; schs 3000 mchs 6000, schp 8557140.0

set_chopper_config_with_bm_tof 100 1 1000 

# 4.69 A
set_chopper_config_with_bm_tof 100 2 1000 

#scan of Chopper phase

publish set user
set ::scan::check_thread0 false
runscan schp 0 10000000 50 time 20

# start stop num of points (50) 20s/step

#5.96 A

#SICS:
set_chopper_config_with_bm_tof 100 1 1000 

#Mono:

#run moma -63.06 momb -63.06 momc -63.06
run moma -62.82 momb -63.09 momc -63.42
run mra 0.36 mrb 0.36 mrc 0.36

#Chopper speed:
run schs 3000
run mchs 6000

#chopper phase
#lambda
# run schp 8557140.0
run schp 8558530

#half-lambda
run schp 4123750

#4.69 A

set_chopper_config_with_bm_tof 100 2 1000 

run moma -44.44 momb -44.56 momc -44.93
run mra 0.43 mrb 0.43 mrc 0.43

#run moma -44.56 momb -44.56 momc -44.56
#drive tc1_temp0_setpoint 300 tc3_driveable 350

#Chopper speed:
run schs 6000
run mchs 6000

#Chopper phase:
#lamda
drive schp 4072640.0
#drive schp 4080000
#lamda/2
drive schp 4512030.0
#drive schp 4516830

#Sample:
#HT-stick:
drive tc2_driveable2 350
hset /sample/tc2/sensor/setpoint2 350
#VTI:
#drive tc3_driveable2 1  
drive tc2_driveable 1
hset /sample/tc2/sensor/setpoint1 297

#needle valve setting:
hset /sample/tc1/pres5/setpoint 10

#HT-stick, H1sample
#drive tc3_driveable 550
#hset /sample/tc3/sensor/setpoint1 350

#LT-puck
#drive tc3_driveable2 40 
#hset /sample/tc3/sensor/setpoint2 4

#VTI:
#drive tc2_driveable 1  
#hset /sample/tc2/sensor/setpoint1 297

#needle valve setting:
#hset /sample/tc1/pres5/setpoint 10

#HT-stick
#drive tc2_driveable 1  tc3_driveable 297
#wait 300

#LT-stick
#drive tc2_driveable 1  tc3_driveable2 297
#wait 300
