histmem mode time
histmem preset 3600

run schs -12000
wait 180

drive schp 4200000

histmem start block
newfile histogram_xyt
save

drive schp 4640000

histmem start block
newfile histogram_xyt
save

histmem start block
newfile histogram_xyt
save

