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


#maximum pressure
#hset /sample/tc1/pres5/setpoint 5
#set temperature for LT stick
#hset /sample/tc1/temp6/auto 1
#this is for the sample position on LT stick
#hset /sample/tc1/temp6/setpoint 0
##this is for VTI set lower thatn the required setpoint.
#hset /sample/tc2/sensor/setpoint1 0 


#lambda/2 (3 hours)
#run schp 4512030

#histmem start block
#newfile histogram_xyt
#save

#histmem start block
#newfile histogram_xyt
#save

#histmem start block
#newfile histogram_xyt
#save

#lambda (2 hours)
#run schp 4072640

#histmem start block
#newfile histogram_xyt
#save

#histmem start block
#newfile histogram_xyt
#save

#maximum pressure
hset /sample/tc1/pres5/setpoint 20
#set temperature for LT stick
hset /sample/tc1/temp6/auto 1
#this is for the sample position on LT stick
hset /sample/tc1/temp6/setpoint 100
#this is for VTI set lower thatn the required setpoint.
hset /sample/tc2/sensor/setpoint1 90 

#lambda/2 (3 hours)
run schp 4512030

#histmem start block
#newfile histogram_xyt
#save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#lambda (12 hours, or until end)
run schp 4072640

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


