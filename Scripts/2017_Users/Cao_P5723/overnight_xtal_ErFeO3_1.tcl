

histmem stop
histmem mode time
histmem preset 900

drive mscor 125

 for {set i 0} {$i < 231} {incr i} {
	 drive mscor [expr 120 - $i*0.5]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 