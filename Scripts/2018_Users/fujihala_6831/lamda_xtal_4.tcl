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
histmem preset 1800


  oxfordsetdtemp 0.550
  wait 600
  oxfordsetdtemp 0.600
  wait 600
  
  drive mscor -15
  drive mscor -8
  drive schp 4080000
  
   for {set i 0} {$i < 33} {incr i} {
	   drive mscor [expr -8 + $i*3]
	   histmem start block
	   newfile histogram_xyt
	   save
   }
  
   
   drive mscor -25
   drive mscor -20
   drive schp 4516830
   
    for {set i 0} {$i < 38} {incr i} {
	    drive mscor [expr -20 + $i*3]
	    histmem start block
	    newfile histogram_xyt
	    save
    }
   