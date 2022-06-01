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


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#HT-stick:
#drive tc3_driveable 550
#VTI:
#drive tc3_driveable2 1  

# LT-stick:
#drive tc2_temp6_setpoint 1

#needle valve setting:
#hset /sample/tc1/pres5/setpoint 10

#Chopper phase:
#lamda
#drive schp 4072640.0
#lamda/2
#drive schp 4512030



hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc1/pres5/setpoint 5
#hset /sample/tc2/control/ramp_Loop_1 1,5
hset /sample/tc2/sensor/setpoint1 298
#hset /sample/tc3/control/ramp_Loop_1 1,5
#hset /sample/tc3/sensor/setpoint1 200
drive tc3_driveable 300
#drive tc3_driveable 600
#wait 600

#drive schp 4516830

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

#drive schp 4072640.0

histmem start block
newfile histogram_xyt
save

