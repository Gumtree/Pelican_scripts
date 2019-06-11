histmem mode time
histmem preset 600


for {set idx0 0} {$idx0 < 42} {incr idx0} {
	histmem start block
	newfile histogram_xyt
	save
		
}