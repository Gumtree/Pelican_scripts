if { [SplitReply [rco osc] ] == /"off/"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
}

drive tc3_driveable2 290 tc3_driveable 300
hset /sample/tc1/pres3/setpoint 10

histmem mode time
histmem preset 4200

drive mscor -65

 for {set i 0} {$i < 51} {incr i} {
	 drive mscor [expr -64 + $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 