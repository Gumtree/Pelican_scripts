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
histmem preset 30

drive schp 4068140

drive mscor 0

 for {set i 0} {$i < 250} {incr i} {
	 drive mscor [expr -180 + $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 