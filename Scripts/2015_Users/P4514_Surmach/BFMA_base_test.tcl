if { [SplitReply [rco osc] ] == /"off/"} {
	rco speed 0.073453
	rco accel 0.073453
	rco decel 0.073453

	rco oscillate_low -2.3
	rco oscillate_high 1.8
	
	rco oscillate start
	wait 5
}



histmem mode time
histmem preset 600

drive mscor -55

drive mscor -20

 histmem start block
 newfile histogram_xyt
 save
 
 drive mscor -18
 
 histmem start block
 newfile histogram_xyt
 save
 
 drive mscor -16
 
 histmem start block
 newfile histogram_xyt
 save
 
 drive mscor -14
 
 histmem start block
 newfile histogram_xyt
 save
 
 drive mscor -12
 
 histmem start block
 newfile histogram_xyt
 save
 
 drive mscor -10
 
 histmem start block
 newfile histogram_xyt
 save
 

drive mscor -8

histmem start block
newfile histogram_xyt
save

drive mscor -6

histmem start block
newfile histogram_xyt
save

drive mscor -4

histmem start block
newfile histogram_xyt
save

drive mscor -2

histmem start block
newfile histogram_xyt
save

drive mscor 0

histmem start block
newfile histogram_xyt
save

drive mscor 2

histmem start block
newfile histogram_xyt
save

drive mscor 4

histmem start block
newfile histogram_xyt
save

drive mscor 6

histmem start block
newfile histogram_xyt
save

drive mscor 8

histmem start block
newfile histogram_xyt
save


drive mscor 10

histmem start block
newfile histogram_xyt
save

drive mscor 12

histmem start block
newfile histogram_xyt
save

drive mscor 14

histmem start block
newfile histogram_xyt
save

drive mscor 16

histmem start block
newfile histogram_xyt
save

