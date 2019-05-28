histmem mode time
histmem preset 3600


scor speed 3
drive scor 45
scor speed 0.5
drive scor 50

for {set i 0} {$i < 10} {incr i} {
	drive scor [expr 50 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

