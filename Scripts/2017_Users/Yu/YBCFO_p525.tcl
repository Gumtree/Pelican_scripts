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

#run tc1_pres3_setpoint 65
 
#drive tc1_temp0_setpoint 200 tc3_driveable 200

#run tc1_pres3_setpoint 25

#drive tc3_driveable2 300 tc3_driveable 400

#hset /sample/tc3/sensor/setpoint1 300
#hset /sample/tc3/sensor/setpoint2 300



#drive tc3_driveable2 1 tc3_driveable 1
#wait 300

 drive tc3_driveable2 10 tc3_driveable 10
 wait 300
 
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
 
  drive tc3_driveable2 25 tc3_driveable 25
 wait 300
 
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
 
  drive tc3_driveable2 49 tc3_driveable 50
 wait 300
 
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
 

 drive tc3_driveable2 99 tc3_driveable 100
 wait 300
 
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
 
 drive tc3_driveable2 199 tc3_driveable 200
 wait 300
 
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
 
drive tc3_driveable2 249 tc3_driveable 250
wait 300

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

 drive tc3_driveable2 297 tc3_driveable 300
 wait 300
 
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
 
 