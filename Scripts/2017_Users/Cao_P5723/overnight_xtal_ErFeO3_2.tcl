

histmem stop
histmem mode time
histmem preset 3600

drive mscor 80

 for {set i 0} {$i <11} {incr i} {
	 drive mscor [expr 86 - $i*0.5]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 