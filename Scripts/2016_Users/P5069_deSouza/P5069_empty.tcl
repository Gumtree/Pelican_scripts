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


#drive tc1_temp0_setpoint 10

#drive tc1_pres3_setpoint 8
#drive tc1_temp0_setpoint 4

#drive tc1_pres3_setpoint 5
#run tc1_temp0_setpoint 1.5

#drive tc1_temp0_setpoint 1.6 
#wait 600


histmem mode time
histmem preset 3600

drive tc1_temp0_setpoint 279 tc2_temp6_setpoint 279 
wait 1800
#remember, you must switch on auto=1 of temp 6 of tc2

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

drive tc1_temp0_setpoint 298 tc2_temp6_setpoint 298 
wait 1800

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


