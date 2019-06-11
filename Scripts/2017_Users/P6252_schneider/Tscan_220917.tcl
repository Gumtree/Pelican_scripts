if { [SplitReply [rco osc] ] == "off"} {
	broadcast "WARNING: rco stopped. Restarting"
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
	if { [SplitReply [rco osc] ] == "off"} {
		broadcast "WARNING: rco failed to start"
	} else {
		broadcast "rco restarted"
	}
}

histmem stop
histmem mode time
histmem preset 600


#drive tc1_temp0_setpoint 300 tc3_driveable2 350

#drive tc3_driveable2 450

#drive tc3_driveable2 550



drive tc3_driveable2 30
run tc1_pres3_setpoint 20
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 35
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 40
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 45
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 50
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 55
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 60
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 65
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 70
wait 120


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 75
wait 120


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 80
wait 120


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 85
wait 120


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 90
wait 120


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 95
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 100  tc2_temp6_setpoint 100
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 105  tc2_temp6_setpoint 105
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 105  tc2_temp6_setpoint 105
wait 120

histmem start block
newfile histogram_xyt
save
drive tc3_driveable2 110  tc2_temp6_setpoint 110
wait 120

histmem start block
newfile histogram_xyt
save
drive tc3_driveable2 115  tc2_temp6_setpoint 115
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 120  tc2_temp6_setpoint 120
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 125  tc2_temp6_setpoint 125
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 130  tc2_temp6_setpoint 130
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 135  tc2_temp6_setpoint 135
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 140  tc2_temp6_setpoint 140
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 145  tc2_temp6_setpoint 145
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 150  tc2_temp6_setpoint 150
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 155  tc2_temp6_setpoint 155
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 160  tc2_temp6_setpoint 160
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 165  tc2_temp6_setpoint 165
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 170  tc2_temp6_setpoint 170
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 175  tc2_temp6_setpoint 175
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 180  tc2_temp6_setpoint 180
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 185  tc2_temp6_setpoint 185
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 190  tc2_temp6_setpoint 190
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 195  tc2_temp6_setpoint 195
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 200  tc2_temp6_setpoint 200
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 205  tc2_temp6_setpoint 205
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 210  tc2_temp6_setpoint 210
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 215  tc2_temp6_setpoint 215
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 220  tc2_temp6_setpoint 220
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 225  tc2_temp6_setpoint 225
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 230  tc2_temp6_setpoint 230
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 235  tc2_temp6_setpoint 235
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 240  tc2_temp6_setpoint 240
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 245  tc2_temp6_setpoint 245
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 250  tc2_temp6_setpoint 250
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 255  tc2_temp6_setpoint 255
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 260  tc2_temp6_setpoint 260
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 265  tc2_temp6_setpoint 265
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 270  tc2_temp6_setpoint 270
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 275  tc2_temp6_setpoint 275
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 280  tc2_temp6_setpoint 280
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 285  tc2_temp6_setpoint 285
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 290  tc2_temp6_setpoint 290
wait 120

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 295  tc2_temp6_setpoint 295
wait 120

histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 300  tc2_temp6_setpoint 300
wait 120

histmem start block
newfile histogram_xyt
save
