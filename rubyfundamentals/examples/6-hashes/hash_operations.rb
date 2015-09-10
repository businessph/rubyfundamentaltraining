# When inspecting keys or values they are returned as an array

hash1 = {'keyA'=>'value1', 'keyB'=>'value2', 'keyC'=>'value3', 'keyD'=>'value4'}
hash2 = {'keyA'=>'value1', 'KEY_B'=>'value2', 'keyC'=>'VALUE_3', 'keyD'=>'value4'}

puts "Intersecting Keys:"
p( hash1.keys & hash2.keys ) 

puts "\nIntersecting Values:"
p( hash1.values & hash2.values )

puts "\nArray Concatenation:"
p( hash1.keys+hash2.keys )

puts "\nwhich value in hash1 does not exist in hash2"
p( hash1.values-hash2.values )

puts "\nAppend the two arrays:"
p( hash1.keys << hash2.keys )

puts "\nConvert back to one array and reverse order:"
p (hash1.keys << hash2.keys).flatten.reverse  


