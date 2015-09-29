

def is_Today_Sun?( d )

  unless d == 'sun' ### unless d is compare equal to sun

  then ### then

    return false ### return false if not sun
  else
    return true ### return true if sun
  end

end

print "Enter day (format: tue ... sun...) "
day = gets.downcase.chomp


unless is_Today_Sun?(day)
   puts "#{day}....I'll write a Ruby application" ### false
else
   puts "#{day}...I'll go for a walk on the beach" ### true
end


### this is super confusing.  do not use