# case...when...else

def showDay(day_number)
	case(day_number)
		when 1, '1', 'Monday', 'Mon', 'monday', 'mon' then puts "It's Monday"
		# when 1, '1', 'Monday', 'Mon', 'monday', 'mon' then puts "It's Monday"   ###when 1, Monday or Mon puts it's monday
		when '2' then puts "It's Tuesday"
		when '3' then puts "It's Wednesday"
		when '4' then puts "It's Thursday"
		when '5' then puts "It's Friday"
		              puts "It's almost the weekend"
		when '6','7'
                 puts "It's the weekend!!! " 
		else puts "Number #{day_number} is not a valid day!"
	end
end

print("\n" + 'what day is it? ')
ask_day = gets.chomp
showDay(ask_day)


puts
for whichDay in 1..8 do
	showDay(whichDay)
end



# "hello James!".downcase    #=> "hello james!"
# "hello James!".upcase      #=> "HELLO JAMES!"
# "hello James!".capitalize  #=> "Hello james!"