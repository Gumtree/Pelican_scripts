

histmem stop

histmem mode time
histmem preset 3600

run tc1_pres3_setpoint 20
 
drive tc3_driveable2 297 tc3_driveable 300

#run tc1_pres3_setpoint 25

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
 
 drive tc3_driveable2 297 tc3_driveable 400
 drive tc3_driveable2 297 tc3_driveable 500
 drive tc3_driveable2 297 tc3_driveable 600
 drive tc3_driveable2 297 tc3_driveable 650
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

run tc1_pres3_setpoint 65 
run tc3_driveable2 100 
drive tc3_driveable 300

histmem start block
newfile histogram_xyt
save