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

#3 additional hours at 1.5K
histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem stop

histmem mode time
histmem preset 1200

#run tc1_pres3_setpoint 65

#drive tc1_temp0_setpoint 200 tc3_driveable 200

#run tc1_pres3_setpoint 25

#drive tc1_temp0_setpoint 225 tc2_temp6_setpoint 225
#drive tc1_temp0_setpoint 225
#wait 300

drive tc1_temp0_setpoint 10 

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 20 

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 30 

histmem start block
newfile histogram_xyt
save

hset /sample/tc2/temp6/auto 1

#hset /
drive tc1_temp0_setpoint 40 tc2_temp6_setpoint 40

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 50 tc2_temp6_setpoint 50

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 60 tc2_temp6_setpoint 60

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 70 tc2_temp6_setpoint 70

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 80 tc2_temp6_setpoint 80

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 90 tc2_temp6_setpoint 90

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 100 tc2_temp6_setpoint 100

histmem stop

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

histmem stop

histmem mode time
histmem preset 1200

drive tc1_temp0_setpoint 110 tc2_temp6_setpoint 110

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 120 tc2_temp6_setpoint 120

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 130 tc2_temp6_setpoint 130

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 140 tc2_temp6_setpoint 140

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 150 tc2_temp6_setpoint 150

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 160 tc2_temp6_setpoint 160

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 170 tc2_temp6_setpoint 170

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 180 tc2_temp6_setpoint 180

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 190 tc2_temp6_setpoint 190

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 200 tc2_temp6_setpoint 200

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 210 tc2_temp6_setpoint 210

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 220 tc2_temp6_setpoint 220

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 225 tc2_temp6_setpoint 225

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 230 tc2_temp6_setpoint 230

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 235 tc2_temp6_setpoint 235

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 240 tc2_temp6_setpoint 240

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 245 tc2_temp6_setpoint 245

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 250 tc2_temp6_setpoint 250

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 255 tc2_temp6_setpoint 255

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 260 tc2_temp6_setpoint 260

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 265 tc2_temp6_setpoint 265

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 270 tc2_temp6_setpoint 270

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 275 tc2_temp6_setpoint 275

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 280 tc2_temp6_setpoint 280

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 285 tc2_temp6_setpoint 285

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 290 tc2_temp6_setpoint 290

histmem start block
newfile histogram_xyt
save

drive tc1_temp0_setpoint 300 tc2_temp6_setpoint 300

histmem stop

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

run tc1_pres3_setpoint 65
run tc1_temp0_setpoint 1.5 tc2_temp6_setpoint 1.5

