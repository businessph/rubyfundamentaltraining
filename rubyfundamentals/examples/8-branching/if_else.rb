def is_Today_Sun?( d )
  if d == 'sun' then return true else return false end
end

print "Enter day (format: tue ... sun...) "
day=gets.chomp


if is_Today_Sun?(day)
  puts "#{day}...I'll go for a walk on the beach"
else
  puts "#{day}....I'll write a Ruby application"
end 



