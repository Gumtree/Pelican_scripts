#The section below ensures that the radial collimator starts.  This should be in every script

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


#Next define how you want to count.  This is normally time.  ANd usually presets of 1 hour.

histmem stop
histmem mode time
histmem preset 600

#before starting this script set the start the sample cooling.  add these lines here

#line below turns off the heater on the transfer line
hset /sample/tc3/heater/heaterRange_2 0

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




drive tc1_temp0_setpoint 150
drive tc2_driveable 150

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 160
drive tc2_driveable 160

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 170
drive tc2_driveable 170

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 180
drive tc2_driveable 180

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

histmem mode time
histmem preset 600

drive tc1_temp0_setpoint 190
drive tc2_driveable 190

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 200
drive tc2_driveable 200

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 210
drive tc2_driveable 210

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 220
drive tc2_driveable 220

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

histmem mode time
histmem preset 600

drive tc1_temp0_setpoint 230
drive tc2_driveable 230

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 240
drive tc2_driveable 240

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 250
drive tc2_driveable 250

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 260
drive tc2_driveable 260

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

histmem mode time
histmem preset 600

drive tc1_temp0_setpoint 270
drive tc2_driveable 270

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 280
drive tc2_driveable 280

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 290
drive tc2_driveable 290

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 295
drive tc2_driveable 295

histmem mode time
histmem preset 3600

hset /sample/tc3/heater/heaterRange_2 3

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



