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
histmem preset 20

drive sh1 90

 for {set i 0} {$i < 44} {incr i} {
	 drive sh1 [expr 90 - $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

 