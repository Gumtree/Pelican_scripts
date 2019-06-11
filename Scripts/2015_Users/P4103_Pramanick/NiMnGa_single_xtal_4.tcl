histmem stop

histmem mode time
histmem preset 3600

drive tc1_driveable 320
wait 1800

scor speed 3
drive scor 145

scor speed 0.5
drive scor 150


for {set i 0} {$i < 51} {incr i} {
	drive scor [expr 150 + $i*2]
	histmem start block
	newfile histogram_xyt
	save
}
