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



#hset /sample/tc3/heater/heaterRange_2 3
#hset /sample/tc1/pres5/setpoint 5
#hset /sample/tc2/control/ramp_Loop_1 1,5
#hset /sample/tc2/sensor/setpoint1 38
#hset /sample/tc3/control/ramp_Loop_1 1,5
#hset /sample/tc3/sensor/setpoint1 180
#drive tc3_driveable2 40

histmem stop
histmem mode time
histmem preset 1500

drive schp 4072640.0
drive mscor -18
#drive mscor -10

 for {set i 0} {$i < 30} {incr i} {
	 drive mscor [expr -22 - $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

 
 