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
histmem preset 1800

drive mscor 50
drive mscor 122
drive schp 4068140

 for {set i 0} {$i < 50} {incr i} {
	 drive tc3_driveable2 [expr 31.5 + $i*2]
	 wait 600
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
