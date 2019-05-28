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


#needle valve:
#run tc1_pres3_setpoint 65

#VTI:
#run tc3_driveable2 1

#sample LT:
#run tc2_temp6_setpoint 1

#LT stick:
#drive tc3_driveable2 20 tc2_temp6_setpoint 20

#HT stick:
#drive tc3_driveable2 3 tc3_driveable 3


#drive tc3_driveable2 295 tc2_temp6_setpoint 300
#wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_pres3_setpoint 65

drive tc3_driveable2 199 tc2_temp6_setpoint 200
wait 300

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




