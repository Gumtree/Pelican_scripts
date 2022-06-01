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

#run moma -44.49 momb -44.49 momc -44.49



drive tc3_driveable 400


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 500
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 520
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 525
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 300
wait 3600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 320
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 340
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 360
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc3_driveable 380
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc3_driveable 400
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc3_driveable 420
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc3_driveable 440
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc3_driveable 460
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc3_driveable 480
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc3_driveable 500
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



drive tc3_driveable 300
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save