histmem mode time
histmem preset 1800

#hset /sample/tc1/other/relayCtrlParmLo 1

#drive tc1_driveable 30

#wait 900

histmem start block
newfile histogram_xyt
save

drive schp 216837

histmem start block
newfile histogram_xyt
save

