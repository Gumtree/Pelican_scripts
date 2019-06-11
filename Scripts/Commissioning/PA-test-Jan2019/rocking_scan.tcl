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


histmem mode time
histmem preset 1400
histmem stop


drive scor 60

 for {set i 0} {$i < 40} {incr i} {
	  drive scor [expr 60 + $i*0.5]
	  histmem start block
	  newfile histogram_xyt
	  save
  }
  
