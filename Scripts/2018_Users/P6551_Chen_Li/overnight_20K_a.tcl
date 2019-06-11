if { [SplitReply [rco osc] ] == /"off/"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
}

#drive tc3_driveable2 20 tc3_driveable 20
hset /sample/tc1/pres3/setpoint 5

histmem mode time
histmem preset 3600

drive mscor -65

 for {set i 0} {$i < 51} {incr i} {
	 drive mscor [expr -64 + $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 