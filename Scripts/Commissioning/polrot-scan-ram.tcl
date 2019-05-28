

histmem stop
histmem mode time
histmem preset 300


#drive tc1_temp0_setpoint 300 tc3_driveable 350

#drive tc3_driveable 450

#drive tc3_driveable 550

drive polrot 4.5
lf_freq 171000

for {set i 0} {$i < 6} {incr i} {
	drive polrot [expr 4.5 + $i*0.1]
	histmem start block
	newfile histogram_xyt
	save
	
}


drive polrot 4.8