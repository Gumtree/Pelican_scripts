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

drive schp 408000

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

hset /sample/tc1/pres5/setpoint 60
drive tc2_driveable 30
       
histmem start block
newfile histogram_xyt
save
	
histmem start block
newfile histogram_xyt
save
	
histmem start block
newfile histogram_xyt
save

hset /sample/tc1/pres5/setpoint 5
	
histmem start block
newfile histogram_xyt
save
	   
histmem start block
newfile histogram_xyt
save
    
histmem start block
newfile histogram_xyt
save    

drive schp 4516830

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
