input = ''
puts "How much would you like to earn per day? " 
while input != 'quit' do
  print "\nEnter a number between 1 and 1000 (or 'quit'): "
  input = gets.chomp
  if input == 'quit' 
    puts "Have a good day!" 
  elsif input.to_i > 900 and  input.to_i <= 1000
    puts "That's a high rate of pay!" 
  elsif input.to_i <= 900 and input.to_i > 0
    puts "Good! our company can afford that"  
  else
    puts "try again"
  end
end