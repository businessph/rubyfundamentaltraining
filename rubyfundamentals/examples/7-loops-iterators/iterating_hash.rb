
#using for and each method to iterate through a hash

studentHash = {'Chris'=>'row1', 'Anh'=>'row1', 'Dana'=>'row2', 'Kenneth'=>'row2'}

puts "*** using for construct" 

for student in studentHash do 
 
  puts "name: " + student[0]
  puts "location: " + student[1]

end


puts "\n*** using each method" 

studentHash.each do 
  |a,b| 
    puts "key: #{a}, value: #{b}" 
end

