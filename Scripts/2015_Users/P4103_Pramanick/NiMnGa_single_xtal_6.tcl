histmem stop

histmem mode time
histmem preset 7200

drive tc1_driveable 340
wait 1800


scor speed 0.5
drive scor 240


for {set i 0} {$i < 21} {incr i} {
	drive scor [expr 240 + $i*2]
	histmem start block
	newfile histogram_xyt
	save
}
