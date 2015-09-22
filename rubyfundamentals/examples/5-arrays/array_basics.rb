### array instantiation and population
###create an array long way
arr1 = Array.new 3
arr1[0]="SF"
arr1[1]="LA"
arr1[2]="NY"

arr2 = ["SF", "LA", "NY"]

arr3 = Array.new(3,[1,2,3]) ### will put array times 3 into an array

### code starts here
### displays arr1 content from top to bottom
puts
puts arr1

### displays actual arr1 structure
puts
puts "From puts1: #{arr1}"

### displays arr1 index 1
puts
puts "From puts2: #{arr1[1]}"

### displays arr1.inspect
puts
puts "From inspect: #{arr1.inspect}"

### print out arr3
puts
puts "From puts: #{arr3}" ### print out arr3

#Array instantiation and population in one statement

### dispay index 0
puts
puts arr2[0]

### dispay index 1
puts
puts arr2[1]

### dispay index 2
puts
puts arr2[2]

### dispay how many indexes in the array
puts
puts arr2.length

#non existing index will return nil and not crash the code
puts arr2[3]


