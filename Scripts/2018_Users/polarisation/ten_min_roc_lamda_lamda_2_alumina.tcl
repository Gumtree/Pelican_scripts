


#Next define how you want to count.  This is normally time.  ANd usually presets of 1 hour.

histmem stop
histmem mode time
histmem preset 600

histmem start block
newfile histogram_xyt
save

drive schp 4516830
     
histmem start block
newfile histogram_xyt
save
      
histmem start block
newfile histogram_xyt
save