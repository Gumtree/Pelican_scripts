histmem mode time
histmem preset 1800

rco oscillate stop
rco speed 0.07

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start


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

drive tc1_driveable 290
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 280
wait 600


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 260
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


drive tc1_driveable 210
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 150
wait 600

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



#hset /sample/tc1/other/relayCtrlParmLo 0

drive tc1_driveable 100

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

