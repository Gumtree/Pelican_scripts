

#mscan moma -45.5 0.1 momb -45.5 0.1 momc -45.5 0.1 20 time 20 datatype histogram_T

#mscan moma -45.0 0.1 momb -45.0 0.1 momc -45.0 0.1 11 time 80 datatype histogram_T
#mscan moma -44.2 0.1 momb -45.5 0.1 momc -46 0.1 20 time 20 datatype histogram_T

drive moma -46.0
drive momc -43.0
runscan momb -46.0 -43.0 30 time 100

