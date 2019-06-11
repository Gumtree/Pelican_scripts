
histmem stop

histmem mode time
histmem preset 3600

#run tc1_pres3_setpoint 65

#drive tc1_temp0_setpoint 200 tc3_driveable 200

#run tc1_pres3_setpoint 25

drive tc1_setpoint 300

histmem start block
newfile histogram_xyt
save

drive tc1_setpoint 600

histmem start block
newfile histogram_xyt
save

drive tc1_setpoint 950

drive schp 4136550

histmem mode time
histmem preset 1800

histmem start block
newfile histogram_xyt
save

drive schp 8594380

histmem mode time
histmem preset 3600

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

drive tc1_setpoint 25

