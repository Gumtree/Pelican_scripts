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

#set temperature for LT stick
hset /sample/tc1/pres5/setpoint 60
#turn heater back on in case it was disconnected
hset /sample/tc1/temp6/auto 1
#this is for the sample position on LT stick
hset /sample/tc1/temp6/setpoint 100
#this is for VTI set lower thatn the required setpoint.
hset /sample/tc2/sensor/setpoint1 80 


#lambda/2 runs while cooling
run schp 4512030
wait 60

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save


#next set the VTI to warm up after you've over-cooled it
drive tc2_driveable 100 tc1_temp6_setpoint 100
hset /sample/tc1/pres5/setpoint 20

#lambda (3 hours)
run schp 4072640
wait 60

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


#lambda/2 (9 hours)
run schp 4512030

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



#set temperature for LT stick
hset /sample/tc1/pres5/setpoint 60
#turn heater back on in case it was disconnected
hset /sample/tc1/temp6/auto 1
#this is for the sample position on LT stick
hset /sample/tc1/temp6/setpoint 50
#this is for VTI set lower thatn the required setpoint.
hset /sample/tc2/sensor/setpoint1 40 




