
histmem stop
histmem mode time
histmem preset 300


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550


drive schp 4068140

histmem start block
newfile histogram_xyt
save

drive schp 4529060

histmem start block
newfile histogram_xyt
save

