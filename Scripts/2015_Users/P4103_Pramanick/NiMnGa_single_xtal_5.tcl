histmem stop

histmem mode time
histmem preset 3600


scor speed 3
drive scor 175

scor speed 0.5
drive scor 180


for {set i 0} {$i < 51} {incr i} {
	drive scor [expr 180 + $i*2]
	histmem start block
	newfile histogram_xyt
	save
}
