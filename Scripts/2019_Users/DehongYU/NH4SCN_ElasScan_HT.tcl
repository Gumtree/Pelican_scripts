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


histmem stop
histmem mode time
histmem preset 600

#HT-stick, H1sample
#drive tc3_driveable 550
#hset /sample/tc3/sensor/setpoint1 350

#LT-puck
#drive tc3_driveable2 40 
#hset /sample/tc3/sensor/setpoint2 4

#VTI:
#drive tc2_driveable 1  
#hset /sample/tc2/sensor/setpoint1 297

#needle valve setting:
#hset /sample/tc1/pres5/setpoint 10

#HT-stick
#drive tc2_driveable 1  tc3_driveable 297
#wait 300

#LT-stick
#drive tc2_driveable 1  tc3_driveable2 297
#wait 300

#wait 300

#drive tc2_driveable 50  tc3_driveable 50
#wait 300
#hset /sample/tc1/pres5/setpoint 5


#start scan

 for {set i 0} {$i < 47} {incr i} {
	  drive tc3_driveable [expr 302 + $i*2]
	  wait 300
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  
hset /sample/tc1/pres5/setpoint 60
hset /sample/tc3/sensor/setpoint1 1
hset /sample/tc2/sensor/setpoint1 1



