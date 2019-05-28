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

setvolt 5
wait 60
setvolt 10
wait 60

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

setvolt 15
wait 60
setvolt 20
wait 60
setvolt 25
wait 60

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

setvolt 30
wait 60
setvolt 35
wait 60
setvolt 40
wait 60
setvolt 45
wait 60
setvolt 50
wait 60

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
wait 60
setvolt 40
wait 60
setvolt 35
wait 60
setvolt 30
wait 60
setvolt 25
wait 60
setvolt 30
wait 60
setvolt 25
wait 60
setvolt 20
wait 60
setvolt 15
wait 60
setvolt 10
wait 60
setvolt 5
wait 60
setvolt 1
wait 60


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




