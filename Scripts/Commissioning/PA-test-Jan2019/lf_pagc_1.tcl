#first do this measurement to act as shim out

histmem stop
histmem mode time
histmem preset 1800

	
	
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
		
