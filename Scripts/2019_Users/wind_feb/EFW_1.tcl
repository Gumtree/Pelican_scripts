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

for {set i 0} {$i < 20} {incr i} {
	drive tc2_driveable [expr 200 + $i*5]
	drive tc2_driveable2 [expr 200 + $i*5]
	wait 60
	histmem start block
	newfile histogram_xyt
	save
}


