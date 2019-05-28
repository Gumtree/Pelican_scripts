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
histmem preset 3600


#drive tc1_temp0_setpoint 300 tc3_driveable2 350

#drive tc3_driveable2 450

#drive tc3_driveable2 550




drive tc3_driveable2 180  tc2_temp6_setpoint 180
wait 120

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 200  tc2_temp6_setpoint 200
wait 120

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 220 tc2_temp6_setpoint 220
wait 120

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save
drive tc3_driveable2 240  tc2_temp6_setpoint 240
wait 120

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 260  tc2_temp6_setpoint 260
wait 120

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 280  tc2_temp6_setpoint 280
wait 120

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 300  tc2_temp6_setpoint 300
wait 120

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

