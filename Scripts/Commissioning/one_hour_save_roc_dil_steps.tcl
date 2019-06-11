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

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.100

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.150

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.200

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.250

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.300

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.350

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.400

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.450


histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save


oxfordsetdtemp 0.500

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.550

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.650

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.700

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.750

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.800

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.850

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


oxfordsetdtemp 0.900

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 0.950

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


oxfordsetdtemp 1.000

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.05

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


oxfordsetdtemp 1.100

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.150

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.200

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.250

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.350

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.400

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.450

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.500

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.550

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.650

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.750

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

oxfordsetdtemp 1.800

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save