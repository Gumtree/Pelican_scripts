rco speed 0.073453
rco accel 0.073453
rco decel 0.073453
rco oscillate stop

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start


histmem mode time
histmem preset 3600

run tc2_temp0_setpoint 300


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


run tc2_temp0_setpoint 400
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_pres3_setpoint 25
run tc2_temp0_setpoint 500
wait 120
run tc2_temp0_setpoint 600
wait 1200

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_pres3_setpoint 30
run tc2_temp0_setpoint 700
wait 120
run tc2_temp0_setpoint 750
wait 120
run tc2_temp0_setpoint 790
wait 1200

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_pres3_setpoint 60
drive tc2_temp0_setpoint 3 tc1_temp0_setpoint 3

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save
