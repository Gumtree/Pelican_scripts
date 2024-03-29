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

#run moma -44.49 momb -44.49 momc -44.49

#lambda
#drive schp 4072640.0

#lamda/2
#drive schp 4512030.0

#decrease gas pressure to increase cooling rate
#hset /sample/tc1/pres5/setpoint 35
#set temperature for LT stick
#hset /sample/tc1/temp6/auto 1
#this is for the sample position on LT stick
#hset /sample/tc1/temp6/setpoint 50
#this is for VTI set lower thatn the required setpoint.
#hset /sample/tc2/sensor/setpoint1 40 

hset /sample/tc2/sensor/setpoint1 99
drive tc2_driveable2 100
hset /sample/tc1/pres5/setpoint 10


drive schp 4072640.0


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


