histmem mode time
histmem preset 30

drive mscor 0

drive mscor 40

for {set i 0} {$i < 50} {incr i} {
	drive mscor [expr 40 + $i*0.2]
	histmem start block
	newfile histogram_xyt
	save
}
