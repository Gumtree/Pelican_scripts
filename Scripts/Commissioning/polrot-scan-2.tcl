

histmem stop
histmem mode time
histmem preset 300


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550

drive polrot 6.0
lf_freq 171000

for {set i 0} {$i < 20} {incr i} {
	drive polrot [expr 6.0 - $i*0.1]
	lf_pagc 0
	histmem start block
	newfile histogram_xyt
	save
	lf_pagc 74
	wait 5
	histmem start block
	newfile histogram_xyt
	save
	
}


drive polrot 5.2