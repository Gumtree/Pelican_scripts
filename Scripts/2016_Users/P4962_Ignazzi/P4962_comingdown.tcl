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
histmem preset 3600


setvolt 170
wait 30
setvolt 165
wait 30
setvolt 160
wait 30
setvolt 155
wait 30
setvolt 150
wait 30

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

setvolt 145
wait 30
setvolt 140
wait 30
setvolt 135
wait 30
setvolt 130
wait 30
setvolt 125
wait 30
setvolt 120
wait 30
setvolt 115
wait 30
setvolt 110
wait 30
setvolt 105
wait 30
setvolt 100
wait 30

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

setvolt 95
wait 30
setvolt 90
wait 30
setvolt 85
wait 30
setvolt 80
wait 30
setvolt 75
wait 30
setvolt 70
wait 30
setvolt 65
wait 30
setvolt 60
wait 30
setvolt 55
wait 30
setvolt 50
wait 30

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

setvolt 45
wait 30
setvolt 40
wait 30
setvolt 35
wait 30
setvolt 30
wait 30
setvolt 25
wait 30

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

setvolt 20
wait 30
setvolt 15
wait 30
setvolt 10
wait 30
setvolt 5
wait 30
setvolt 1
wait 30

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save
