# All code in this file is part of the object named main
# Embedding in strings: variables, method calls and mathematical expressions 

def display_string
  puts "Welcome to Ruby Fundamentals" 
end

def display_name(nm)
  puts "Welcome #{nm}"                #embed variable
end

def return_names(first, last)
  return "Hello #{first} and #{last}"   #embed two variables
end

def return_string
  return "Welcome to Ruby Fundamentals"
end

def return_string1
  "Welcome to Ruby Fundamentals"
end

### "output starts here"
puts
puts "< - = output starts here = - >"
puts
### "output starts here"

def return_test
  return "
Hello,
Here are your Jenkins credentials.  You should be able to login, as long as your ip address is on our white list.
username: fdas
password: fdsa

http://jenkins.btstaging.com/

Thank you for your time and have a great day.

"
end

puts
puts return_test
puts

puts
puts "Welcome to Ruby Fundamentals"
puts
print "Welcome to Ruby Fundamentals \n"
puts
display_string
puts
display_name("Ruven")
puts
puts return_names("Josh", "Caroline")
puts
puts "Hello and #{return_string}"      #embed method call
puts
puts "\n\t\t #{(5+22) * 4}"      #embed mathematical expression
puts
puts return_string1

