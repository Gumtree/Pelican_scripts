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
histmem preset 600

#run tc1_pres3_setpoint 65

#drive tc1_temp0_setpoint 200 tc3_driveable 200

#run tc1_pres3_setpoint 25

for {set i 0} {$i < 12} {incr i} {
	drive tc3_driveable2 [expr 1.8 + $i*4]
	histmem start block
	newfile histogram_xyt
	save
}

for {set i 0} {$i < 62} {incr i} {
	drive tc3_driveable2 [expr 50 + $i*4] tc2_temp6_setpoint [expr 50 + $i*4]
	histmem start block
	newfile histogram_xyt
	save
}

drive tc3_driveable2 300 tc2_temp6_setpoint 300

histmem mode time
histmem preset 3600

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

run tc1_pres3_setpoint 65
run tc3_driveable2 1 tc2_temp6_setpoint 1
