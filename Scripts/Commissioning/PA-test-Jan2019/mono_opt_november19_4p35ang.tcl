#first do this measurement to act as shim out

histmem stop
histmem mode time
histmem preset 100

drive moma -42 momc -39
runscan momb -39 -42 20 time 20
#mscan momb -46 0.05 60 time 100 datatype histogram_T

drive momb -39 momc -39
runscan moma -39 -42 20 time 20
	
drive moma -42 momb -42
runscan momc -39 -42 20 time 20

