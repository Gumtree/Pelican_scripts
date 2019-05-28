

histmem stop
histmem mode time
histmem preset 60


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550




 for {set i 0} {$i < 100} {incr i} {
	 lf_pagc [expr 0 + $i*2]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
