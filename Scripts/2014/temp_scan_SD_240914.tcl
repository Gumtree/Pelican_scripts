histmem mode time
histmem preset 3600

rco oscillate stop
rco speed 0.07

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

drive tc1_driveable 400
wait 1800

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

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive tc1_driveable 350


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


