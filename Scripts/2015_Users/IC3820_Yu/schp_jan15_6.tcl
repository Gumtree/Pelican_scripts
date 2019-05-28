publish set user
set ::scan::check_thread0 false


drive mchs 12000


runscan schp 0 10000000 500 time 30


drive mchs 24000


runscan schp 0 10000000 500 time 30
