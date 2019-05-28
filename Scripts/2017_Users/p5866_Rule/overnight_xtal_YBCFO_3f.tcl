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
drive schp 4068140
drive mscor 104
#drive tc1_temp0_setpoint 200 tc2_temp6_setpoint 250
#wait 1200

 for {set i 0} {$i < 21} {incr i} {
	 drive mscor [expr 108 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 