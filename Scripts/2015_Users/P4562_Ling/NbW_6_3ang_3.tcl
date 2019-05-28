if { [SplitReply [rco osc] ] == /"off/"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
}




histmem mode time
histmem preset 3600


drive schp 8594380.000000


histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



drive schp 4136550

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


run tc2_setpoint 950
wait 2400

drive schp 8594380.000000

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

drive schp 4136550

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

run tc2_setpoint 300
wait 7200

drive schp 8594380.000000

histmem start block
newfile histogram_xyt
save


drive schp 4136550

histmem start block
newfile histogram_xyt
save



run tc2_setpoint 0