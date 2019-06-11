#first do this measurement to act as shim out



histmem stop
histmem mode time
histmem preset 3600

drive schp 4080000


for {set i 1} {$i < 600} {incr i} {
	
	 histmem start block
	 newfile histogram_xyt
	 save

}
