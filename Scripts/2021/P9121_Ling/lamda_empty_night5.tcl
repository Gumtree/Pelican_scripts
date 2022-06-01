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
histmem preset 1800





drive mscor -10


 drive mscor 0
 
 histmem start block
 newfile histogram_xyt
 save

 drive mscor 45
 
 histmem start block
 newfile histogram_xyt
 save

drive mscor 90

histmem start block
newfile histogram_xyt
save

drive schp 4072640
 
 drive mscor -10
 
 
  drive mscor 0
  
  histmem start block
  newfile histogram_xyt
  save
 
  drive mscor 45
  
  histmem start block
  newfile histogram_xyt
  save
 
 drive mscor 90
 
 histmem start block
 newfile histogram_xyt
 save
 
 
 drive schp  4512030.000000
 drive tc2_setpoint 800
 
 drive mscor -10
 
 
  drive mscor 0
  
  histmem start block
  newfile histogram_xyt
  save
 
  drive mscor 45
  
  histmem start block
  newfile histogram_xyt
  save
 
 drive mscor 90
 
 histmem start block
 newfile histogram_xyt
 save
 
 drive schp 4072640
  
  drive mscor -10
  
  
   drive mscor 0
   
   histmem start block
   newfile histogram_xyt
   save
  
   drive mscor 45
   
   histmem start block
   newfile histogram_xyt
   save
  
  drive mscor 90
  
  histmem start block
  newfile histogram_xyt
  save
  
  drive schp  4512030.000000
   
 drive mscor -10
 
 
  for {set i 0} {$i < 45} {incr i} {
	  drive mscor [expr 1 + $i*2]
	  histmem start block
	  newfile histogram_xyt
	  save
  } 
  