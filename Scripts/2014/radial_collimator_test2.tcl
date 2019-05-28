histmem mode time
histmem preset 7200

#first collect data with the current configuration.
histmem start block
newfile histogram_xyt
save
#initially low is -2.3, high 1.8 speed 0.073453 accel 0.073453


#first do a small oscillation.  Assume symmetric about 0.  Note limits aren't

#rco speed 0.073453
#rco accel 0.073453
#rco decel 0.073453
rco oscillate stop


rco speed 0.01


rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate stop
rco speed 0.02

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate stop
rco speed 0.03

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate stop
rco speed 0.04

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate stop
rco speed 0.05

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate stop
rco speed 0.06

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate stop
rco speed 0.07

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

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
