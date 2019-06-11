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


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550

#2 hours for T=0.2 K

#histmem start block
#newfile histogram_xyt
#save

oxfordsetdtemp 0.550
wait 300
oxfordsetdtemp 0.600
wait 300
oxfordsetdtemp 0.650
wait 300
oxfordsetdtemp 0.700
wait 300
oxfordsetdtemp 0.750
wait 300
oxfordsetdtemp 0.800
wait 1800

#8 hours for T=0.8 K

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


oxfordsetdtemp 0.850
wait 300
oxfordsetdtemp 0.900
wait 300
oxfordsetdtemp 0.950
wait 300
oxfordsetdtemp 1.000
wait 1800

#4 hours for T=1 K

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
