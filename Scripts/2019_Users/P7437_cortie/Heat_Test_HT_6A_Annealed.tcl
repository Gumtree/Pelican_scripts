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

# room temperature 6 A measurements
drive schp 8557140

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

# room temperature 3 A measurements
run schp 9158970
wait 60
histmem start block
newfile histogram_xyt
save

# 400 K 6 A measurements
drive  schp 8557140
wait 60


# heat to 125 C 

hset /sample/tc1/pres5/setpoint 5
hset /sample/tc1/pres5/setpoint 15
hset /sample/tc2/sensor/setpoint1 297
hset /sample/tc2/sensor/setpoint2 300
wait 60
hset /sample/tc2/sensor/setpoint2 350
wait 60
drive tc2_driveable2 400
 wait 300 

# Measure as function of time at 6 A to watch H signal
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

# Change to lambda on 2 
run schp 9158970
wait 60

histmem start block
newfile histogram_xyt
save



# Cool down sample ready for next morning
hset /sample/tc1/pres5/setpoint 15
hset /sample/tc2/sensor/setpoint1 297
#drive tc1_temp6_setpoint 300 
hset /sample/tc2/sensor/setpoint2 300
wait 60
hset /sample/tc2/sensor/setpoint2 300
wait 60
drive tc2_driveable2 300
wait 300

# room temperature 6 A measurements
drive schp 8557140


