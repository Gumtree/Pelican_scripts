
schs idle
wait 300
hset /instrument/fermi_chopper/sch/control/set_motor_dir 1
wait 60
drive schs 6000
drive mchs 6000

publish set user
set ::scan::check_thread0 false
runscan schp 3900000 4900000 101 time 20




