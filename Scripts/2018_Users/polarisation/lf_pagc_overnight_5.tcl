#first do this measurement to act as shim out



histmem stop
histmem mode time
histmem preset 600

for {set i 1} {$i < 600} {incr i} {
	
	drive schp 4080000

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
		
	 histmem start block
	 newfile histogram_xyt
	 save		
	
	lf_pagc 0
	
	drive schp 4516830
		
	histmem start block
	newfile histogram_xyt
	save
}
