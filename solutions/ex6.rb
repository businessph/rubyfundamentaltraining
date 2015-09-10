employeeCitiesHash1 = {  
  'Racel'=>'San Francisco',
  'Brian'=>'Oakland',
  'Sarah'=>'Berkely',
  'Joseph'=>'Palo Alto',
  }
  
  
puts "*** Gets value using a key ***"
puts employeeCitiesHash1['Brian']     

employeeCitiesHash1.default = "Bay Area"

puts "\n*** Gets value using a non-existing key so it gets the default***"
puts employeeCitiesHash1['Ruven'] 

employeeCitiesHash2 = {  
  'Racel'=>'SF',
  'brian'=>'Oakland',
  'Sarah'=>'Berkely',
  'Joseph'=>'Palo Alto',
  }
puts "\n*** Keys common to both hashes   ***"  
puts employeeCitiesHash1.keys & employeeCitiesHash2.keys  

puts "\n*** Values common to both Hashes***"
puts employeeCitiesHash1.values & employeeCitiesHash2.values 

puts "\n*** Values from first hash that are not in second ***" 
puts  employeeCitiesHash1.values - employeeCitiesHash2.values 

