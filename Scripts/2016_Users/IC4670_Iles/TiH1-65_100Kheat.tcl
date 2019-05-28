rco speed 0.073453
rco accel 0.073453
rco decel 0.073453
rco oscillate stop

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start


histmem mode time
histmem preset 600



histmem start block
newfile histogram_xyt
save

drive tc2_temp6_setpoint 220

wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_temp6_setpoint 240

wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_temp6_setpoint 260

wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_temp6_setpoint 280

wait 300

histmem start block
newfile histogram_xyt
save

