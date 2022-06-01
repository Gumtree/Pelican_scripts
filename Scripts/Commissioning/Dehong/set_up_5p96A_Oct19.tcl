


#5.96 A

#SICS:
set_chopper_config_with_bm_tof 100 1 1000 

#Mono:

#run moma -63.06 momb -63.06 momc -63.06
drive moma -62.82 momb -63.09 momc -63.42

drive mra 0.36 mrb 0.36 mrc 0.36

#Chopper speed:
drive schs 3000
drive mchs 6000

#chopper phase
#lambda
# run schp 8557140.0
drive schp 8558530

#half-lambda
#run schp 4123750

