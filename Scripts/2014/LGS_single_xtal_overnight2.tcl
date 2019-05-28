histmem mode time
histmem preset 1800

scor speed 0.5

drive scor 158.5


for {set i 0} {$i < 16} {incr i} {
	drive scor [expr 158.5 + $i*0.25]
	histmem start block
	newfile histogram_xyt
	save
}

