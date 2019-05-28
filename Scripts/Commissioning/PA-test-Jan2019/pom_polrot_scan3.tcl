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


#histmem stop
#histmem mode time
#histmem preset 600

#run moma -44.49 momb -44.49 momc -44.49

#drive pom 2.065
#run stth 57.2
#wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T

run pom 1.5
wait 300

drive pom 1.8
run stth 57.2
wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T

drive pom 1.9
run stth 57.2
wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T

drive pom 2.0
run stth 57.2
wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T

drive pom 2.1
run stth 57.2
wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T

drive pom 2.2
run stth 57.2
wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T

drive pom 2.3
run stth 57.2
wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T

drive pom 2.4
run stth 57.2
wait 60
mscan polrot 4.5 0.1 6 time 600 datatype histogram_T