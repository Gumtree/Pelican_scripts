histmem mode time
histmem preset 3600

scor speed 3.6
drive scor 25
scor speed 0.5
drive scor 42

for {set i 0} {$i < 7} {incr i} {
	drive scor [expr 42 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}