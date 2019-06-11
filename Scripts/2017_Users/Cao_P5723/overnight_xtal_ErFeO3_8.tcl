

histmem stop
histmem mode time
histmem preset 3600

drive mscor 120
drive tc3_driveable2 3.0
wait 600

 for {set i 0} {$i <32} {incr i} {
	 drive mscor [expr 112 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
 
  