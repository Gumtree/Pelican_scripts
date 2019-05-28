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


run tc1_pres3_setpoint 50
drive tc1_temp0_setpoint 10
run tc1_pres3_setpoint 5
drive tc1_temp0_setpoint 2.0

histmem mode time
histmem preset 1800

drive mscor 40
drive mscor 50


 for {set i 0} {$i < 11} {incr i} {
	 drive mscor [expr 50 + $i*10]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
