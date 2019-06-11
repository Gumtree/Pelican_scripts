#first do this measurement to act as shim out




for {set i 1} {$i < 600} {incr i} {
	
	histmem stop
	histmem mode time
	histmem preset 3600
	
	drive schp 4080000

	 histmem start block
	 newfile histogram_xyt
	 save
	 
	 
	 histmem stop
	 histmem mode time
	 histmem preset 600	 
	
	drive schp 4516830
		
	histmem start block
	newfile histogram_xyt
	save
}
