###Different ways of instantiating arrays

### create definition test_microphone
def test_microphone
	return "testing...testing...testing"
end

### create mixed_array
mixed_array = [10+8/2, test_microphone(), 'dir']	### instantiating an array
### create mixed_array1
mixed_array1 = [10+8/2, test_microphone, 'dir']   ### no parenthesis


puts
### post mixed_array
p(mixed_array)

puts
### post mixed_array1
p(mixed_array1)

puts
### shortcut to make an array of a string of words
string_array = %w(these are all treated as strings because of the %w)
p(string_array)

puts
### create a new empty array
empty_array = Array.new
p(empty_array)

puts
### create a new empty array with 3 indexes,  nils
array_with_empty_cells = Array.new(3)
p(array_with_empty_cells)

puts
### create a new empty array with 3 indexes, string
array_with_repeated_values = Array.new(3, "Many ways to instantiate arrays")
p(array_with_repeated_values)

puts
array_of_arrays = Array.new
array_of_arrays[0]= Array.new(2,'Class')
array_of_arrays[1]= Array.new(3,'Object')
p(array_of_arrays)

puts
array_of_arrays_2 = [	[3,6,9], [12,15,18], [21,24], [27,30,33,26] ]
p(array_of_arrays_2)

puts
for i in array_of_arrays_2 do
  p(i)
end
puts