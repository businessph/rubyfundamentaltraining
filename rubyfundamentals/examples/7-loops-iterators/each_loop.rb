# Different syntax - each loops


### the array is not set to any value, array equals nil equals the array
###you have an array, do the each loop and put each value for all index in that array
puts "\n" + '***  array of numbers...each'

[1,2,3].each do |i|                ###use the actual array.each
	puts i 
end

###this sets the array equal to arr
puts "\n" + '***  using a variable of an array of strings...each'

arr = ['one','two','three']
arr.each do |element|              ###arr is key, use parameter which is the array
	puts element 
end

### array . each loop and puts
puts "\n" + '***array of strings...each... using {}'

['one','two','three'].each { |element|
  puts element 
}


puts "\n" + 'USE THIS ONE PLEASE ***  using a variable of an array of strings...each *** USE THIS ONE PLEASE'
arr1 = ['oleg','ph','ab','dan']
arr1.each do |i|
  puts i
end
 
 


