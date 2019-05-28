histmem mode time
histmem preset 270

drive tc1_driveable 350
wait 1200
scor speed 0.5
drive scor 100


for {set i 0} {$i < 151} {incr i} {
	drive scor [expr 100 + $i*1]
	histmem start block
	newfile histogram_xyt
	save
}

hset /sample/tc1/other/relayCtrlParmLo 0