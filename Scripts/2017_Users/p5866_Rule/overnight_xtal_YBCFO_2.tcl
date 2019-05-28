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
histmem preset 3600
drive schp 4529060
drive mscor 76

 for {set i 0} {$i < 25} {incr i} {
	 drive mscor [expr 80 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 