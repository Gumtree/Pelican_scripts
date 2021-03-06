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
histmem preset 1800


#drive tc1_temp0_setpoint 300 tc3_driveable2 350

#drive tc3_driveable2 450

#drive tc3_driveable2 550

drive schp 8617040

histmem start block
newfile histogram_xyt
save

histmem stop
histmem mode time
histmem preset 600

drive schp 9154050


histmem start block
newfile histogram_xyt
save

drive schp 9340330


histmem start block
newfile histogram_xyt
save

