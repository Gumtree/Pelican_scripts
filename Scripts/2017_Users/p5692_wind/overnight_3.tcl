
histmem stop

histmem mode time
histmem preset 3600

#run tc1_pres3_setpoint 65

#drive tc1_temp0_setpoint 200 tc3_driveable 200

#run tc1_pres3_setpoint 25

hset /sample/tc1/ramprate 600


histmem mode time
histmem preset 1800

drive schp 4136550

histmem start block
newfile histogram_xyt
save

drive schp 8594380

hset /sample/tc1/ramprate 1200
drive tc1_setpoint 25

