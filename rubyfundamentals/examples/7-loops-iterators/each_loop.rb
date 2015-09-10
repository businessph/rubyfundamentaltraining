# Different syntax - each loops

puts '***  array of numbers...each' 

[1,2,3].each  do |i|
	puts i 
end


puts '***  using a variable of an array of strings...each' 

arr = ['one','two','three']
arr.each do |element|
	puts element 
end


puts '***array of strings...each... using {}'    

['one','two','three'].each { |element|
  puts element 
}


 
 


