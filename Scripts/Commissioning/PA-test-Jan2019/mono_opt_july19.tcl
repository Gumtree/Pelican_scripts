#first do this measurement to act as shim out

histmem stop
histmem mode time
histmem preset 100

drive moma -46 momc -43
runscan momb -43 -46 60 time 20
#mscan momb -46 0.05 60 time 100 datatype histogram_T

drive momb -43 momc -43
runscan moma -43 -46 60 time 20
	
drive moma -46 momb -46
runscan momc -43 -46 60 time 20

