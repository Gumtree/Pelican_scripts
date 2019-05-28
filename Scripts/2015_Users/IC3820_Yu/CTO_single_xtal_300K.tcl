histmem mode time
histmem preset 1800

hset /sample/tc1/other/relayCtrlParmLo 0

drive tc1_driveable 300
wait 1800

scor speed 0.5

drive scor 252.1


for {set i 0} {$i < 14} {incr i} {
	drive scor [expr 252.1 + $i*0.25]
	histmem start block
	newfile histogram_xyt
	save
}


