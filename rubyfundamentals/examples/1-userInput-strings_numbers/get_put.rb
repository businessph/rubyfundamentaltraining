# When calling methods parenthesis are optional...

# With parenthesis

print('Please, enter your first name: ' )
first_name = gets().chomp()   
puts( "Hello #{first_name}" )

# Without parenthesis and the space between method name and quotes is optional

print 'Please, enter your last name: ' 
#last_name = gets.chomp  - variable not necessary
puts "Hello #{gets.chomp.upcase}"    

#another way - String concatenation
print('Please, enter your first and last name: ' )
puts "Hello #{gets.chomp.upcase}" + ", Welcome!"
   