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


#drive tc1_pres3_setpoint 5

#drive tc3_driveable2 20 tc2_temp6_setpoint 20
#wait 600

#run tc3_driveable2 5 tc2_temp6_setpoint 5
#wait 300

drive tc3_driveable2 49 tc3_driveable 50
wait 600

#halflambda

drive schp 4507070

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 99 tc3_driveable 100
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

drive tc3_driveable2 149 tc3_driveable 150
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

