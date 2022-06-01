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


#neddle valve
#hset /sample/tc1/pres3/setpoint 8


#4.69A
drive schp 4077780.0
drive mra 0.43 mrb 0.43 mrc 0.43

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#2.345 A
drive schp 4514140.0
drive mra 0.47 mrb 0.47 mrc 0.47

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save








