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


drive tc2_driveable 75 tc2_driveable2 75
wait 60

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


drive tc2_driveable 100 tc2_driveable2 100
wait 60

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


drive tc2_driveable 125 tc2_driveable2 125
wait 60

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


drive tc2_driveable 150 tc2_driveable2 150
wait 60

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


drive tc2_driveable 175 tc2_driveable2 175
wait 60

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


drive tc2_driveable 225 tc2_driveable2 225
wait 60

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


drive tc2_driveable 250 tc2_driveable2 250
wait 60

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


drive tc2_driveable 275 tc2_driveable2 275
wait 60

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





