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
#hset /sample/tc3/heater/heaterRange_1 3
#hset /sample/tc1/pres5/setpoint 5
#hset /sample/tc2/sensor/setpoint1 98
#drive tc3_driveable 100 
#wait 300

#drive schp 4072640.0

#hset /sample/tc2/sensor/setpoint1 128
#drive tc3_driveable2 130
#wait 300

hset /sample/tc1/pres5/setpoint 5


hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 98
drive tc3_driveable 100
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 118
drive tc3_driveable 120
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 138
drive tc3_driveable 140
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 158
drive tc3_driveable 160
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 178
drive tc3_driveable 180
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 208
drive tc3_driveable 210
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 218
drive tc3_driveable 220
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 238
drive tc3_driveable 240
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 248
drive tc3_driveable 250
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc2/sensor/setpoint1 258
drive tc3_driveable 260
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


#hset /sample/tc2/sensor/setpoint1 1
#hset /sample/tc1/pres5/setpoint 60
#hset /sample/tc3/sensor/setpoint2 1