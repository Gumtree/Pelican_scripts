

histmem mode time
histmem stop
histmem preset 60

drive mscor -90

 for {set i 0} {$i < 90} {incr i} {
	 drive mscor [expr -62 + $i*0.5]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 