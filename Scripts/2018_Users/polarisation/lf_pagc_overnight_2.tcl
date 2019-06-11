#first do this measurement to act as shim out

#histmem stop
#histmem mode time
#histmem preset 1200

#histmem start block
#newfile histogram_xyt
#save

histmem stop
histmem mode time
histmem preset 600

for {set i 1} {$i < 25} {incr i} {
	
	drive schp 4080000
	
	for {set i 0} {$i < 3} {incr i} {
	 lf_freq 166000
	 lf_pagc 131
	 histmem start block
	 newfile histogram_xyt
	 save
	 
	 lf_pagc 0
	 
	 histmem start block
	 newfile histogram_xyt
	 save
	 
	 lf_pagc 0
	 
	 
	 histmem start block
	 newfile histogram_xyt
	 save
	 
	 lf_pagc 131
	 }
	
	drive schp 4516830
	
	lf_pagc 0
	
	histmem start block
	newfile histogram_xyt
	save
}
