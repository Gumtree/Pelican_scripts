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

# 100% GWC Clay 
# Set temperature to 255K
# Lambda = 6 ang

drive tc1_temp0_setpoint 255 tc2_temp6_setpoint 255
wait 300

# 6 x 20 minute scans at 255K

histmem mode time
histmem preset 1200

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

# Set temperature to T = 260K

drive tc1_temp0_setpoint 260 tc2_temp6_setpoint 260
wait 300


# 6 x 20 minute scan at 260K
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

# Set temperature to T = 265K

drive tc1_temp0_setpoint 265 tc2_temp6_setpoint 265
wait 300


# 6 x 20 minute scan at 265K
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


# Set temperature to T = 270K

drive tc1_temp0_setpoint 270 tc2_temp6_setpoint 270
wait 300


# 6 x 20 minute scans at 270K
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

# Set temperature to T = 275K

drive tc1_temp0_setpoint 275 tc2_temp6_setpoint 275
wait 300


# 6 x 20 minute scans at 275K
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

# Set temperature to T = 280K

drive tc1_temp0_setpoint 280 tc2_temp6_setpoint 280
wait 300


# 6 x 20 minute scans at 280K
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

# Set temperature to T = 285K

drive tc1_temp0_setpoint 285 tc2_temp6_setpoint 285
wait 300


# 6 x 20 minute scans at 285K
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

# Set temperature to T = 290K

drive tc1_temp0_setpoint 290 tc2_temp6_setpoint 290
wait 300


# 6 x 20 minute scans at 290K
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

# Set temperature to T = 295K

drive tc1_temp0_setpoint 295 tc2_temp6_setpoint 295
wait 300


# 6 x 20 minute scans at 295K
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

# Set temperature to T = 300K

drive tc1_temp0_setpoint 300 tc2_temp6_setpoint 300
wait 300


# 6 x 20 minute scans at 300K
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





