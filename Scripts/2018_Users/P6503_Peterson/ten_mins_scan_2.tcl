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

#drive tc1_temp0_setpoint 150 tc3_driveable 200

#run tc1_pres3_setpoint 25

drive tc2_temp0_setpoint 150 tc3_driveable2 130

histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 160 tc3_driveable2 140

histmem start block 
newfile histogram_xyt
save

drive tc2_temp0_setpoint 170 tc3_driveable2 150


histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 180 tc3_driveable2 160


histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 190 tc3_driveable2 170


histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 200 tc3_driveable2 180

histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 210 tc3_driveable2 190


histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 220 tc3_driveable2 200


histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 230 tc3_driveable2 210

histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 240 tc3_driveable2 220

histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 250 tc3_driveable2 220


histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 260 tc3_driveable2 220

histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 270 tc3_driveable2 220

histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 280 tc3_driveable2 220

histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 290 tc3_driveable2 220


histmem start block
newfile histogram_xyt
save

drive tc2_temp0_setpoint 300 tc3_driveable2 220

histmem start block
newfile histogram_xyt
save

