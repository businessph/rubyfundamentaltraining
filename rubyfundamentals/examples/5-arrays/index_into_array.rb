# indexing into array

# print an array places all elements on one line (holds on to quotes)

# puts an array places every element on a separate line (drops quotes)

# puts (with no arguments) creates a new line

arr = ['r','u','v','e','n',' ','h','a','n','n','a','h']

puts "***A."
print( arr[0,5] )     # arr[<start index>, <number of items>]

puts "\n***B."              
puts( arr[-5,4 ] )    # arr[<start index>, <number of items>] -5 from the end

puts "***C."
print( arr[3..6] )    # arr[<start index> .. <end index> ] (a range) 

puts "\n***D."
print( arr[-5..-1])   # arr[<start index> .. <end index> ] (a range) -5 and -1 from the end

puts "\n***E."
print( arr[3...6] )    # arr[<start index> ... the one before <end index> ] (a range) 


