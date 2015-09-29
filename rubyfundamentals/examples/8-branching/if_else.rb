def is_Today_Sun?( d )
  if d == 'sun'
  then
    return true   ###if sunday true
  else
    return false  ###if another day false
  end
end

### print gets
print "\nEnter day (format: tue ... sun...) "
day = gets.chomp

### puts depending on sun or another day
if is_Today_Sun?(day)
  puts "#{day}...I'll go for a walk on the beach"    ###if sunday true
else
  puts "#{day}....I'll write a Ruby application"     ###if another day false
end 



