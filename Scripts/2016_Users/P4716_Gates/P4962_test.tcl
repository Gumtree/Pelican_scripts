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



histmem mode time
histmem preset 600

setvolt 0
setvolt 5
wait 120
setvolt 10
wait 120
setvolt 15
wait 120
setvolt 20
wait 120
setvolt 25
wait 120



setvolt 30
wait 120
setvolt 35
wait 120
setvolt 40
wait 120
setvolt 45
wait 120
setvolt 50
wait 120


setvolt 55
wait 120
setvolt 60
wait 120
setvolt 65
wait 120
setvolt 70
wait 120
setvolt 75
wait 120

setvolt 80
wait 120
setvolt 85
wait 120
setvolt 90
wait 120
setvolt 95
wait 120
setvolt 100
wait 120

setvolt 105
wait 120
setvolt 110
wait 120
setvolt 115
wait 120
setvolt 120
wait 120
setvolt 125
wait 120

setvolt 130
wait 120
setvolt 135
wait 120
setvolt 140
wait 120
setvolt 145
wait 120
setvolt 150
wait 120

setvolt 155
wait 120
setvolt 160
wait 120
setvolt 165
wait 120
setvolt 170
wait 120
setvolt 175
wait 120

setvolt 0

