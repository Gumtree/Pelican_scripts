histmem mode time
histmem preset 7200

hset /sample/tc1/other/relayCtrlParmLo 1


drive tc1_driveable 430

wait 1800

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 550

wait 1800


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc1_driveable 650

wait 1800


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 750

wait 1800

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc1_driveable 300

hset /sample/tc1/other/relayCtrlParmLo 0

wait 1800

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