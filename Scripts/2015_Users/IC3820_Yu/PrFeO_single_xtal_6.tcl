histmem mode time
histmem preset 10800


scor speed 3
drive scor 105
scor speed 0.5
drive scor 110

for {set i 0} {$i < 33} {incr i} {
	drive scor [expr 110 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

