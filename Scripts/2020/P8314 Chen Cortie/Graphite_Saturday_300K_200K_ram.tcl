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


##hset /sample/tc3/heater/heaterRange_1 3
##hset /sample/tc1/pres5/setpoint 60
##hset /sample/tc2/sensor/setpoint1 295
#drive tc3_driveable 300 




histmem start block
newfile histogram_xyt
save


#try to increase cooling rate for first hour
hset /sample/tc3/heater/heaterRange_1 3
hset /sample/tc1/pres5/setpoint 60
hset /sample/tc2/sensor/setpoint1 1

#do I need to set both of these below for cooling the vapour D stick?
hset /sample/tc3/sensor/setpoint1 200 
hset /sample/tc3/sensor/setpoint2 200

##just used hset for both.  Allow it to cool for four horus

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

### Then hset VTI back to 200 K
hset /sample/tc2/sensor/setpoint1 200


histmem start block
newfile histogram_xyt
save

#The above file would still be equilibrating.

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


