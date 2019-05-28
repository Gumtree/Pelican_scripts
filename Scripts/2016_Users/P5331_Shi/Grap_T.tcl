

histmem stop

histmem mode time
histmem preset 3600

drive tc1_temp0_setpoint 140 tc2_temp6_setpoint 140

#run tc1_pres3_setpoint 25
run tc1_pres3_setpoint 25

drive tc1_temp0_setpoint 145 tc2_temp6_setpoint 150
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 205 tc2_temp6_setpoint 210
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 215 tc2_temp6_setpoint 220
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 220 tc2_temp6_setpoint 225
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 225 tc2_temp6_setpoint 230
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 235 tc2_temp6_setpoint 240
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 245 tc2_temp6_setpoint 250
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 255 tc2_temp6_setpoint 260
wait 600

histmem start block
newfile histogram_xyt
save
histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 265 tc2_temp6_setpoint 270
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 270 tc2_temp6_setpoint 273
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 272 tc2_temp6_setpoint 276
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 275 tc2_temp6_setpoint 280
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 285 tc2_temp6_setpoint 290
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 290 tc2_temp6_setpoint 300
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_pres3_setpoint 60
run tc1_temp0_setpoint 1.5 
run tc2_temp6_setpoint 1.5


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

