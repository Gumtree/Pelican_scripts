

histmem stop
histmem mode time
histmem preset 1800

drive mscor 125
drive tc3_driveable2 1.5
wait 600

 for {set i 0} {$i <51} {incr i} {
	 drive mscor [expr 120 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
 
