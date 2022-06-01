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




histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive schp 4072640

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4512030


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#drive tempt to 300



drive tc2_driveable 70 tc3_driveable2 70

drive schp 4072640

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4512030

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#drive tempt to 300

drive tc2_driveable 150 tc3_driveable2 150

drive schp 4072640

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4512030

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#drive tempt to 300

drive tc2_driveable 200 tc3_driveable2 200

drive schp 4072640

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4512030

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#drive tempt to 300

