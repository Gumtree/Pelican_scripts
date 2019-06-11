histmem mode time
histmem preset 60
histmem stop

drive sh2 40
drive sv2 40

 
 for {set i 0} {$i < 19} {incr i} {
	  drive sv2 [expr 40 - $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  
 drive sh2 40
 drive sv2 40
 
  
  for {set i 0} {$i < 19} {incr i} {
	   drive sh2 [expr 40 - $i*2]
	   histmem start block
	   newfile histogram_xyt
	   save
   }
   
  drive sh2 40
  drive sv2 40
  