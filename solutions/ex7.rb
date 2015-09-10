
$daysArr=Array.new ["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]

puts "*** Using for loop ***"
for i in $daysArr  do 
  puts i 
end

puts "\n*** Using each() ***"
$daysArr.each do |d|
  puts d 
end

puts "\n*** Is it Sunday?... ***"
$day=0

def is_it_sunday?
  if $daysArr[$day]=='Sun' then    
    return true
  else 
    return false
  end 
end

while is_it_sunday? == false  do 
  puts "Today is only " + $daysArr[$day]
  $day+=1
end

print 'Finally, today is Sunday'
