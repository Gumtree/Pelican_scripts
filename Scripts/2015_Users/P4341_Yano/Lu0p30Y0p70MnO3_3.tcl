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

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc1_temp0_setpoint 40

wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 70
hset /sample/tc2/temp6/auto 1
drive tc2_temp6_setpoint 70
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 80
drive tc2_temp6_setpoint 80
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 90
drive tc2_temp6_setpoint 90
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 120
drive tc2_temp6_setpoint 120
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 150
drive tc2_temp6_setpoint 150
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 200
drive tc2_temp6_setpoint 200
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 250
drive tc2_temp6_setpoint 250
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save
