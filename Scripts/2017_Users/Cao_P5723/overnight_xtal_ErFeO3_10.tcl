

histmem stop
histmem mode time
histmem preset 3600

drive mscor 125
drive tc3_driveable2 3.0
wait 600

 for {set i 0} {$i <4} {incr i} {
	 drive mscor [expr 120 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
 
 drive mscor 85
 #drive tc3_driveable2 3.0
 wait 600
 
  for {set i 0} {$i <10} {incr i} {
	  drive mscor [expr 79 - $i*1]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  