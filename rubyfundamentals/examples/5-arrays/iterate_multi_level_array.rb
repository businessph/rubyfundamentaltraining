#get values of multi level arrays 

# create an array with two sub-arrays 
multi_dimensional_array = [['one','two','three'],[2,4,6,8]]				

# iterate over the array elements 
puts( "*** for i in.. multi-dimensional array ***" )
puts

for arr in multi_dimensional_array do
	p(arr)
end

for i in multi_dimensional_array do
	p(i)
end


puts( "\n*** for a, b, c, d in.. multi-dimensional array ***" )
for (a,b,c,d) in multi_dimensional_array #do
	puts("first=#{a}, second=#{b}, third=#{c}, fourth=#{d}\n" )
end