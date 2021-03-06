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


#Next define how you want to count.  This is normally time.  ANd usually presets of 1 hour.

histmem stop
histmem mode time
histmem preset 3600

drive tc2_driveable2 5
drive schp 4080000

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

drive tc2_driveable2 10
drive schp 4080000

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3
	
histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

drive schp 4516830

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

drive tc2_driveable2 100 tc1_temp6_setpoint 100
drive schp 4080000

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3
	
histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3


drive schp 4516830

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3

histmem start block
newfile histogram_xyt
save
hset /sample/tc2/heater/heaterRange_2 3


