

def is_Today_Sun?( d )
  unless d == 'sun' then return false else return true end
end

print "Enter day (format: tue ... sun...) "
day=gets.chomp


unless is_Today_Sun?(day)
   puts "#{day}....I'll write a Ruby application"
else
   puts "#{day}...I'll go for a walk on the beach"
end
