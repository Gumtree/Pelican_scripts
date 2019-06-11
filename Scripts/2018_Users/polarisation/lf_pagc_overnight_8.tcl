#first do this measurement to act as shim out
histmem start block
newfile histogram_xyt
save




for {set i 1} {$i < 600} {incr i} {
	
	histmem stop
	histmem mode time
	histmem preset 3600
	

}
