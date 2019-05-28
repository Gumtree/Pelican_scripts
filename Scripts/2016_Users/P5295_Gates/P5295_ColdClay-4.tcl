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

# 85% RH (22% GWC) Clay 
# Set temperature to 200K
# Lambda = 4.75 Ang


histmem mode time
histmem preset 1200


# Set temperature to T = 200K


drive tc1_temp0_setpoint 200 tc2_temp6_setpoint 200
wait 300


# 6 x 20 minute scans at 200K

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

# Set temperature to T = 210K

drive tc1_temp0_setpoint 210 tc2_temp6_setpoint 210
wait 300


# 1 x 20 minute scan at 210K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 220K

drive tc1_temp0_setpoint 220 tc2_temp6_setpoint 220
wait 300


# 1 x 20 minute scan at 220K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 230K

drive tc1_temp0_setpoint 230 tc2_temp6_setpoint 230
wait 300


# 1 x 20 minute scan at 230K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 240K

drive tc1_temp0_setpoint 240 tc2_temp6_setpoint 240
wait 300


# 1 x 20 minute scan at 240K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 250K

drive tc1_temp0_setpoint 250 tc2_temp6_setpoint 250
wait 300


# 1 x 20 minute scan at 250K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 255K

drive tc1_temp0_setpoint 255 tc2_temp6_setpoint 255
wait 300

# 6 x 20 minute scans at 255K


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


# 9 x 20 minute scans at 275K
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

drive tc1_temp0_setpoint 200 tc2_temp6_setpoint 200



