histmem mode time
histmem preset 3600






histmem start block
newfile histogram_xyt
save

drive tc1_driveable 250
wait 900

hset /sample/tc1/other/relayCtrlParmLo 0
  
histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



drive tc1_driveable 350
wait 900


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save
