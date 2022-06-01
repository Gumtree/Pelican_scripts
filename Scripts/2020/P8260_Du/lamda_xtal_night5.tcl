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
histmem preset 3600
0
drive tc2_driveable 12
wait 300
drive mscor -40


 for {set i 0} {$i < 48} {incr i} {
	 drive mscor [expr -32 + $i*3]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 
 drive tc2_driveable 30
 wait 300
 drive mscor -40
 
 
  for {set i 0} {$i < 48} {incr i} {
	  drive mscor [expr -32 + $i*3]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 


 
 