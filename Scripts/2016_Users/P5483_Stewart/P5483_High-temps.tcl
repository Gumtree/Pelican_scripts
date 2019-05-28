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

histmem mode time
histmem preset 3600


# HoFeO3 sample 40K, lambda=6A

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

# HoFeO3 sample 50K, lambda=6A

drive tc1_temp0_setpoint 50
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

# HoFeO3 sample 60K, lambda=6A

hset /sample/tc2/temp6/auto 1
drive tc1_temp0_setpoint 60 tc2_temp6_setpoint 60
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

# HoFeO3 sample 120K, lambda=6A

drive tc1_temp0_setpoint 120 tc2_temp6_setpoint 120
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


