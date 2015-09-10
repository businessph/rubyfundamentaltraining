
print "In which city do you live?" 
residentOfCity=gets.chomp

print "\nIn which city do you work?" 
workCity=gets.chomp

print "\nHow far (in miles) is your work from your home?" 
miles=gets.chomp.to_i

  if residentOfCity == workCity 
    puts "lucky" 
  elsif (residentOfCity != workCity) and miles < 5
    puts "quite lucky" 
  elsif (residentOfCity != workCity) and miles < 10
    puts "still quite lucky" 
  else
    puts "\noh well, what to do?" 
  end 

