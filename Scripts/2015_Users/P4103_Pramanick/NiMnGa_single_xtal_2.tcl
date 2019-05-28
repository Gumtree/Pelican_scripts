histmem stop
scor speed 0.5
drive scor 150


for {set i 0} {$i < 51} {incr i} {
	histmem mode time
	histmem preset 3600
	drive scor [expr 150 + $i*2]
	histmem start block
	newfile histogram_xyt
	save
}

