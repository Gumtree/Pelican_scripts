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

drive mscor -125

 for {set i 0} {$i < 5} {incr i} {
	 drive mscor [expr -120 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

 
 
  for {set i 0} {$i < 5} {incr i} {
	  drive mscor [expr -95 + $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 
  
 
  for {set i 0} {$i < 5} {incr i} {
	  drive mscor [expr -15 + $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 

 
  for {set i 0} {$i < 5} {incr i} {
	  drive mscor [expr 60 + $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 
  
  for {set i 0} {$i < 5} {incr i} {
	  drive mscor [expr 85 + $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 
  

 for {set i 0} {$i < 5} {incr i} {
	 drive mscor [expr 165 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

