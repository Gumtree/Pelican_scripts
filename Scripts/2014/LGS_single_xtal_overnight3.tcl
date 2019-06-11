histmem mode time
histmem preset 1800

scor speed 0.5
drive scor 163


for {set i 0} {$i < 8} {incr i} {
	drive scor [expr 163 + $i*1]
	histmem start block
	newfile histogram_xyt
	save
}

