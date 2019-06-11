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

#histmem stop
histmem mode time
histmem preset 3600


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable2 290 tc3_driveable 300
#hset /sample/tc1/pres5/setpoint 60
drive tc1_temp6_setpoint 5 tc2_driveable 5
#drive tc3_driveable2 40
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


#hset /sample/tc1/pres5/setpoint 60

#hset /sample/tc1/temp6/setpoint 1
#hset /sample/tc2/sensor/setpoint1 1

#wait 1800
#hset /sample/tc1/pres5/setpoint 5


#drive tc1_temp6_setpoint 1 tc2_driveable 1


#drive tc1_temp6_setpoint 40 tc2_driveable 35
#drive tc2_driveable 40
#wait 600


