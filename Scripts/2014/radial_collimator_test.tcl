histmem mode time
histmem preset 3600

#first collect data with the current configuration.
histmem start block
newfile histogram_xyt
save

#first do a small oscillation.  Assume symmetric about 0.  Note limits aren't

rco oscillate_low -0.25
rco oscillate_high 0.25
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate_low -0.5
rco oscillate_high 0.5
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate_low -0.75
rco oscillate_high 0.75
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate_low -1.0
rco oscillate_high 1.0
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate_low -1.25
rco oscillate_high 1.25
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate_low -1.50
rco oscillate_high 1.50
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save

#

rco oscillate_low -1.75
rco oscillate_high 1.75
rco oscillate_count 0
rco oscillate start

histmem start block
newfile histogram_xyt
save


#ensure the radial collimator has stopped.

rco oscillate stop


#next remove the radial collimator
drive vrcz 1
histmem start block
newfile histogram_xyt
save

#
#repeat several times to use up the night with good stats.
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
histmem start block
newfile histogram_xyt
save
#
