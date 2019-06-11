histmem mode time
histmem preset 10800


drive scor 205


for {set i 0} {$i < 10} {incr i} {
	drive scor [expr 205 + $i*2]
	histmem start block
	newfile histogram_xyt
	save
}

