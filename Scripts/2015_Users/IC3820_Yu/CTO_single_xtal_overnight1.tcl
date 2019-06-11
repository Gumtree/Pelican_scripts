histmem mode time
histmem preset 3600

drive tc1_driveable 22


scor speed 0.5

drive scor 251


for {set i 0} {$i < 48} {incr i} {
	drive scor [expr 251 + $i*0.20]
	histmem start block
	newfile histogram_xyt
	save
}


