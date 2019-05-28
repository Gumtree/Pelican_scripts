if { [SplitReply [rco osc] ] == /"off/"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
}


histmem stop
histmem mode time
histmem preset 2000

drive mscor 74

 for {set i 0} {$i < 26} {incr i} {
	 drive mscor [expr 75 + $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 