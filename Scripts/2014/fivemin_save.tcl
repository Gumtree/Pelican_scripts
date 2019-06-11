histmem mode time
histmem preset 300


for {set idx0 0} {$idx0 < 900} {incr idx0} {
	histmem start block
	newfile histogram_xyt
	save
		
}