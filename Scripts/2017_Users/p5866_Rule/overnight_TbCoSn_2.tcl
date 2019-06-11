#The section below ensures that the radial collimator starts.  This should be in every script

if { [SplitReply [rco osc] ] == "off"} {
	broadcast "WARNING: rco stopped. Restarting"
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
	if { [SplitReply [rco osc] ] == "off"} {
		broadcast "WARNING: rco failed to start"
	} else {
		broadcast "rco restarted"
	}
}


#Next define how you want to count.  This is normally time.  ANd usually presets of 1 hour.

histmem stop
histmem mode time
histmem preset 900

drive tc3_driveable2 50
wait 600

drive mscor -50

 for {set i 0} {$i < 30} {incr i} {
	 drive mscor [expr -41 + $i*3]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

drive mscor -50
 
  for {set i 0} {$i < 30} {incr i} {
	  drive mscor [expr -40 + $i*3]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 
  drive mscor -50
  
   for {set i 0} {$i < 30} {incr i} {
	   drive mscor [expr -39 + $i*3]
	   histmem start block
	   newfile histogram_xyt
	   save
   }  