#The section below ensures that the radial collimator starts.  This should be in every script

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

drive tc1_temp6_setpoint 100 
 drive tc2_driveable 100   
 histmem start block
 newfile histogram_xyt
 save

 hset /sample/tc1/pres5/setpoint 5.0
 
 histmem start block
 newfile histogram_xyt
 save
 
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 150 tc1_temp6_setpoint 150  
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
 histmem preset 600

 drive tc2_driveable 155 tc1_temp6_setpoint 155  
 histmem start block
 newfile histogram_xyt
 save

 drive tc2_driveable 160 tc1_temp6_setpoint 160  
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 165 tc1_temp6_setpoint 165  
 histmem start block
 newfile histogram_xyt
 save
 
 histmem mode time
 histmem preset 3600
 

 drive tc2_driveable 170 tc1_temp6_setpoint 170  
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
 histmem preset 600

 drive tc2_driveable 175 tc1_temp6_setpoint 175  
 histmem start block
 newfile histogram_xyt
 save

 drive tc2_driveable 180 tc1_temp6_setpoint 180  
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 185 tc1_temp6_setpoint 185  
 histmem start block
 newfile histogram_xyt
 save
 
 histmem mode time
 histmem preset 3600
 
 drive tc2_driveable 190 tc1_temp6_setpoint 190  
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
 histmem preset 600

 drive tc2_driveable 195 tc1_temp6_setpoint 195  
 histmem start block
 newfile histogram_xyt
 save

 drive tc2_driveable 200 tc1_temp6_setpoint 200  
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 205 tc1_temp6_setpoint 205  
 histmem start block
 newfile histogram_xyt
 save

 histmem mode time
 histmem preset 3600
 
 drive tc2_driveable 210 tc1_temp6_setpoint 210  
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
 histmem preset 600

 drive tc2_driveable 215 tc1_temp6_setpoint 215  
 histmem start block
 newfile histogram_xyt
 save

 drive tc2_driveable 220 tc1_temp6_setpoint 220  
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 225 tc1_temp6_setpoint 225  
 histmem start block
 newfile histogram_xyt
 save
 
 histmem mode time
 histmem preset 3600
 
 drive tc2_driveable 230 tc1_temp6_setpoint 230  
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
 histmem preset 600

 drive tc2_driveable 235 tc1_temp6_setpoint 235  
 histmem start block
 newfile histogram_xyt
 save

 drive tc2_driveable 240 tc1_temp6_setpoint 240  
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 245 tc1_temp6_setpoint 245  
 histmem start block
 newfile histogram_xyt
 save

 
 histmem mode time
 histmem preset 3600
 
 drive tc2_driveable 250 tc1_temp6_setpoint 250  
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
 histmem preset 600

 drive tc2_driveable 255 tc1_temp6_setpoint 255  
 histmem start block
 newfile histogram_xyt
 save

 drive tc2_driveable 260 tc1_temp6_setpoint 260  
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 265 tc1_temp6_setpoint 265  
 histmem start block
 newfile histogram_xyt
 save
 

 histmem mode time
 histmem preset 3600
 
 drive tc2_driveable 270 tc1_temp6_setpoint 270  
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
 histmem preset 600

 drive tc2_driveable 275 tc1_temp6_setpoint 275  
 histmem start block
 newfile histogram_xyt
 save

 drive tc2_driveable 280 tc1_temp6_setpoint 280  
 histmem start block
 newfile histogram_xyt
 save
 
 drive tc2_driveable 285 tc1_temp6_setpoint 285  
 histmem start block
 newfile histogram_xyt
 save
 
 histmem mode time
 histmem preset 3600
 
 drive tc2_driveable 290 tc1_temp6_setpoint 290  
 histmem start block
 newfile histogram_xyt
 save

 histmem start block
 newfile histogram_xyt
 save
 
 histmem start block
 newfile histogram_xyt
 save
 
 hset /sample/tc1/pres5/setpoint 80
 drive tc2_driveable 80 tc1_temp6_setpoint 100

 