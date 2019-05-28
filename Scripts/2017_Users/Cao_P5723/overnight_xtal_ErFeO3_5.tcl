

histmem stop
histmem mode time
histmem preset 3600

drive mscor 120
drive tc3_driveable2 7
wait 300

 for {set i 0} {$i <11} {incr i} {
	 drive mscor [expr 116 - $i*0.5]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 