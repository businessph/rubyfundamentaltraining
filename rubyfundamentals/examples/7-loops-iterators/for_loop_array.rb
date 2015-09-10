# different syntax - for loops 

puts "**** multi line using 'do' ****" 

for city in ['Paris','London','Jerusalem']  do 
	puts city 
end

puts "**** multi line using 'do' is optional ****" 

for city in ['Paris','London','Jerusalem'] #do 
	puts city 
end


puts "**** single line 'do' is mandatory ****" 

for city in ['Paris','London','Jerusalem'] do puts city  end  