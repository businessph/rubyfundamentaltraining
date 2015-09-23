# When inspecting keys or values they are returned as an array


hash1 = {'keyA'=>'value1', 'keyB'=>'value2', 'keyC'=>'value3', 'keyD'=>'value4'}
hash2 = {'keyA'=>'value1', 'KEY_B'=>'value2', 'keyC'=>'VALUE_3', 'keyD'=>'value4'}

puts
puts '-- display same KEYS in hash1 and hash2' + "\n\n"
puts "Intersecting Keys:"
p( hash1.keys & hash2.keys )

puts
puts '-- display same VALUES in hash1 and hash2' + "\n"
puts "\nIntersecting Values:"
p( hash1.values & hash2.values )

puts
puts '-- ADDS hash1 and hash2' + "\n"
puts "\nArray Concatenation:"
p( hash1.keys+hash2.keys )

puts
puts '--what values in hash1 do not exisit in hash2' + "\n"
puts "\nwhich value in hash1 does not exist in hash2"
p( hash1.values-hash2.values )

puts
puts '--adds hash2 as an array into hash1' + "\n"
puts "\nAppend the two arrays:"
p( hash1.keys << hash2.keys )

puts
puts '--adds hash2 into hash1, flatten to remove nested array, reverse' + "\n"
puts "\nConvert back to one array and reverse order:"
p (hash1.keys << hash2.keys).flatten.reverse  


