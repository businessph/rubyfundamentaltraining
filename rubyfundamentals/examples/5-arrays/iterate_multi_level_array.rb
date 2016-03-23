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

multi_dimensional_array.each {|x| puts x}

### loops the first array
### then loops the second array
puts( "\n*** for a, b, c, d in.. multi-dimensional array ***" )
for (a,b,c,d) in multi_dimensional_array #do
	puts("first=#{a}, second=#{b}, third=#{c}, fourth=#{d}\n" )
end


arr=[0,1,2,3,4,5]
arr.each {|x| puts x; puts x + 1}
print arr

names = %w(Heather Bozhidar Steve Sarah Serena sosa)
names.select { |name| name.start_with?('S') }.map(&:upcase)