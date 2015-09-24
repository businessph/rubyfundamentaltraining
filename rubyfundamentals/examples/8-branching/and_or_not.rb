### main local variables not work inside a method, but globals variables do

###global variable ###imo this global is useless, global can be used in any method or main
$work_overtime = false

### method ### == is a comparing function is d equal to saturday? ### b=1 means to set b equal to 1 ###? is not needed but reminds the user that a true false will be returned
def is_today_the_weekend?(d)
 if d == 'sat' || (d == 'sun' && !$work_overtime) ### if d is saturday or sunday and not overtime return false, if any other day return false
    return true  ### true equals sat and sun
  else
    return false ### false equals mon to friday
  end
end

### MAIN print and return variable and parameter
print "Enter day (format: wed ... sat...): "
day = gets.chomp

if is_today_the_weekend?(day) == true             ### if this def is true put beach else put ruby
  puts "#{day}...I'll go for a walk on the beach"
else
  puts "#{day}....I'll write a Ruby application"
end

###def is_today_the_weekend?(d)
###  if d == 'sat' or (d == 'sun' and not $work_overtime) ### you can use parenthesis or not use then
###  if d == 'sat' || (d == 'sun' && !$work_overtime) ### if d is saturday or sunday and not overtime
###    return true
###  else
###    return false
###  end
###end

### if sat or sun put true
### if mon to fri put false
### ask user what day it is and assign true or false
### if true put beach
### if false put ruby