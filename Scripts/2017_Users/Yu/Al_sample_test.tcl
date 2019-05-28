

histmem stop

histmem mode time
histmem preset 3600

#run tc1_pres3_setpoint 25
 
#run tc3_driveable2 297 
#drive tc3_driveable 300

#run tc1_pres3_setpoint 25

histmem start block
newfile histogram_xyt
save

