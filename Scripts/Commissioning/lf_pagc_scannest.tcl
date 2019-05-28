

histmem stop
histmem mode time
histmem preset 60


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550





 
 for {set i 0} {$i < 50} {incr i} {
	 lf_pagc [expr 50 + $i*2]
		 for {set j 0} {$j < 18} {incr j} {
			 lf_freq [expr 160000 + $j*1000]
			 histmem start block
			 newfile histogram_xyt
			 save
 }	 
 }
