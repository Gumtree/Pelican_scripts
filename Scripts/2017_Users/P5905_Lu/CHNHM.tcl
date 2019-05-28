

histmem stop

histmem mode time
histmem preset 3600

#run tc1_pres3_setpoint 25
 
 
 drive tc3_driveable2 135 tc2_temp6_setpoint 140
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
 
 drive tc3_driveable2 175 tc2_temp6_setpoint 180
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
 
 drive tc3_driveable2 220 tc2_temp6_setpoint 225
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
 
 drive tc3_driveable2 245 tc2_temp6_setpoint 250
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
 
 drive tc3_driveable2 270 tc2_temp6_setpoint 275
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

 drive tc3_driveable2 295 tc2_temp6_setpoint 300
