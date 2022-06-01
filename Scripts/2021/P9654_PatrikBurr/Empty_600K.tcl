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



hset /sample/tc2/control/ramp_Loop_2 1,5
drive tc2_driveable2 500

hset /sample/tc2/control/ramp_Loop_2 1,5
drive tc2_driveable2 550

hset /sample/tc2/control/ramp_Loop_2 1,2
drive tc2_driveable2 600

#4.69A
drive schp 4077780.0
drive mra 0.43 mrb 0.43 mrc 0.43

histmem start block
newfile histogram_xyt
save

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

histmem start block
newfile histogram_xyt
save


hset /sample/tc1/pres3/setpoint 60
hset /sample/tc2/control/ramp_Loop_2 0,5
drive tc2_driveable2 300





