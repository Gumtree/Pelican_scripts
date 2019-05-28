histmem mode time
histmem preset 3600

drive tc1_driveable 5
wait 1200
scor speed 0.5
drive scor 80


for {set i 0} {$i < 40} {incr i} {
	drive scor [expr 80 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

