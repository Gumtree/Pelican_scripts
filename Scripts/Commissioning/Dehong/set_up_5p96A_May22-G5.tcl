


#5.96 A

#SICS:
set_chopper_config_with_bm_tof 100 1 1000 

#Mono:

#run moma -63.06 momb -63.06 momc -63.06
drive moma -62.83 momb -63.09 momc -63.43

drive mra 0.36 mrb 0.36 mrc 0.36

#Chopper speed:
drive schs 3000
drive mchs 6000

#chopper phase
#lambda

#drive schp 8558530 ; G3
#G5:
drive schp 8664166.0

#half-lambda
#run schp 4123750
#drive schp 4231787
