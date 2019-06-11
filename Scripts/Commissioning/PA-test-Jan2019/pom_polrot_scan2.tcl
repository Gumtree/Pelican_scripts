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

#run moma -44.64 momb -44.64 momc -44.64
#wait 60
#drive pom 1.0
drive stth 57.2
wait 30
mscan polrot 3 0.2 25 time 400 datatype histogram_T

drive pom 1.5
drive stth 57.5
wait 30
mscan polrot 3 0.2 25 time 400 datatype histogram_T

drive pom 2.0
drive stth 57.5
wait 30
mscan polrot 3 0.2 25 time 400 datatype histogram_T

drive pom 2.5
drive stth 57.5
wait 30
mscan polrot 3 0.2 25 time 400 datatype histogram_T

drive pom 3.0
drive stth 57.5
wait 30
mscan polrot 3 0.2 25 time 400 datatype histogram_T