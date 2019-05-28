histmem mode time
histmem preset 3600

scor speed 3.6
drive scor 25
scor speed 0.5
drive scor 48

for {set i 0} {$i < 12} {incr i} {
	drive scor [expr 48 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}