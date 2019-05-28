histmem mode time
histmem preset 3600

rco oscillate start

hset /sample/tc1/other/relayCtrlParmLo 1

drive tc1_driveable 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 100
wait 1800

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 325
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

drive tc1_driveable 350
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

drive tc1_driveable 375
wait 1800

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc1/other/relayCtrlParmLo 0

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 400
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


drive tc1_driveable 320
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