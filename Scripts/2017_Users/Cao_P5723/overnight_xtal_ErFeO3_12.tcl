

histmem stop
histmem mode time
histmem preset 3600

drive mscor 120
drive tc3_driveable2 4.5
wait 600

 for {set i 0} {$i <4} {incr i} {
	 drive mscor [expr 120 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
 
 for {set i 0} {$i <8} {incr i} {
	 drive mscor [expr 110 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 