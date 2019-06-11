

histmem mode time
histmem preset 1800

drive tc1_temp0_setpoint 20
wait 600

drive mscor 20

 for {set i 0} {$i < 10} {incr i} {
	 drive mscor [expr 47 + $i*10]
	 histmem start block
	 newfile histogram_xyt
	 save
 }
 