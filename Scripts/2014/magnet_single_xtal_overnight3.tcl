histmem mode time
histmem preset 3600



drive mscor 0
drive mscor 10


for {set i 0} {$i < 19} {incr i} {
	drive mscor [expr 10 + $i*5]
	histmem start block
	newfile histogram_xyt
	save
}
