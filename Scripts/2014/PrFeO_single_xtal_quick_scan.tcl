histmem mode time
histmem preset 10800


drive scor 153


for {set i 0} {$i < 5} {incr i} {
	drive scor [expr 153 + $i*2]
	histmem start block
	newfile histogram_xyt
	save
}

