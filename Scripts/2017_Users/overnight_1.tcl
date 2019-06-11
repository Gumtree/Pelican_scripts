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

histmem stop

histmem mode time
histmem preset 1800

#run tc1_pres3_setpoint 65

#drive tc1_temp0_setpoint 200 tc3_driveable 200

#run tc1_pres3_setpoint 25

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 309
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 310
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 311
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 312
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 313
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 314
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 315
wait 300
histmem start block
newfile histogram_xyt
save

drive tc3_driveable 316
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 317
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 318
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 319
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 320
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 321
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 322
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 323
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 324
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 325
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 326
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 327
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 328
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 329
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 330
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 331
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 332
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 333
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 334
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 335
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 336
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 337
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 338
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 339
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 340
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 341
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 342
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 343
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 344
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 345
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 346
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 347
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 348
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 349
wait 300

histmem start block
newfile histogram_xyt
save

drive tc3_driveable 350
wait 300