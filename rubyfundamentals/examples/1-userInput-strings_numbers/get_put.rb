# When calling methods parenthesis are optional...

###regular
# With parenthesis
print('Please, enter your first name: ' )      ### question
first_name = gets().chomp()                    ### container
puts( "Hello #{first_name}" )                  ### output

###regular
# Without parenthesis
print 'Please, enter your 1st name: '
first_name = gets.chomp

print 'Please, enter your 2nd name: '
second_name = gets.chomp

puts "Hello #{first_name}" + " " + "#{second_name}"
puts "Hello #{first_name} #{second_name}"

# Without parenthesis and the space between method name and quotes is optional
print 'Please, enter your last name: '
puts "Hello #{gets.chomp.upcase}"

#another way - String concatenation
print('Please, enter your first and last name: ' )
puts "Hello #{gets.chomp.upcase}" + ", Welcome!"





