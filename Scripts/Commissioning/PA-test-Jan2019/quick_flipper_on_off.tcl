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
histmem preset 300




	 lf_freq 166000
	 lf_pagc 131
	 histmem start block
	 newfile histogram_xyt
	 save
	 
	 lf_pagc 0
	 
	 histmem start block
	 newfile histogram_xyt
	 save
	 
	 lf_pagc 0
	 
	 

lf_pagc 0
