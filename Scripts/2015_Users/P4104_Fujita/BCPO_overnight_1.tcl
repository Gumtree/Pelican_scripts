histmem mode time
histmem preset 3600

scor speed 0.5
drive scor 15
drive scor 30


for {set i 0} {$i < 16} {incr i} {
	drive scor [expr 30 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

