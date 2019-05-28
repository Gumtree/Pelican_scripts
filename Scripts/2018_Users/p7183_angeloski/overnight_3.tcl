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

#histmem stop
histmem mode time
histmem preset 3600


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable2 290 tc3_driveable 300
#hset /sample/tc1/pres5/setpoint 60
#drive tc1_temp6_setpoint 2 tc2_driveable 2
#drive tc3_driveable2 40
#wait 3600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem mode time
histmem preset 120

hset /sample/tc2/sensor/setpoint1 286
hset /sample/tc1/temp6/setpoint 286

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


drive tc1_temp6_setpoint 286 tc2_driveable 286

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
histmem preset 120

hset /sample/tc2/sensor/setpoint1 281
hset /sample/tc1/temp6/setpoint 281

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


drive tc1_temp6_setpoint 281 tc2_driveable 281

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
histmem preset 120

hset /sample/tc2/sensor/setpoint1 277
hset /sample/tc1/temp6/setpoint 277

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




drive tc1_temp6_setpoint 277 tc2_driveable 277

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


hset /sample/tc2/sensor/setpoint1 270
hset /sample/tc1/temp6/setpoint 270

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



drive tc1_temp6_setpoint 270 tc2_driveable 270

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
histmem preset 120

hset /sample/tc2/sensor/setpoint1 263
hset /sample/tc1/temp6/setpoint 263

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


drive tc1_temp6_setpoint 263 tc2_driveable 263

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
histmem preset 120

hset /sample/tc2/sensor/setpoint1 273
hset /sample/tc1/temp6/setpoint 273

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


drive tc1_temp6_setpoint 273 tc2_driveable 273

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
histmem preset 120

hset /sample/tc2/sensor/setpoint1 277
hset /sample/tc1/temp6/setpoint 277

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


drive tc1_temp6_setpoint 277 tc2_driveable 277

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
histmem preset 120

hset /sample/tc2/sensor/setpoint1 290
hset /sample/tc1/temp6/setpoint 290

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


drive tc1_temp6_setpoint 290 tc2_driveable 290

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

