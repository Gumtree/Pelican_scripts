if { [SplitReply [rco osc] ] == /"off/"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
}



histmem mode time
histmem preset 3600



drive tc1_temp0_setpoint 80
drive tc2_temp6_setpoint 80

wait 600

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

drive tc1_temp0_setpoint 150
drive tc2_temp6_setpoint 150

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

drive tc1_temp0_setpoint 200
drive tc2_temp6_setpoint 200

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
