#
# print "In which city do you live?"
# residentOfCity = gets.chomp
#
# print "\nIn which city do you work?"
# workCity = gets.chomp
#
# print "\nHow far (in miles) is your work from your home?"
# miles = gets.chomp.to_i
#
#   if residentOfCity == workCity
#     puts "lucky"
#   elsif (residentOfCity != workCity) and miles < 5
#     puts "quite lucky"
#   elsif (residentOfCity != workCity) and miles < 10
#     puts "still quite lucky"
#   else
#     puts "\noh well, what to do?"
#   end

####################################################################

print "city live in?"
city_live_in = gets.chomp

print "\ncity work in?"
city_work_in = gets.chomp

print "\ncommute miles?"
commute_miles = gets.chomp.to_i

if city_live_in == city_work_in
  puts "same city, lucky"
elsif (city_live_in != city_work_in) and commute_miles < 5
  puts "short commute, quite lucky"
elsif (city_live_in != city_work_in) and commute_miles < 10
  puts "long commute, still quite lucky"
else
  puts "\nfar commute, oh well, what to do?"
end

