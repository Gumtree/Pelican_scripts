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

hset /sample/tc1/pres5/setpoint 30

#hset /sample/tc2/sensor/setpoint1 290
#drive tc3_driveable 300 
#wait 300

histmem stop
histmem mode time
histmem preset 3600

hset /sample/tc1/pres5/setpoint 20

hset /sample/tc2/sensor/setpoint2 350
wait 60
hset /sample/tc2/sensor/setpoint2 400
wait 60
hset /sample/tc2/sensor/setpoint2 450
wait 60
hset /sample/tc2/sensor/setpoint2 500
wait 60
hset /sample/tc2/sensor/setpoint2 550
wait 60
hset /sample/tc2/sensor/setpoint2 600
wait 60
hset /sample/tc2/sensor/setpoint2 650
wait 60
hset /sample/tc2/sensor/setpoint2 700
wait 60
hset /sample/tc2/sensor/setpoint2 730
wait 60
drive tc2_driveable2 750 
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc1/pres5/setpoint 65
hset /sample/tc2/sensor/setpoint1 1
hset /sample/tc2/sensor/setpoint2 1

