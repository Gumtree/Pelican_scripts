if { [SplitReply [rco osc] ] == /"off/"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
}



histmem mode time
histmem preset 3600

drive mscor -10

 for {set i 0} {$i < 28} {incr i} {
	 drive mscor [expr 2 + $i*4]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 