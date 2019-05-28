rco speed 0.073453
rco accel 0.073453
rco decel 0.073453
rco oscillate stop

rco oscillate_low -2.3
rco oscillate_high 1.8
rco oscillate_count 0
rco oscillate start


histmem mode time
histmem preset 3600

histmem stop
set_chopper_config_with_bm_tof 100 1 1000

drive schs 3000
drive schp 4136550

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

