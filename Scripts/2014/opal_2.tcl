histmem mode time
histmem preset 1800

rco oscillate stop
rco speed 0.07

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

drive tc1_driveable 140
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

hset /sample/tc1/other/relayCtrlParmLo 0

drive tc1_driveable 215
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc1_driveable 240
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 270
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



#hset /sample/tc1/other/relayCtrlParmLo 0

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

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save