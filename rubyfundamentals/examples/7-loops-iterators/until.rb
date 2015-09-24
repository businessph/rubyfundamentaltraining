# variations of until 

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


puts "basic until"
until !tired?        ### until not tired
  sleep
end


puts "\nuntil modifier"
sleep until !tired?  ### until not tired


puts "\nusing begin...end executes at least once"
$hours_asleep = 7 
begin 
  sleep
  snore 
end until !tired?    ### until not tired