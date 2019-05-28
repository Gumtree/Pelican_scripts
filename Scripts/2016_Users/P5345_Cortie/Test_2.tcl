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

#run tc1_pres3_setpoint 65


drive tc1_temp0_setpoint 295 tc2_temp6_setpoint 300


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_pres3_setpoint 65
drive tc1_temp0_setpoint 245 tc2_temp6_setpoint 250
run tc1_pres3_setpoint 25
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 265 tc2_temp6_setpoint 270
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 265 tc2_temp6_setpoint 275
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 285 tc2_temp6_setpoint 300
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

