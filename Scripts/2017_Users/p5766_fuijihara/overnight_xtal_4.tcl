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

 for {set i 0} {$i < 20} {incr i} {
	 drive mscor [expr 162 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
 drive mscor 50
 
  for {set i 0} {$i < 20} {incr i} {
	  drive mscor [expr 163 + $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  