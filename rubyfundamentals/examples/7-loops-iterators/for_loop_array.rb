# different syntax - for loops 

puts "\n" + "**** multi line using 'do' **** readable "

for city in ['Paris','London','Jerusalem'] do
	puts city 
end

puts "\n" + "**** multi line using 'do' is optional **** lazy"

for city in ['Paris','London','Jerusalem'] #do 
	puts city 
end

puts "\n" + "**** single line 'do' is mandatory **** useless"

for city in ['Paris','London','Jerusalem'] do puts city end