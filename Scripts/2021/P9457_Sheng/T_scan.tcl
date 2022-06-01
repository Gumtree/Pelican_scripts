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
histmem preset 60

drive mscor -55


oxfordsetdtemp 0.060
wait 600
oxfordsetdtemp 0.085
wait 600  
oxfordsetdtemp 0.100
wait 600


 for {set i 0} {$i < 31} {incr i} {
	 drive mscor [expr -60 - $i*1]
	 histmem start block
	 newfile histogram_xyt
	 save
 }

 drive mscor -55
 
 oxfordsetdtemp 0.125
 wait 600
 oxfordsetdtemp 0.150
 wait 600  
 oxfordsetdtemp 0.175
 wait 600
 oxfordsetdtemp 0.200
 wait 600
 
  
  for {set i 0} {$i < 31} {incr i} {
	  drive mscor [expr -60 - $i*1]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
 
 drive mscor -55
 
 oxfordsetdtemp 0.225
 wait 600
 oxfordsetdtemp 0.250
 wait 600  
 oxfordsetdtemp 0.275
 wait 600
 oxfordsetdtemp 0.300
 wait 600
 
  for {set i 0} {$i < 31} {incr i} {
	  drive mscor [expr -60 - $i*1]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  
  
  