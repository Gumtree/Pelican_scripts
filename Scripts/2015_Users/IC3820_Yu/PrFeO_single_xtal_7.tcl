histmem mode time
histmem preset 10800


scor speed 0.5
drive scor 210

for {set i 0} {$i < 36} {incr i} {
	drive scor [expr 210 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

