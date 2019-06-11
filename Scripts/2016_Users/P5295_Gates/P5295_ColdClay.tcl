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

# 100% GWC Clay 
# Cool to 100K
# Lambda = 6Å

histmem mode time
histmem preset 3600

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


# Set temperature to 100K

hset sample/tc1/pres3/setpoint 5
hset sample/tc2/temp6/auto 1
drive tc2_temp6_setpoint 100
wait 300

# 6 x 20 minute scans at 100K

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

# Set temperature to T = 110K

drive tc2_temp6_setpoint 110
wait 300

# 1 x 20 minute scan at 110K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 120K

drive tc2_temp6_setpoint 120
wait 300

# 1 x 20 minute scan at 120K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 130K

drive tc2_temp6_setpoint 130
wait 300

# 1 x 20 minute scan at 130K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 140K

drive tc2_temp6_setpoint 140
wait 300

# 1 x 20 minute scan at 140K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 150K

drive tc2_temp6_setpoint 150
wait 300

# 6 x 20 minute scan at 150K
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

# Set temperature to T = 160K

drive tc2_temp6_setpoint 160
wait 300

# 1 x 20 minute scan at 160K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 170K

drive tc2_temp6_setpoint 170
wait 300

# 1 x 20 minute scan at 170K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 180K

drive tc2_temp6_setpoint 180
wait 300

# 6 x 20 minute scans at 180K
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

# Set temperature to T = 190K

drive tc2_temp6_setpoint 190
wait 300

# 1 x 20 minute scan at 190K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 200K

drive tc2_temp6_setpoint 200
wait 300

# 6 x 20 minute scan at 200K
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

drive tc2_temp6_setpoint 210
wait 300

# 1 x 20 minute scan at 210K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 220K

drive tc2_temp6_setpoint 220
wait 300

# 1 x 20 minute scan at 220K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 230K

drive tc2_temp6_setpoint 230
wait 300

# 1 x 20 minute scan at 230K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 235K

drive tc2_temp6_setpoint 235
wait 300

# 6 x 20 minute scans at 235K
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

# Set temperature to T = 240K

drive tc2_temp6_setpoint 240
wait 300

# 1 x 20 minute scan at 240K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 250K

drive tc2_temp6_setpoint 250
wait 300

# 1 x 20 minute scans at 250K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 255K

drive tc2_temp6_setpoint 255
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

drive tc2_temp6_setpoint 260
wait 300

# 6 x 20 minute scans at 260K
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

drive tc2_temp6_setpoint 270
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

drive tc2_temp6_setpoint 275
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

drive tc2_temp6_setpoint 280
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

# Set temperature to T = 290K

drive tc2_temp6_setpoint 290
wait 300

# 1 x 20 minute scans at 290K
histmem start block
newfile histogram_xyt
save

# Set temperature to T = 300K

drive tc2_temp6_setpoint 300
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

# Count for one hour at a time

histmem mode time
histmem preset 3600

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

