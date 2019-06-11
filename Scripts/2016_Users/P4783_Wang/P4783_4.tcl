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


drive tc3_driveable 500
wait 1200

drive mscor 131
histmem start block
newfile histogram_xyt
save

drive mscor 161
histmem start block
newfile histogram_xyt
save

drive mscor 191
histmem start block
newfile histogram_xyt
save

drive mscor 221
histmem start block
newfile histogram_xyt
save

drive mscor 251
histmem start block
newfile histogram_xyt
save


drive tc3_driveable 550
wait 1200

drive mscor 131
histmem start block
newfile histogram_xyt
save

drive mscor 161
histmem start block
newfile histogram_xyt
save

drive mscor 191
histmem start block
newfile histogram_xyt
save

drive mscor 221
histmem start block
newfile histogram_xyt
save

drive mscor 251
histmem start block
newfile histogram_xyt
save


drive tc3_driveable 675
wait 1200

drive mscor 131
histmem start block
newfile histogram_xyt
save

drive mscor 161
histmem start block
newfile histogram_xyt
save

drive mscor 191
histmem start block
newfile histogram_xyt
save

drive mscor 221
histmem start block
newfile histogram_xyt
save

drive mscor 251
histmem start block
newfile histogram_xyt
save


run tc1_pres3_setpoint 60
drive tc3_driveable 300
