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

#HT-stick, H1sample
#drive tc3_driveable 550
#hset /sample/tc3/sensor/setpoint1 350
#hset /sample/tc3/control/ramp_Loop_1 1 3

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

#hset /sample/tc2/sensor/setpoint2 350
#wait 60
#hset /sample/tc2/sensor/setpoint2 400
#wait 60
#hset /sample/tc2/sensor/setpoint2 450
#wait 60
#drive tc2_driveable2 500
#wait 300

#drive tc2_driveable 50  tc3_driveable 50
#wait 300
hset /sample/tc1/pres5/setpoint 10
hset /sample/tc2/sensor/setpoint1 297


hset /sample/tc3/control/ramp_Loop_1 1 5

drive tc3_driveable 340
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 360
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 370
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 380
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 390
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 400
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 410
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save
