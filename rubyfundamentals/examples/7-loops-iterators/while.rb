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

i = 0
numbers = []

while i < 6
	puts "At the top i is #{i}"
	numbers.push(i)

	i += 1
	puts "Numbers now: ", numbers
	puts "At the bottom i is #{i}"
end

puts "The numbers: "

#remember you can write this 2 other ways?
numbers.each {|num| puts num }

$i = 0
$num = 6

while $i < $num  do
	puts("Inside the loop i = #$i" )
	$i +=1
end

sta = 0
fin = 11

 while sta < fin do
   puts "inside the loop i = #{sta} "
   sta += 1
 end