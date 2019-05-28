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


# heat to 125 C 
# 400 K 6 A measurements
drive  schp 8557140
wait 60

hset /sample/tc1/pres5/setpoint 5
hset /sample/tc1/pres5/setpoint 15
hset /sample/tc2/sensor/setpoint1 297
hset /sample/tc2/sensor/setpoint2 300
wait 60
hset /sample/tc2/sensor/setpoint2 350
wait 60
drive tc2_driveable2 400
 wait 300 

# can at 400 C
histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


# Cool down rapidly
hset /sample/tc1/pres5/setpoint 50
hset /sample/tc2/sensor/setpoint1 1
hset /sample/tc2/sensor/setpoint2 1




