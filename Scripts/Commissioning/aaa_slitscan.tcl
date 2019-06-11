
drive sh1 1
drive sv1 1


 for {set i 0} {$i < 20} {incr i} {
	 puts "Starting test $i of 20"
	 drive sh1 90
	 drive sh1 1
	 drive sv1 110
	 drive sv1 1
 }

 