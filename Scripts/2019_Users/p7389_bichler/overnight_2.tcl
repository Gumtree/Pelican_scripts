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
histmem preset 3600

drive tc2_driveable 275 tc2_driveable2 275
wait 60

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

hset /sample/tc2/sensor/setpoint1 75




