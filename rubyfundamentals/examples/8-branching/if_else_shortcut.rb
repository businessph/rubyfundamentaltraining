### if else shortcut
###not readable

def is_Today_the_weekend?( d )
  d == 'sat' or d == 'sun' ? 
  true : 
  false
end

### print gets
print "Enter day (format: tue ... sat...) "
day = gets.chomp

### puts depending on sat sun or another day
if is_Today_the_weekend?(day)
  puts "#{day}...I'll go for a walk on the beach"
else
  puts "#{day}....I'll write a Ruby application"
end 


print "Enter name: "
name = gets.chomp
name == "ruven" ? puts("Not you again!") : puts("Who are you?")

###another way to write the above line
# if name == "ruven"
#     puts ("Not you again!")
# else
#   puts ("Who are you?")
# end