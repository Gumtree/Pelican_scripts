rco speed 0.073453
rco accel 0.073453
rco decel 0.073453
rco oscillate stop

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem stop
scor speed 0.5

title 3930_Shi_Guosheng

histmem mode time
histmem preset 600

drive scor 110

histmem start block
newfile histogram_xyt
save

drive scor 112

histmem start block
newfile histogram_xyt
save

drive scor 114

histmem start block
newfile histogram_xyt
save

drive scor 116

histmem start block
newfile histogram_xyt
save

drive scor 118

histmem start block
newfile histogram_xyt
save

drive scor 120

histmem start block
newfile histogram_xyt
save

