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

#hset /sample/tc1/pres5/setpoint 15
#wait 120
#hset /sample/tc1/pres5/setpoint 5
#VTI:
hset /sample/tc2/sensor/setpoint1 297
#drive tc2_driveable 235
#LT-stick:
#drive tc1_temp6_setpoint 240
#HT-stick:
hset /sample/tc2/sensor/setpoint2 350
wait 60
hset /sample/tc2/sensor/setpoint2 400
wait 60
hset /sample/tc2/sensor/setpoint2 450
wait 60
drive tc2_driveable2 500
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

hset /sample/tc2/sensor/setpoint1 1
hset /sample/tc2/sensor/setpoint2 1