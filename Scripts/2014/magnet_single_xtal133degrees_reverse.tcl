histmem mode time
histmem preset 20



drive mscor 150
drive mscor 139


for {set i 0} {$i < 60} {incr i} {
	drive mscor [expr 139 - $i*0.1]
	histmem start block
	newfile histogram_xyt
	save
}
