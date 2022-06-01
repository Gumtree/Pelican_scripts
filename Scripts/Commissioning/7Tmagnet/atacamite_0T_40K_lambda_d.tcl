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

drive schp 4072640.0

drive magnet1_magnet_setpoint 0
drive tc1_temp0_setpoint 40

drive mscor 46
drive mscor 58

 for {set i 0} {$i < 38} {incr i} {
	 drive mscor [expr 58 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

 drive mscor 46
 drive mscor 57
 
  for {set i 0} {$i < 38} {incr i} {
	  drive mscor [expr 57 + $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
#drive magnet1_magnet_setpoint 0.0
 