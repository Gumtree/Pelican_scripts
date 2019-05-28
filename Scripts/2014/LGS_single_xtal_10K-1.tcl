histmem mode time
histmem preset 1800

scor speed 0.5
drive scor 150
drive tc1_driveable 10
wait 1800

for {set i 0} {$i < 120} {incr i} {
	drive scor [expr 150 + $i*1]
	histmem start block
	newfile histogram_xyt
	save
}

