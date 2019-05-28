

histmem stop

histmem mode time
histmem preset 3600

run tc1_pres3_setpoint 60
run tc1_temp0_setpoint 5 
run tc2_temp6_setpoint 5
wait 7200

drive tc1_temp0_setpoint 140 tc2_temp6_setpoint 150
wait 600
#run tc1_pres3_setpoint 25
run tc1_pres3_setpoint 25

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 200 tc2_temp6_setpoint 210
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 230 tc2_temp6_setpoint 260
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 280 tc2_temp6_setpoint 300
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_pres3_setpoint 60
run tc1_temp0_setpoint 5 
run tc2_temp6_setpoint 5


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

