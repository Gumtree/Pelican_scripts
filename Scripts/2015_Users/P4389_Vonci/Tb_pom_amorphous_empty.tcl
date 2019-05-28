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

drive schp 4068140


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive schp 4529060


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 50
wait 600
drive schp 4068140


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive schp 4529060

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc1_temp0_setpoint 100
hset /sample/tc2/temp6/auto 1
drive tc2_temp6_setpoint 100
wait 600

drive schp 4068140


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive schp 4529060

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

run tc1_temp0_setpoint 0
run tc2_temp6_setpoint 0


drive schp 4068140


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive schp 4529060

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



