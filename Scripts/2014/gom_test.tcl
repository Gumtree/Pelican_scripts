histmem mode time
histmem preset 60

for {set i 0} {$i < 25} {incr i} {
	drive gom [expr -14.5 + $i*0.5]
	histmem start block
	newfile histogram_xyt
	save
}
