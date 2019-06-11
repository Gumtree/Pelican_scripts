#The section below ensures that the radial collimator starts.  This should be in every script

#Next define how you want to count.  This is normally time.  ANd usually presets of 1 hour.

histmem stop
histmem mode time
histmem preset 600

 
 drive mscor -10
 drive mscor 0
 
 
  for {set i 0} {$i < 21} {incr i} {
	  drive mscor [expr 0 + $i*4]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 