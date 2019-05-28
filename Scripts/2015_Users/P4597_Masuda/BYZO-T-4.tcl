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

drive tc1_temp0_setpoint 150
drive tc2_tem06_setpoint 150
wait 600

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

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save