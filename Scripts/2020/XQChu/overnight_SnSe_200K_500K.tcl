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


#tc2 is VTI and tc3 drivable is sample pos
#hset /sample/tc3/heater/heaterRange_1 3
#hset /sample/tc1/pres5/setpoint 60
#drive tc2_driveable 150 tc3_driveable 200
#drive  tc2_driveable 200

#run moma -44.49 momb -44.49 momc -44.49

#histmem start block
#newfile histogram_xyt
#save

#histmem start block
#newfile histogram_xyt
#save


#histmem start block
#newfile histogram_xyt
#save

#histmem start block
#newfile histogram_xyt
#save


histmem start block
newfile histogram_xyt
save

hset /sample/tc3/control/ramp_Loop_1 1 5
hset /sample/tc1/pres5/setpoint 5
drive tc2_driveable 300  tc3_driveable 500

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

drive tc2_driveable 300 tc3_driveable2 300

