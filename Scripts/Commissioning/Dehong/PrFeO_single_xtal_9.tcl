if { [SplitReply [rco osc] ] == "off"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	rco oscillate_count 0
	rco oscillate start
	wait 5
}

histmem mode time
histmem preset 7200

mscor speed 1.0
drive mscor -54
drive mscor -55


for {set i 0} {$i < 35} {incr i} {
	drive mscor [expr -55 + $i*1.5]
	histmem start block
	newfile histogram_xyt
	save
}

