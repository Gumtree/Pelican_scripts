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

hset /sample/tc1/pres5/setpoint 10

hset /sample/tc2/sensor/setpoint1 195
drive tc3_driveable 200 
#wait 300

drive mscor 2.0
drive mscor 4.0
#wait 600

histmem start block
newfile histogram_xyt
save

drive mscor -41.0

histmem start block
newfile histogram_xyt
save

drive mscor -86.0

histmem start block
newfile histogram_xyt
save

hset /sample/tc2/sensor/setpoint1 290
hset /sample/tc3/sensor/setpoint1 300


