# variations of while 

$hours_asleep = 0     # global variable

def tired?	
	if
	  $hours_asleep >= 7
	then
	  $hours_asleep = 0
 		return false
 	else
 		$hours_asleep += 1
 		return true
 	end 		
end

def snore
	puts 'snore....'
end

def sleep
 	puts "z" * $hours_asleep  
end


puts "*** 1 basic while"
while tired?             ### while tired
	sleep
end


puts "\n*** 2 while modifier"
sleep while tired?       ### while tired


puts "\n*** 3 using begin...end executes at least once"
$hours_asleep = 7 
begin 
  sleep
  snore 
end while tired?          ### while tired

puts "\n*** 4 using begin...end executes at least once"
$hours_asleep = 3
begin
	sleep
	snore
end while tired?          ### while tired

puts "\n*** 5 using begin...end executes at least once"
begin
	sleep
	snore
end while tired?          ### while tired