# case...when...else

def showDay( day_number )
	case( day_number ) 
		when 1,'Monday','Mon' then puts "It's Monday" 
		when 2 then puts "It's Tuesday" 
		when 3 then puts "It's Wednesday" 
		when 4 then puts "It's Thursday" 
		when 5 then puts "It's Friday" 
		             puts "It's almost the weekend" 
		when 6,7 
                 puts "It's the weekend!!! " 
		else puts "Number #{day_number} is not a valid day!" 
	end
end


for whichDay in 1..8 do
	showDay( whichDay )
end