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

histmem mode time
histmem preset 600



#drive tc1_temp0_setpoint 10
#wait 300

# Empty can sample 10K, lambda/2

drive schp 4529060

histmem start block
newfile histogram_xyt
save



drive schp 4068140

histmem start block
newfile histogram_xyt
save
