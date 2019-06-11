

histmem stop
histmem mode time
histmem preset 3600

drive mscor 120
drive tc3_driveable2 10
wait 300

 for {set i 0} {$i <2} {incr i} {
	 drive mscor [expr 114 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 