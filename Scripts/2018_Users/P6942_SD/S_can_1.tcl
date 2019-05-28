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

#hset /sample/tc1/pres5/setpoint 10

#hset /sample/tc2/sensor/setpoint1 290
#drive tc3_driveable 300 
#wait 300

histmem stop
histmem mode time
histmem preset 3600

hset /sample/tc1/pres5/setpoint 20


hset /sample/tc2/sensor/setpoint1 290
drive tc3_driveable 300 
#wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/sensor/setpoint1 330
wait 60
hset /sample/tc3/sensor/setpoint1 350
wait 60
hset /sample/tc3/sensor/setpoint1 400
wait 60
drive tc3_driveable 430 
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/sensor/setpoint1 500
wait 60
hset /sample/tc3/sensor/setpoint1 550
wait 60
hset /sample/tc3/sensor/setpoint1 600
wait 60
hset /sample/tc3/sensor/setpoint1 630
wait 60
drive tc3_driveable 650 
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc1/pres5/setpoint 60

drive tc2_driveable 1 tc3_driveable 1 

