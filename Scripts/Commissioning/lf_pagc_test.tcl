

histmem stop
histmem mode time
histmem preset 120


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550

lf_pagc 0
histmem start block
newfile histogram_xyt
save

lf_pagc 100
wait 60
histmem start block
newfile histogram_xyt
save


lf_pagc 0
wait 60
histmem start block
newfile histogram_xyt
save

