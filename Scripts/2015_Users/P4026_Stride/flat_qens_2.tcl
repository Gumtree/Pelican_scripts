if { [SplitReply [rco osc] ] == "off"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	rco oscillate_count 0
	rco oscillate start
	wait 5
}

histmem mode time
histmem preset 3600






drive tc2_temp6_setpoint 210


histmem mode time
histmem preset 3600


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

drive tc2_temp6_setpoint 240


histmem mode time
histmem preset 3600


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


drive tc2_temp6_setpoint 273


histmem mode time
histmem preset 3600


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
