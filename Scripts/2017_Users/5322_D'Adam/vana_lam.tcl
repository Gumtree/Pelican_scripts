if { [SplitReply [rco osc] ] == "off"} {
	broadcast "WARNING: rco stopped. Restarting"
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
	if { [SplitReply [rco osc] ] == "off"} {
		broadcast "WARNING: rco failed to start"
	} else {
		broadcast "rco restarted"
	}
}

set meas_time_s 3600

set time_const 3600

histmem stop

histmem mode time
histmem preset $meas_time_s

drive schp 4068140

for { set i 1}  {$i <= 10} {incr i} {
	broadcast "Start of 4.75 A Loop #$i"
	histmem start block
	newfile histogram_xyt
	save
	broadcast "End of Loop #$i, measurement has been running for [expr $i * $meas_time_s / $time_const] hours."
}

drive schp 4529060

for { set i 1}  {$i <= 10} {incr i} {
	broadcast "Start of lambda\2 Loop # $i"
	histmem start block
	newfile histogram_xyt
	save
	broadcast "End of Loop # $i, measurement has been running for [expr $i * $meas_time_s / $time_const] hours."
}
