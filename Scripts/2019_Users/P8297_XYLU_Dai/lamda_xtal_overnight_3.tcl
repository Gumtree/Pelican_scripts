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
histmem preset 1200

#drive mscor 0
#drive mscor 30

#hset /sample/tc1/pres5/setpoint 10

#LT-stick
#drive tc2_driveable 50  tc3_driveable2 50
#wait 300

 for {set i 0} {$i < 26} {incr i} {
	 drive mscor [expr 20 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

 