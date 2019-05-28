histmem mode time
histmem preset 1800

scor speed 0.5
drive scor 156


for {set i 0} {$i < 3} {incr i} {
	drive scor [expr 156 + $i*1]
	histmem start block
	newfile histogram_xyt
	save
}

