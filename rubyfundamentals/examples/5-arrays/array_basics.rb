# array instantiation and population

arr1 = Array.new 3
arr1[0]="SF"
arr1[1]="LA"
arr1[2]="NY"

arr3 = Array.new(3,[1,2,3])

puts "From puts: #{arr3}"

puts arr1

puts "From puts: #{arr1}" 

puts "From inspect: #{arr1.inspect}" 
 
    
#Array instantiation and population in one statement

arr2 = ["SF", "LA", "NY"]
   
puts arr2[2]

#non existing index will return nil and not crash the code 
 
puts arr2[3] 

puts arr2[3]

puts arr2.length
