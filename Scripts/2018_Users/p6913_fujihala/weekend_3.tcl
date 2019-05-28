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
#Above.  This sets the coutning mode as time.
histmem preset 3600 
#above.  This sets the counting time per file.


#drive schp 9135710   
#the above command rephases the choppers to switch to lamda/2
#drive schp 8557140   
#the above command rephases the choppers to switch to lamda

drive tc3_driveable2 15  
#the abovecommand changes the temperature of the VTI
wait 600  #this issues a wait.  The time is given in seconds.


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
    

drive tc3_driveable2 25  
wait 600

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
    


drive tc3_driveable2 1.6  
wait 600

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


