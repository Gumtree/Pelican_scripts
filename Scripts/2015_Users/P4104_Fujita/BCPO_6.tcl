histmem mode time
histmem preset 3600

scor speed 3.6
drive scor 6
scor speed 0.5
drive scor 9

for {set i 0} {$i < 2} {incr i} {
	drive scor [expr 9 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}