
drive sh1 1
drive sv1 1
drive sh2 1
drive sv2 1


 for {set i 0} {$i < 10} {incr i} {
	 puts "Starting test $i of 10"
	 drive sh1 90
	 drive sh1 1
	 drive sv1 105
	 drive sv1 1
	 drive sh2 50
	 drive sh2 1
	 drive sv2 60
	 drive sv2 1	 
	 
 }
 
 drive sh1 70
 drive sv1 90
 drive sh2 30
 drive sv2 40
 