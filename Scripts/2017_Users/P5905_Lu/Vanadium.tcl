

histmem stop

histmem mode time
histmem preset 3600

#run tc1_pres3_setpoint 25
 
#drive tc3_driveable2 225 tc3_driveable 250
#wait 1800

#run tc1_pres3_setpoint 25

histmem start block
newfile histogram_xyt
save

