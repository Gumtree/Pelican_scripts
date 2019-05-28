

histmem stop
histmem mode time
histmem preset 3600

drive mscor 110
#drive tc3_driveable2 3.0
#wait 600

 for {set i 0} {$i <26} {incr i} {
	 drive mscor [expr 105 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
 
  