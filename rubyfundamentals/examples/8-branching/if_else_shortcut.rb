# if else shortcut 


def is_Today_the_weekend?( d )
  d == 'sat' or d == 'sun' ? 
  true : 
  false
end

print "Enter day (format: tue ... sat...) "
day=gets.chomp


if is_Today_the_weekend?(day)
  puts "#{day}...I'll go for a walk on the beach"
else
  puts "#{day}....I'll write a Ruby application"
end 

print "Enter name: "
name = gets.chomp
name == "ruven" ? puts("Not you again!") : puts("Who are you?") 

