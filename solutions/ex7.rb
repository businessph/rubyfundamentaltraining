
$daysArr = Array.new ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]

puts "*** Using for loop ***"
for i in $daysArr do
  puts i 
end

puts "\n*** Using each() ***"   ### pri said this one is more widely used
$daysArr.each do |d|
  puts d 
end

puts "\n*** Is it Sunday?... ***"
$day = 0

def is_it_sunday?
  if $daysArr[$day] == 'Sun' then
    return true
  else 
    return false
  end 
end

while is_it_sunday? == false do
  puts "Today is only " + $daysArr[$day]
  $day += 1
end

puts
print 'Finally, today is Sunday'
puts

####################################################################################################

$phtestArr = Array.new ['phtest0','phtest1','phtest2','phtest3','phtest4','phtest5','phtest6']

puts "\nblah0"
for i in $phtestArr do
  puts i
end

puts "\nblah1"
$phtestArr.each do |d|
  puts d
end

####################################################################################################

$frame = 0

def is_it_phtest6?
  if $phtestArr[$day] == 'phtest6' then
    return true
  else
    return false
  end
end

while is_it_phtest6? == false do
  put "today is only " + $phtestArr[$frame]
  $frame += 1
end