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

#50 K
#decrease gas pressure to increase cooling rate
hset /sample/tc1/pres5/setpoint 35
#set temperature for LT stick
hset /sample/tc1/temp6/auto 1
#this is for the sample position on LT stick
hset /sample/tc1/temp6/setpoint 50
#this is for VTI set lower thatn the required setpoint.
hset /sample/tc2/sensor/setpoint1 40 

run schp 4512030
#lambda while getting stable
histmem start block
newfile histogram_xyt
save

#lambda(2 hours)
run schp 4072640

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#lambda/2  (2 hours)
run schp 4512030

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



#200 K
#decrease gas pressure to increase cooling rate
hset /sample/tc1/pres5/setpoint 20
#set temperature for LT stick
hset /sample/tc1/temp6/auto 1
#this is for the sample position on LT stick
hset /sample/tc1/temp6/setpoint 200
#this is for VTI set lower thatn the required setpoint.
hset /sample/tc2/sensor/setpoint1 150 

##lambda/2 (3 hours)
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

#lambda(2 hours)
run schp 4072640

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


#start cooling sample again to get ready for the sample chance
hset /sample/tc2/sensor/setpoint1 1
hset /sample/tc1/temp6/setpoint 1
hset /sample/tc1/pres5/setpoint 50
