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



#hset /sample/tc3/heater/heaterRange_1 3
#hset /sample/tc1/pres5/setpoint 5
#hset /sample/tc2/control/ramp_Loop_1 1,5
#hset /sample/tc2/sensor/setpoint1 298
#hset /sample/tc3/control/ramp_Loop_1 1,5
#hset /sample/tc3/sensor/setpoint1 180
#drive tc3_driveable 300

histmem stop
histmem mode time
histmem preset 360

#drive schp 4072640.0
#drive schp 4514140
#drive mra 0.47 mrb 0.47 mrc 0.47
#drive mscor 185
#drive mscor -20

 for {set i 0} {$i < 180} {incr i} {
	 drive mscor [expr 180 - $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

 drive mscor 0
 