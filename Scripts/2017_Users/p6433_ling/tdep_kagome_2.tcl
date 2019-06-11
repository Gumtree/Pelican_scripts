if { [SplitReply [rco osc] ] == "off"} {
	broadcast "WARNING: rco stopped. Restarting"
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
	if { [SplitReply [rco osc] ] == "off"} {
		broadcast "WARNING: rco failed to start"
	} else {
		broadcast "rco restarted"
	}
}

histmem stop
histmem mode time
histmem preset 3600


#drive tc1_temp0_setpoint 300 tc3_driveable2 350

#drive tc3_driveable 450

#drive tc3_driveable 550

drive tc3_driveable2 5

drive schp 4080000

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


drive schp 4516830


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

drive tc3_driveable2 10

drive schp 4080000


histmem start block
newfile histogram_xyt
save
drive schp 4516830

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 15

drive schp 4080000


histmem start block
newfile histogram_xyt
save

drive schp 4516830

histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 20

drive schp 4080000


histmem start block
newfile histogram_xyt
save
drive schp 4516830


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 25

drive schp 4080000


histmem start block
newfile histogram_xyt
save

drive schp 4516830


histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 30

drive schp 4080000


histmem start block
newfile histogram_xyt
save
drive schp 4516830


histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 35

drive schp 4080000


histmem start block
newfile histogram_xyt
save
drive schp 4516830


histmem start block
newfile histogram_xyt
save

drve tc3_driveable2 40

drive schp 4080000


histmem start block
newfile histogram_xyt
save
drive schp 4516830


histmem start block
newfile histogram_xyt
save


drive tc3_driveable2 45

drive schp 4080000


histmem start block
newfile histogram_xyt
save

drive schp 4516830


histmem start block
newfile histogram_xyt
save

drive tc3_driveable2 50

drive schp 4080000


histmem start block
newfile histogram_xyt
save
drive schp 4516830


histmem start block
newfile histogram_xyt
save
