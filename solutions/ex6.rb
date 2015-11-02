
employeeCitiesHash1 = {
  'Racel'=>'San Francisco',
  'Brian'=>'Oakland',
  'Sarah'=>'Berkely',
  'Joseph'=>'Palo Alto',
                        }
puts "\n1*** Gets value using a key ***"
puts employeeCitiesHash1['Racel']
puts employeeCitiesHash1['Racel1']

employeeCitiesHash1.default = "Bay Area"
puts "\n2*** Gets value using a non-existing key so it gets the default***"
puts employeeCitiesHash1['Ruven']
puts employeeCitiesHash1['Racel1']

employeeCitiesHash2 = {
  'racel'=>'SF',
  'Brian'=>'Oakland',
  'Sarah'=>'Berkely',
  'Joseph'=>'Palo Alto',
                        }
puts "\n3*** .keys common to both hashes   ***"
puts employeeCitiesHash1.keys & employeeCitiesHash2.keys  

puts "\n4*** .values common to both Hashes***"
puts employeeCitiesHash1.values & employeeCitiesHash2.values 

puts "\n5*** Values from first hash that are not in second ***"
puts  employeeCitiesHash1.values - employeeCitiesHash2.values

puts "\n5.1*** Values from first hash that are not in second ***"
puts  employeeCitiesHash2.values - employeeCitiesHash1.values

puts "\n6*** Values from first hash and second ***"
puts  employeeCitiesHash1.values + employeeCitiesHash2.values