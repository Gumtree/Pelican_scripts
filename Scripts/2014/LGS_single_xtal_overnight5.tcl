histmem mode time
histmem preset 1800

scor speed 0.5
drive scor 177


for {set i 0} {$i < 16} {incr i} {
	drive scor [expr 177 + $i*1]
	histmem start block
	newfile histogram_xyt
	save
}

