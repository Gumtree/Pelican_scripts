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
histmem preset 180
histmem stop

drive sh2 40
drive sv2 40

 
 for {set i 0} {$i < 38} {incr i} {
	  drive sv2 [expr 40 - $i*1]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  
 drive sh2 40
 drive sv2 40
 
  
  for {set i 0} {$i < 38} {incr i} {
	   drive sh2 [expr 40 - $i*1]
	   histmem start block
	   newfile histogram_xyt
	   save
   }
   
  drive sh2 40
  drive sv2 40
  