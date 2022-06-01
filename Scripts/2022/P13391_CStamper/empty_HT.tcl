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


#neddle valve
#hset /sample/tc1/pres3/setpoint 8


#VTI
#hset /sample/tc3/heater/heaterRange_1 3
#hset /sample/tc3/control/ramp_Loop_1 0,5
#hset /sample/tc3/sensor/setpoint1 298

#HT-stick
#hset /sample/tc2/heater/heaterRange_1 3
#hset /sample/tc2/control/ramp_Loop_1 1,5
#hset /sample/tc2/sensor/setpoint1 300


#4.69A
#drive schp 4072640.0
#drive mra 0.43 mrb 0.43 mrc 0.43

#drive tc2_driveable 300 tc3_driveable 300


hset /sample/tc2/control/ramp_Loop_1 1,3
drive tc2_driveable 310

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc2/control/ramp_Loop_1 1,3
drive tc2_driveable 320

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc2/control/ramp_Loop_1 1,3
drive tc2_driveable 330

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 340

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc2/control/ramp_Loop_1 1,3
drive tc2_driveable 350

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 360

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



