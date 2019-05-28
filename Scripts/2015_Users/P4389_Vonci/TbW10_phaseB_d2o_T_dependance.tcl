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

drive schp 4068148.000

histmem start block
newfile histogram_xyt
save

drive schp 4529060.00

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save



#move to 10K colect l and l/2
drive tc1_temp0_setpoint 10
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4529060.00

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


histmem start block
newfile histogram_xyt
save

#move to 30K colect l and l/2
drive schp 4068148.000
drive tc1_temp0_setpoint 30
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4529060.00

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#move to 50K colect l and l/2
drive schp 4068148.000
drive tc1_temp0_setpoint 50
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4529060.00

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

#move to 70K colect l and l/2
drive schp 4068148.000
drive tc1_temp0_setpoint 70
wait 300

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

drive schp 4529060.00

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save


#move to 90K colect l and l/2
drive schp 4068148.000
drive tc1_temp0_setpoint 90
wait 300

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

drive schp 4529060.00

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
