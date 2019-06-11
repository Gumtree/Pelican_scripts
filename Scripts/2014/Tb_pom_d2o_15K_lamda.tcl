histmem mode time
histmem preset 3600

#hset /sample/tc1/other/relayCtrlParmLo 1

drive tc1_driveable 15
wait 900

drive schp 1000000

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

