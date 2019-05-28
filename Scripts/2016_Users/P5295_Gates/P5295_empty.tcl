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

# Gas-loading empty can 
# Temperature = 100K
# Lambda = 6Å

histmem mode time
histmem preset 3600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

# Heat to 300K

hset sample/tc2/temp6/auto 1
hset sample/tc1/pres3/setpoint 5
drive tc1_temp0_setpoint 300 tc2_temp6_setpoint 300

wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



