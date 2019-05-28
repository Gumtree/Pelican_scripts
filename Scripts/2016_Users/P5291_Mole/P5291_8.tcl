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

drive tc1_temp0_setpoint 6.0

wait 300


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 6.2

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 6.4

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 6.6

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 6.8


wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 7.0

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 7.2

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 7.4

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 7.6

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 7.8

wait 60


histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 8.0

wait 60


histmem start block
newfile histogram_xyt
save

