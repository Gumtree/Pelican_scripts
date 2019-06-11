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
histmem preset 600


#lambda

#drive schp 4072730

#halflambda

#drive schp 4507070

#drive tc1_pres3_setpoint 5

#drive tc3_driveable2 4 tc2_temp6_setpoint 4
#wait 600

#run tc3_driveable2 10 tc2_temp6_setpoint 10
#wait 600

#drive schp 4080000


#drive schp 4516830

#drive tc2_driveable 5 drive tc1_temp6_setpoint 5
#wait 300

#hset /sample/tc1/pres5/setpoint 10


drive tc2_driveable 180 tc1_temp6_setpoint 220.0
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 200 tc1_temp6_setpoint 240.0
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 260
wait 300

histmem start block
newfile histogram_xyt
save

#drive schp 4080000
#drive schp 4516830

drive tc2_driveable 240 tc1_temp6_setpoint 265
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 270
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 273
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 275
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 277
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 280
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 285
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 290
wait 300

histmem start block
newfile histogram_xyt
save

drive tc2_driveable 240 tc1_temp6_setpoint 300
wait 300

histmem start block
newfile histogram_xyt
save

histmem preset 3600
;hset /sample/tc1/pres5/setpoint 60
run tc2_driveable 280 

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