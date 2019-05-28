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

#drive schp 4072730

#drive tc3_driveable2 5 tc2_temp6_setpoint 1.5
#wait 600

#7h at 1.5 already measured and further 5h at 1.5K below


drive tc2_driveable 30 drive tc1_temp6_setpoint 30
wait 120

histmem start block
newfile histogram_xyt
save

