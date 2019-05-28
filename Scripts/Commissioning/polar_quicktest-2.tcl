

histmem stop
histmem mode time
histmem preset 600


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550

lf_freq 166000

lf_pagc 100
wait 5
histmem start block
newfile histogram_xyt
save

lf_pagc 0
wait 5
histmem start block
newfile histogram_xyt
save
