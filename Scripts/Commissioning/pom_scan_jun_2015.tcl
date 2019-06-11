rco speed 0.073453
rco accel 0.073453
rco decel 0.073453
rco oscillate stop

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start


histmem mode time
histmem preset 60


histmem start block
newfile histogram_xyt
save
drive pom 0.4
drive stth 59

histmem start block
newfile histogram_xyt
save
drive pom 0.6
drive stth 59

histmem start block
newfile histogram_xyt
save
drive pom 0.8
drive stth 59

histmem start block
newfile histogram_xyt
save
drive pom 1.0
drive stth 59

histmem start block
newfile histogram_xyt
save
drive pom 1.2
drive stth 59

histmem start block
newfile histogram_xyt
save
drive pom 1.4
drive stth 59


histmem start block
newfile histogram_xyt
savedrive pom 1.6
drive stth 59

histmem start block
newfile histogram_xyt
savedrive pom 1.8
drive stth 59

