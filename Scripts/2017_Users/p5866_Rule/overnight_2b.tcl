

histmem mode time
histmem preset 1800

drive mscor 20

 for {set i 0} {$i < 6} {incr i} {
	 drive mscor [expr 35 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 