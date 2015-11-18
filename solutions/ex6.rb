
employeeCitiesHash1 = {
  'Racel'=>'San Francisco',
  'Brian'=>'Oakland',
  'Sarah'=>'Berkely',
  'Joseph'=>'Palo Alto',
                        }

employeeCitiesHash2 = {
  'racel'=>'SF',
  'Brian'=>'Oakland',
  'Sarah'=>'Berkely',
  'Joseph'=>'Palo Alto',
                        }

puts "\n1*** Gets value using a key ***"
puts employeeCitiesHash1['Racel']
puts employeeCitiesHash1['Racel1'] ### this does not print because there is no key Racel1 in employeeCitiesHash1

employeeCitiesHash1.default = "Bay Area.default" ### bs requests get this default value
puts "\n2*** Gets value using a non-existing key so it gets the DEFAULT VALUE***"
puts employeeCitiesHash1['Ruven']

puts "\n3*** .KEYS common to both hashes   ***"
puts employeeCitiesHash1.keys & employeeCitiesHash2.keys  

puts "\n4*** .VALUES common to both Hashes SIMILARITIES ***"
puts employeeCitiesHash1.values & employeeCitiesHash2.values 

puts "\n5*** Values from first hash that are not in second DIFFERENCES ***"
puts  employeeCitiesHash1.values - employeeCitiesHash2.values

puts "\n5.1*** Values from first hash that are not in second ***"
puts  employeeCitiesHash2.values - employeeCitiesHash1.values

puts "\n6*** ADD Values from first hash and second ***"
puts  employeeCitiesHash1.values + employeeCitiesHash2.values