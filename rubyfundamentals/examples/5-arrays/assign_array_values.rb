
arr = [] 

arr[0] = [100]
arr[1] = ["one, two, three"] ### index is nil
arr[3] = ["a", "b", "c"]

puts
p(arr) 

arr2 = ['r','u','v','e','n',' ','h','a','n','n','a','h']

arr2[0] = 'R'
arr2[1,3] = 'U', 'V', 'E'
arr2[5..6] = '-','H'
arr2[-4,4] = 'x','x','x','x'

puts
p(arr2)


arr3 = ['r','u','v','e','n',' ','h','a','n','n','a','h']
arr3[0...10] = 0,1,2,3,4,5,6,7,8,9 ### stop at 9 just before 10

puts
p(arr3)