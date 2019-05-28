publish set user
set ::scan::check_thread0 false


set_chopper_config_with_bm_tof 100 1 1000

drive mchs 12000

runscan schp 0 5000000 250 time 5

drive mchs 24000

runscan schp 0 5000000 250 time 5