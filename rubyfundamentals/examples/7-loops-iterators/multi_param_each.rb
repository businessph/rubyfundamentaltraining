# using block syntax with multiple parameters

puts "do..end" 

[[1,2,3],[4,5,6],[7,8,9]].each do 
	|a,b,c| 
		puts "#{a}, #{b}, #{c}" 
end

puts "without 'do' and 'end'" 

[[1,2,3],[4,5,6],[7,8,9]].each{ 
	|a,b,c| 
		puts "#{a}, #{b}, #{c}" 
}

puts "using { } and fewer block parameters" 

[[1,2,3],[4,5,6],[7,8,9]].each{ 
  |a,b| 
    puts " #{a}, #{b}"  
}
