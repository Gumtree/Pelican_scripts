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

#drive schp 4164240




drive tc3_driveable2 140 tc2_temp6_setpoint 140
wait 600


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 150 tc2_temp6_setpoint 150
wait 600


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 160 tc2_temp6_setpoint 160
wait 600


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 170 tc2_temp6_setpoint 170
wait 600


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 180 tc2_temp6_setpoint 180
wait 600



histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 190 tc2_temp6_setpoint 190
wait 600


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 200 tc2_temp6_setpoint 200
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