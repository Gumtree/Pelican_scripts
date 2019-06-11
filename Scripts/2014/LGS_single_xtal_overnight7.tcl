histmem mode time
histmem preset 1800

scor speed 0.5

drive scor 199


for {set i 0} {$i < 5} {incr i} {
	drive scor [expr 199 + $i*1]
	histmem start block
	newfile histogram_xyt
	save
}

