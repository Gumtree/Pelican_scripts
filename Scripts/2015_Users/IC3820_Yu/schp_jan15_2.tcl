publish set user
set ::scan::check_thread0 false
runscan schp 0 10000000 500 time 20

set_chopper_config_with_bm_tof 200 1 1000

runscan schp 0 10000000 500 time 20

