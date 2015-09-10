
# Remember: local variables in main do not work inside a function definition, but globals do

$work_overtime=false

def is_Today_the_weekend?( d )
 # if d == 'sat' or (d == 'sun' and not $work_overtime)
 if d == 'sat' || (d == 'sun' && !$work_overtime)
    return true
  else
    return false
  end
end


print "Enter day (format: wed ... sat...) "
day=gets.chomp


if is_Today_the_weekend?(day)==true
  puts "#{day}...I'll go for a walk on the beach"
else
  puts "#{day}....I'll write a Ruby application"
end 


