# using block syntax with multiple parameters

puts "\n use do..end"
[[1,2,3],[4,5,6],[7,8,9]].each do |a,b,c|
		puts "#{a}, #{b}, #{c}"               ### has format
end


puts "\n do not use 'do' and 'end'"
[[1,2,3],[4,5,6],[7,8,9]].each{ |a,b,c|
		puts "#{a}, #{b}, #{c}"               ### has format
}


puts "\n using { } and fewer block parameters"
[[1,2,3],[4,5,6],[7,8,9]].each{ |a,b|
    puts " #{a}, #{b}"                    ### has format
}


puts "\n use do..end"
arr = [[1,2,3],[4,5,6],[7,8,9]]
arr.each do |a,b,c|
	puts a,b,c        ### no format
end