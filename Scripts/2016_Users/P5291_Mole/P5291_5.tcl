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


#run tc1_pres3_setpoint 65

#drive tc1_temp0_setpoint 200 tc3_driveable 200

#run tc1_pres3_setpoint 25

drive tc1_temp0_setpoint 1.7

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 1.9

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 2.1

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 2.3

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 2.5


wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 2.7

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 2.9

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 3.1

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 3.3

wait 60


histmem start block
newfile histogram_xyt
save

