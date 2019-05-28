

histmem stop
histmem mode time
histmem preset 1800


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550


lf_freq 166000

for {set i 0} {$i < 72} {incr i} {
	lf_pagc 131
	histmem start block
	newfile histogram_xyt
	save
	lf_pagc 0
	wait 5
	histmem start block
	newfile histogram_xyt
	save
	lf_pagc 0
	wait 5
	histmem start block
	newfile histogram_xyt
	save
	lf_pagc 131
	wait 5
	histmem start block
	newfile histogram_xyt
	save
}


lf_pagc 0
