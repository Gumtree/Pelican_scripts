histmem mode time
histmem preset 1800

drive tc1_driveable 100
wait 1200
drive scor 80


for {set i 0} {$i < 40} {incr i} {
	drive scor [expr 80 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

