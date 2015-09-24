
###using for and each method to iterate through a hash

###hash map
studentHash = {'Chris'=>'row1', 'Anh'=>'row1', 'Dana'=>'row2', 'Kenneth'=>'row2'}


puts "\n*** using each method "

studentHash.each do              ### hashmap.each do
|a,b|                            ### you need two loop keys for the two parameters
  puts "key: #{a}, value: #{b}"  ### puts the keys and values
end                              ###


puts "\n*** using for construct"

for student in studentHash do    ### for variable in hashmap do
  puts "name: " + student[0]     ### put variable in first index
  puts "location: " + student[1] ### put variable in second index
end

puts "\n*** using for construct"

for i in studentHash do    ### for variable in hashmap do
  puts "key: " + i[0]     ### put variable in first index
  puts "value: " + i[1] ### put variable in second index
end


