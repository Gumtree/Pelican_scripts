histmem mode time
histmem preset 3600

;scor speed 0.5
;drive scor 15
;drive scor 30


for {set i 0} {$i < 9} {incr i} {
	drive scor [expr 78 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}

scor speed 3.6
drive scor 10
scor speed 0.5
drive scor 15

for {set i 0} {$i < 9} {incr i} {
	drive scor [expr 15 + $i*3]
	histmem start block
	newfile histogram_xyt
	save
}