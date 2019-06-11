histmem mode time
histmem preset 3600


;scor speed 0.5
drive scor 200


for {set i 0} {$i < 1} {incr i} {
	drive scor [expr 200 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

