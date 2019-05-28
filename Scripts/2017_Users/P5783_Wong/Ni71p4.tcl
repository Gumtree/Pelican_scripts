

histmem stop
histmem mode time
histmem preset 3600

#drive schp 8594380.000000

hset /sample/tc2/ramprate 300

drive tc2_setpoint 1560
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc2_setpoint 1500
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc2_setpoint 1440
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc2_setpoint 1380
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



run tc2_setpoint 12

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

histmem start block
newfile histogram_xyt
save

