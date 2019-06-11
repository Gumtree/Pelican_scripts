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


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550

set_chopper_config_with_bm_tof 100 1 1000
wait 60

drive schs 3000

#lambda=5.95A, 
run schp 8557140
wait 120

histmem start block
newfile histogram_xyt
save

#lambda=5.95A/2
run schp 9135710
wait 120

histmem start block
newfile histogram_xyt
save

#lambda=5.95A/3
run schp 9328570
wait 120

histmem start block
newfile histogram_xyt
save

