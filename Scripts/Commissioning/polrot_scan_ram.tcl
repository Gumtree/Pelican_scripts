

histmem stop
histmem mode time
histmem preset 300

drive polrot 1


 
  for {set i 0} {$i < 50} {incr i} {
	  drive mscor [expr 1.0 + $i*0.1]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  