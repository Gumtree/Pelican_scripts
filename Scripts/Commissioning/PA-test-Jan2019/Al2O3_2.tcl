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
histmem preset 1200

#run moma -44.49 momb -44.49 momc -44.49

#run moma -44.64 momb -44.64 momc -44.64
#run moma -44.60 momb -44.62 momc -44.80
#wait 60

run moma -44.44 momb -44.62 momc -44.88
wait 60

histmem start block
newfile histogram_xyt
save






