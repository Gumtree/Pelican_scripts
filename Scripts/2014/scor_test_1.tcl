histmem mode time
histmem preset 1800

for {set i 0} {$i < 36} {incr i} {
	drive scor [expr 180 + $i*5]
	histmem start block
	newfile histogram_xyt
	save
}
